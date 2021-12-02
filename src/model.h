#include "shader.h"
#include "texture.h"
#include "transform.h"

class Model {
	struct Vertex {
		glm::vec3 pos;
		glm::vec3 norm;
		glm::vec2 tex;
	};
	struct Index {
		GLuint indices[3];
	};
public:
	Model(int n, const std::shared_ptr<Shader> &shader, const std::shared_ptr<Texture> &texture);
	~Model();
	void draw(const glm::mat4 &view);
	inline Transform &get_transform()
	{
		return m_transform;
	}
	void reload();

private:
	Transform m_transform;
	int COORDS_COUNT = 3;
	std::vector<Vertex> m_vertices;
	std::vector<Index> m_indices;
	GLuint m_VAO;
	GLuint m_EBO;
	GLuint m_VBO;
	std::shared_ptr<Shader> m_shader;
	std::shared_ptr<Texture> m_texture;
};

