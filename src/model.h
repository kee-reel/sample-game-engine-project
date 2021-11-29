#include "shader.h"

class Model {
	struct Vertex {
		glm::vec3 pos;
		glm::vec3 col;
	};
public:
	Model(int n, const std::shared_ptr<Shader> &shader);
	~Model();
	void draw();

private:
	int COORDS_COUNT = 3;
	std::vector<Vertex> m_vertices;
	std::vector<GLuint> m_indices;
	GLuint m_VAO;
	GLuint m_EBO;
	GLuint m_VBO;
	std::shared_ptr<Shader> m_shader;
};

