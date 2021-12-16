#include "includes.h"
#include "model.h"
#include "camera.h"

#include "sogl.h"

namespace SOGL
{

typedef std::vector<std::string> string_vector;

class Application : public IApplication
{
public:
	Application();
	virtual ~Application();
	bool init(int width, int height) override;
	void fini() override;
	bool draw() override;
	std::shared_ptr<IModel> add_model(const std::vector<std::string> &shaders, 
			const std::vector<std::string> &textures) override;

private:
	static std::shared_ptr<Application> &instance();
	static void framebuffer_size_callback(GLFWwindow* window, int width, int height);
	static void error_callback(int error, const char* description);
	static void mouse_callback(GLFWwindow* window, double xpos, double ypos);

	int is_key_pressed(int key);
	void handle_controls();
	void toggle_cursor(bool enabled);
	void toggle_fullscreen(bool enabled);

private:
	GLFWwindow* m_window;
	int m_width;
	int m_height;
	bool m_cursor_shown;
	bool m_is_quitting;

	std::chrono::high_resolution_clock::time_point m_prev_time;
	std::chrono::duration<float, std::milli> m_frame_duration, m_dt;

	std::shared_ptr<Camera> m_camera;
	std::vector<std::shared_ptr<Model>> m_models;
	std::vector<std::pair<string_vector, std::shared_ptr<Shader>>> m_shaders;
	std::vector<std::pair<string_vector, std::shared_ptr<Texture>>> m_textures;
};

};
