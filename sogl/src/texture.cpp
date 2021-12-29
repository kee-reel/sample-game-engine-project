
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

Texture::Texture(const std::string &path) :
	Component(),
	m_path(path),
	m_ok(false)
{
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

void Texture::use(int num, std::string name, std::shared_ptr<Shader> shader)
{
	if(!m_ok)
		return;
	glActiveTexture(GL_TEXTURE0 + num);
	glBindTexture(GL_TEXTURE_2D, m_texture);
	shader->set_uint(name, num);
}

void Texture::reset()
{
	if(!m_ok)
		return;
	glDeleteTextures(1, &m_texture);
	m_ok = false;
}

void Texture::load()
{
	int width, height, nrChannels;

	unsigned char *data = stbi_load(m_path.c_str(), &width, &height, &nrChannels, 0);
	if(data == nullptr)
	{
		error_msg("Can't open image", nullptr, m_path.c_str());
		return;
	}

	GLuint texture;
	glGenTextures(1, &texture);
	glBindTexture(GL_TEXTURE_2D, texture);

	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_MIRRORED_REPEAT);	
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
	
	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, data);
	glGenerateMipmap(GL_TEXTURE_2D);

	stbi_image_free(data);

	glBindTexture(GL_TEXTURE_2D, 0);
	m_texture = texture;
	m_ok = true;
}
