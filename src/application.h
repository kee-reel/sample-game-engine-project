#include "includes.h"
#include "model.h"
#include "camera.h"

class Application
{
public:
	inline static Application &instance()
	{
		static Application app;
		return app;
	}

	bool init();
	void fini();
	bool load_scene();
	bool draw();

private:
	Application();
	static void framebuffer_size_callback(GLFWwindow* window, int width, int height);
	static void error_callback(int error, const char* description);
	static void mouse_callback(GLFWwindow* window, double xpos, double ypos);

	int is_key_pressed(int key);

private:
	GLFWwindow* m_window;

	std::chrono::high_resolution_clock::time_point m_prev_time;
	std::chrono::duration<float, std::milli> m_frame_duration, m_dt;

	std::shared_ptr<Camera> m_camera;
	std::shared_ptr<Model> m_model;
};
