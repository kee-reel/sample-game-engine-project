
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

#include "util.h"
#include "texture.h"

Texture::Texture(const std::string &path) :
	m_path(path),
	m_ok(false),
	m_texture(0)
{
	load();
}

Texture::~Texture()
{
	reset();
}

void Texture::reload()
{
	reset();
	load();
}

void Texture::use()
{
	glBindTexture(GL_TEXTURE_2D, m_texture);
}

void Texture::reset()
{
	if(m_ok)
	{
		glDeleteTextures(0, &m_texture);
	}
	m_ok = false;
}

void Texture::load()
{
	//std::ifstream input;
	//input.exceptions(std::ifstream::failbit | std::ifstream::badbit);
	//std::stringstream sstr;

	//unsigned int data_pos;
	//unsigned int width;
	//unsigned int height;
	//unsigned int image_size;
	//std::vector<char> data;

	//try
	//{
	//	input.open(m_path);

	//	char header[54];
	//	input.read(header, 54);
	//	if(!input || header[0] != 'B' || header[1] != 'M')
	//	{
	//		error_msg("Given texture isn't BMP format", nullptr, m_path.c_str());
	//		input.close();
	//		return;
	//	}

	//	data_pos = *(int*)&(header[0x0A]);
	//	width = *(int*)&(header[0x12]);
	//	height = *(int*)&(header[0x16]);
	//	image_size = *(int*)&(header[0x22]);
	//	std:: cout << width << " " << height << " " << image_size << std::endl;
	//	if(!image_size)
	//		image_size = width * height * 3;
	//	if(!data_pos)
	//		data_pos = 54;

	//	data.resize(image_size);
	//	input.read(data.data(), image_size);
	//	if(!input)
	//	{
	//		error_msg("BMP texture content is corrupted", nullptr, m_path.c_str());
	//		input.close();
	//		return;
	//	}

	//	input.close();
	//}
	//catch(std::ifstream::failure e)
	//{
	//	error_msg("can't read file", e.what(), m_path.c_str());
	//	return;
	//}

	
	int width, height, nrChannels;
	unsigned char *data = stbi_load(m_path.c_str(), &width, &height, &nrChannels, 0);

	GLuint texture;
	glGenTextures(1, &texture);
	glBindTexture(GL_TEXTURE_2D, texture);

	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);	
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
	
	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, data);
	glGenerateMipmap(GL_TEXTURE_2D);
	//glBindTexture(GL_TEXTURE_2D, 0);
	m_texture = texture;
	stbi_image_free(data);
}











