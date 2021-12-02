#include "application.h"

#include "includes.h"
#include "util.h"

Application::Application() :
	m_frame_duration(1000./ 60)
{
}

bool Application::init()
{
	if( !glfwInit() )
	{
		error_msg("Failed to initialize GLFW.");
		return false;
	}

	glfwWindowHint(GLFW_SAMPLES, 4);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

	glfwSetErrorCallback(error_callback);

	m_window = glfwCreateWindow( 500, 500, "SampleOGL", NULL, NULL);
	if( m_window == NULL ){
		error_msg("Failed to init GLFW window.");
		return false;
	}
	glfwMakeContextCurrent(m_window);
	glfwSetFramebufferSizeCallback(m_window, framebuffer_size_callback);
	glfwSetCursorPosCallback(m_window, mouse_callback);

	glewExperimental = true;
	if (glewInit() != GLEW_OK) {
		error_msg("Failed to init GLEW.");
		glfwTerminate();
		return false;
	}

	glfwSetInputMode(m_window, GLFW_STICKY_KEYS, GL_TRUE);
	glfwSetInputMode(m_window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);
	glClearColor(0.4f, 0.4f, 0.4f, 1.0f);
	glEnable(GL_DEPTH_TEST);
	return true;
}

void Application::fini()
{
	glfwTerminate();
}

bool Application::load_scene()
{
	m_camera.reset(new Camera());
	std::shared_ptr<Texture> texture(new Texture({"res/water.jpeg", "res/stars.jpeg"}));
	std::shared_ptr<Shader> shader(new Shader({"shaders/Sample.vert", "shaders/Sample.frag"}));
	m_model.reset(new Model(4, shader, texture));
	return true;
}

bool Application::draw()
{
	auto start = std::chrono::high_resolution_clock::now();

	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	if(glfwGetKey(m_window, GLFW_KEY_R ) == GLFW_PRESS)
	{
		m_model->reload();
	}
	int x = is_key_pressed(GLFW_KEY_D) - is_key_pressed(GLFW_KEY_A);
	int y = is_key_pressed(GLFW_KEY_SPACE) - is_key_pressed(GLFW_KEY_LEFT_CONTROL);
	int z = is_key_pressed(GLFW_KEY_W) - is_key_pressed(GLFW_KEY_S);
	m_camera->move(glm::vec3(x, y, z) * m_dt.count());
	m_model->draw(m_camera->get_view());

	glfwSwapBuffers(m_window);
	glfwPollEvents();

	auto time_passed = std::chrono::high_resolution_clock::now() - start;
	if(m_frame_duration > time_passed)
		std::this_thread::sleep_for(m_frame_duration - time_passed);

	m_dt = (start - m_prev_time) / 1000.f;
	m_prev_time = start;
	return glfwGetKey(m_window, GLFW_KEY_ESCAPE ) != GLFW_PRESS && glfwWindowShouldClose(m_window) == 0;
}

void Application::framebuffer_size_callback(GLFWwindow* window, int width, int height)
{
	glViewport(0, 0, width, height);
}

void Application::error_callback(int error, const char* description)
{
	fprintf(stderr, "Error: %s\n", description);
}

void Application::mouse_callback(GLFWwindow* window, double xpos, double ypos)
{
	instance().m_camera->mouse(xpos, ypos);
}

int Application::is_key_pressed(int key)
{
	return glfwGetKey(m_window, key) == GLFW_PRESS;
}

