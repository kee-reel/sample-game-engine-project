#include "shader.h"
#include "texture.h"
#include "transform.h"
#include "camera.h"

#include "sogl.h"

class Model : public SOGL::IModel
{
	struct Vertex {
		glm::vec3 pos;
		glm::vec3 norm;
		glm::vec2 tex;
	};
	struct Index {
		GLuint indices[3];
	};
public:
	virtual ~Model();
	inline SOGL::ITransform *get_transform() override
	{
		return &m_transform;
	}

public:
	Model(const std::shared_ptr<Shader> &shader, const std::shared_ptr<Texture> &texture);
	void draw(const std::shared_ptr<Camera> &camera);
	void reload();

private:
	Transform m_transform;
	std::vector<Vertex> m_vertices;
	std::vector<Index> m_indices;
	GLuint m_VAO;
	GLuint m_EBO;
	GLuint m_VBO;
	std::shared_ptr<Shader> m_shader;
	std::shared_ptr<Texture> m_texture;
};

