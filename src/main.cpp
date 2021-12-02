#include <iostream>
#include <cstdlib>

#include <chrono>
#include <thread>

#include <vector>

#include <memory>

#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <glm/glm.hpp>

#include "util.h"
#include "model.h"

void framebuffer_size_callback(GLFWwindow* window, int width, int height)
{
    glViewport(0, 0, width, height);
}

void error_callback(int error, const char* description)
{
    fprintf(stderr, "Error: %s\n", description);
}


int main( void )
{
	GLFWwindow* window;
	if( !glfwInit() )
	{
		error_msg("Failed to initialize GLFW.");
		return -1;
	}

	glfwWindowHint(GLFW_SAMPLES, 4);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

	glfwSetErrorCallback(error_callback);

	window = glfwCreateWindow( 500, 500, "SampleOGL", NULL, NULL);
	if( window == NULL ){
		error_msg("Failed to init GLFW window.");
		return -1;
	}
	glfwMakeContextCurrent(window);
	glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);

	glewExperimental = true;
	if (glewInit() != GLEW_OK) {
		error_msg("Failed to init GLEW.");
		glfwTerminate();
		return -1;
	}

	glfwSetInputMode(window, GLFW_STICKY_KEYS, GL_TRUE);
	glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
	glEnable(GL_DEPTH_TEST);

	std::shared_ptr<Texture> texture(new Texture({"res/water.jpeg", "res/stars.jpeg"}));
	std::shared_ptr<Shader> shader(new Shader({"shaders/Sample.vert", "shaders/Sample.frag"}));
	Model poly(4, shader, texture);

	std::chrono::duration<double, std::milli> frame_span(1000. / 60.);
	do
	{
		std::chrono::high_resolution_clock::time_point start = std::chrono::high_resolution_clock::now();

		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

		if(glfwGetKey(window, GLFW_KEY_R ) == GLFW_PRESS)
		{
			shader->reload();
		}
		poly.draw();

		glfwSwapBuffers(window);
		glfwPollEvents();

		std::chrono::duration<double, std::milli> time_span = std::chrono::high_resolution_clock::now() - start;
		if(frame_span > time_span)
			std::this_thread::sleep_for(frame_span - time_span);
	}
	while( glfwGetKey(window, GLFW_KEY_ESCAPE ) != GLFW_PRESS && glfwWindowShouldClose(window) == 0 );

	glfwTerminate();
	return 0;
}

