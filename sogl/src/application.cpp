#include "application.h"

#include "includes.h"
#include "util.h"

namespace SOGL
{

std::shared_ptr<Application> s_app = std::shared_ptr<Application>(new Application());

std::shared_ptr<IApplication> instance()
{
	return s_app;
}

std::shared_ptr<Application> &Application::instance()
{
	return s_app;
}

Application::Application() :
	m_frame_duration(1000./ 60),
	m_is_quitting(false)
{
}

Application::~Application()
{

}

bool Application::init(int width, int height)
{
	m_width = width;
	m_height = height;
	if( !glfwInit() )
	{
		error_msg("Failed to initialize GLFW.");
		return false;
	}

	glfwWindowHint(GLFW_SAMPLES, 4);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 6);
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

	glfwSetErrorCallback(error_callback);

	m_window = glfwCreateWindow(m_width, m_height, "SampleOGL", NULL, NULL);
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

	toggle_fullscreen(false);
	glfwSetInputMode(m_window, GLFW_STICKY_KEYS, GL_TRUE);
	glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
	glEnable(GL_DEPTH_TEST);
	m_camera.reset(new Camera(m_width, m_height));
	return true;
}

void Application::fini()
{
	glfwTerminate();
}

bool Application::draw()
{
	auto start = std::chrono::high_resolution_clock::now();

	handle_controls();

	// Draw calls
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	for(auto material_to_mesh = m_game_objects.begin(); material_to_mesh != m_game_objects.end(); material_to_mesh++)
	{
		material_to_mesh->first->use(m_camera);
		for(auto mesh_to_go = material_to_mesh->second.begin(); mesh_to_go != material_to_mesh->second.end(); mesh_to_go++)
		{
			for(auto &go : mesh_to_go->second)
			{
				material_to_mesh->first->use_model(go->transform.get_model());
				mesh_to_go->first->draw();
			}
		}
	}
	glfwSwapBuffers(m_window);

	// Sleep to sustain FPS
	auto time_passed = std::chrono::high_resolution_clock::now() - start;
	if(m_frame_duration > time_passed)
		std::this_thread::sleep_for(m_frame_duration - time_passed);
	m_dt = (start - m_prev_time) / 1000.f;
	m_prev_time = start;
	
	return !m_is_quitting;
}

std::shared_ptr<IGameObject> Application::add_game_object(const std::string &material_path)
{
	std::shared_ptr<Material> material = ResourceLoader::instance().get_material(material_path);
	std::shared_ptr<Mesh> mesh = ResourceLoader::instance().get_mesh();
	auto &mesh_to_go = m_game_objects[material];
	auto &&go = std::shared_ptr<GameObject>(new GameObject());
	mesh_to_go[mesh].push_back(go);
	return go;
}

void Application::framebuffer_size_callback(GLFWwindow* window, int width, int height)
{
	glViewport(0, 0, width, height);
	if(Application::instance()->m_camera)
	{
		Application::instance()->m_camera->update_aspect(width, height);
	}
	auto monitor = glfwGetPrimaryMonitor();
	if(!monitor)
	{
		Application::instance()->m_width = width;
		Application::instance()->m_height = height;
	}
}

void Application::error_callback(int error, const char* description)
{
	error_msg(description);
}

void Application::mouse_callback(GLFWwindow* window, double xpos, double ypos)
{
	if(Application::instance()->m_camera)
	{
		Application::instance()->m_camera->mouse(xpos, ypos);
	}
}

int Application::is_key_pressed(int key)
{
	return glfwGetKey(m_window, key) == GLFW_PRESS;
}

void Application::handle_controls()
{
	glfwPollEvents();

	bool is_fullscreen = glfwGetWindowMonitor(m_window) != nullptr;
	m_is_quitting = (!is_fullscreen && is_key_pressed(GLFW_KEY_ESCAPE)) || glfwWindowShouldClose(m_window); 

	if(m_is_quitting)
		return;

	if(is_key_pressed(GLFW_KEY_R))
	{
//		for(const auto &model : m_models)
//			model->reload();
	}
	else if(is_key_pressed(GLFW_KEY_F))
	{
		toggle_fullscreen(true);
	}
	else if(is_key_pressed(GLFW_KEY_ESCAPE))
	{
		toggle_fullscreen(false);
	}

	int x = is_key_pressed(GLFW_KEY_D) - is_key_pressed(GLFW_KEY_A);
	int y = is_key_pressed(GLFW_KEY_SPACE) - is_key_pressed(GLFW_KEY_LEFT_CONTROL);
	int z = is_key_pressed(GLFW_KEY_W) - is_key_pressed(GLFW_KEY_S);
	m_camera->move(glm::vec3(x, y, z) * m_dt.count());
}

void Application::toggle_fullscreen(bool enabled)
{
	toggle_cursor(!enabled);
	auto monitor = glfwGetPrimaryMonitor();
	auto mode = glfwGetVideoMode(monitor);
	glfwSetWindowMonitor(m_window, enabled ? monitor : nullptr, 0, 0, 
			enabled ? mode->width : m_width,
			enabled ? mode->height : m_height, GLFW_DONT_CARE);
}

void Application::toggle_cursor(bool enabled)
{
	m_cursor_shown = enabled;
	glfwSetInputMode(m_window, GLFW_CURSOR, 
			m_cursor_shown ? GLFW_CURSOR_NORMAL : GLFW_CURSOR_DISABLED );
}

};
