#include <iostream>
#include <cstdlib>
#include <cmath>

#include <vector>
#include <map>

#include <fstream>
#include <string>
#include <sstream>
#include <memory>

#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <glm/glm.hpp>

#include "shader.h"
#include "util.h"

namespace {
	std::string read_file(const std::string &path)
	{
		std::ifstream input;
		input.exceptions(std::ifstream::failbit | std::ifstream::badbit);
		std::stringstream sstr;
		try
		{
			input.open(path);
			sstr << input.rdbuf();
			input.close();
		}
		catch(std::ifstream::failure e)
		{
			std::cerr << "ERROR: can't read file \"" << path << "\":" << e.what() << std::endl;
			return "";
		}
		return sstr.str();
	}
};

Shader::Shader(const std::vector<std::string> &paths) :
	m_paths(paths),
	m_program(0),
	m_ok(false)
{
	load();
}

Shader::~Shader()
{
	glDeleteProgram(m_program);
}

void Shader::use()
{
	if(m_ok)
	{
		float time_value = glfwGetTime();
		int time_location = glGetUniformLocation(m_program, "time");
		glUseProgram(m_program);
		glUniform1f(time_location, time_value);
	}
}

void Shader::reload()
{
	reset();
	load();
}

void Shader::reset()
{
	if(m_ok)
	{
		glDeleteProgram(m_program);
		m_program = 0;
	}
	m_ok = false;
}

void Shader::load()
{
	static std::map<const std::string, GLenum> EXT_TO_TYPE = {
		{".vert", GL_VERTEX_SHADER},
		{".frag", GL_FRAGMENT_SHADER},
	};
	GLuint program = glCreateProgram();
	std::vector<GLuint> shaders;
	for(const auto &path : m_paths)
	{
		GLenum shader_type = 0;
		for(auto iter = EXT_TO_TYPE.begin(); iter != EXT_TO_TYPE.end(); iter++)
		{
			if(path.find(iter->first) != -1)
			{
				shader_type = iter->second;	
				break;
			}
		}
		if(!shader_type)
		{
			error_msg("shader file has unknown extention", nullptr, path.c_str());
			break;
		}
		GLuint shader = glCreateShader(shader_type);
		std::string shader_src = read_file(path);
		if (shader_src.empty()) {
			error_msg("can't open shader file", nullptr, path.c_str());
			break;
		}

		char* raw_src = const_cast<char*>(shader_src.c_str());
		glShaderSource(shader, 1, &raw_src, NULL);
		glCompileShader(shader);
		if(!check_status(shader, GL_COMPILE_STATUS, "can't compile shader", path.c_str()))
			break;

		shaders.push_back(shader);
		glAttachShader(program, shader);
	}

	if(m_paths.size() != shaders.size())
	{
		delete_shaders(shaders);
		glDeleteProgram(program);
		return;
	}
	
	glLinkProgram(program);
	delete_shaders(shaders);
	if(!check_status(program, GL_LINK_STATUS, "can't link shader program"))
	{
		glDeleteProgram(program);
		return;
	}

	m_program = program;
	m_ok = true;
}

void Shader::delete_shaders(std::vector<GLuint> &shaders)
{
	for(const auto &shader : shaders)
		glDeleteShader(shader);
}

bool Shader::check_status(GLuint object, GLuint status, const char *msg, const char *path)
{
	int success;
	char info_log[512];
	glGetShaderiv(object, status, &success);
	if(!success)
	{
		glGetShaderInfoLog(object, 512, NULL, info_log);
		error_msg(msg, static_cast<char*>(info_log), path);
	}
	return success;
}

