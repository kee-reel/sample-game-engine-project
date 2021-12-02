
#include <iostream>
#include <cstdlib>

#include <vector>

#include <fstream>
#include <string>
#include <sstream>
#include <memory>

#include <GL/glew.h>
#include <glm/glm.hpp>
#include <stb_image.h>

#include "texture.h"

#include "util.h"

Texture::Texture(const std::vector<std::string> &paths) :
	m_paths(paths),
	m_ok(false),
	m_textures()
{
	// OpenGL can't support more than 16 textures
	assert(paths.size() < 16);
	load();
}

Texture::~Texture()
{
	reset();
}

void Texture::reload()
{
	load();
}

void Texture::use(std::shared_ptr<Shader> shader)
{
	if(!m_ok)
		return;
	static std::vector<std::string> number_to_name = {
		"texture0", "texture1", "texture2"};
	for(int i = 0; i < m_textures.size(); i++)
	{
		glActiveTexture(GL_TEXTURE0 + i);
		glBindTexture(GL_TEXTURE_2D, m_textures[i]);
		shader->set_uint(number_to_name[i], i);
	}
}

void Texture::reset()
{
	if(!m_ok)
		return;
	glDeleteTextures(m_textures.size(), m_textures.data());
	m_ok = false;
}

void Texture::load()
{
	std::vector<GLuint> textures;
	textures.reserve(m_paths.size());
	for(int i = 0; i < m_paths.size(); i++)
	{
		int width, height, nrChannels;
		unsigned char *data = stbi_load(m_paths[i].c_str(), &width, &height, &nrChannels, 0);

		if(data == nullptr)
		{
			error_msg("Can't open image", nullptr, m_paths[i].c_str());
			break;
		}

		GLuint texture;
		glGenTextures(1, &texture);
		glActiveTexture(GL_TEXTURE0 + i);
		glBindTexture(GL_TEXTURE_2D, texture);

		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_MIRRORED_REPEAT);	
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_MIRRORED_REPEAT);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
		
		glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, data);
		glGenerateMipmap(GL_TEXTURE_2D);

		stbi_image_free(data);

		glBindTexture(GL_TEXTURE_2D, 0);
		textures.push_back(texture);
	}

	if(textures.size() != m_paths.size())
	{
		glDeleteTextures(textures.size(), textures.data());
		return;
	}
	m_textures = textures;
	m_ok = true;
}











