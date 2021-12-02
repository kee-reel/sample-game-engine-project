#include "includes.h"

#include "model.h"

Model::Model(int n, const std::shared_ptr<Shader> &shader, const std::shared_ptr<Texture> &texture) :
	m_vertices(n+1),
	m_indices(n * COORDS_COUNT),
	m_shader(shader),
	m_texture(texture)
{
	assert(n > 2);
	assert(shader.get());
	float pi = 3.14159265;
	float rad = 0;
	float whole_circle = 360. * pi / 180.;
	float rad_iter = whole_circle / n;
	m_vertices[0] = {
		{0., 0., 0.},
		{0., 0., 0.},
		{0.5, 0.5}
	};
	float shift = -1.;
	for(int i = 0; i < n; rad += rad_iter, i++)
	{
		float temp = i % 2 ? 1. : 0.;
		m_vertices[i+1] = {
			{cos(rad), sin(rad), shift},
			{temp, temp, temp},
			{i==1||i==2, i<2}
		};
		m_indices[i*COORDS_COUNT] = 0;
		m_indices[i*COORDS_COUNT+1] = i == n-1 ? 1 : i+2;
		m_indices[i*COORDS_COUNT+2] = i+1;
	}
	
	glGenVertexArrays(1, &m_VAO);
	glBindVertexArray(m_VAO);
	
	glGenBuffers(1, &m_VBO);
	glBindBuffer(GL_ARRAY_BUFFER, m_VBO);
	glBufferData(GL_ARRAY_BUFFER, m_vertices.size() * sizeof(Vertex), m_vertices.data(), GL_STATIC_DRAW);

	glGenBuffers(1, &m_EBO);
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, m_EBO);
	glBufferData(GL_ELEMENT_ARRAY_BUFFER, m_indices.size() * sizeof(GLuint), m_indices.data(), GL_STATIC_DRAW);

	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(Vertex), (void*)0);
	glEnableVertexAttribArray(0);

	glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, sizeof(Vertex), (void*)sizeof(glm::vec3));
	glEnableVertexAttribArray(1);

	glVertexAttribPointer(2, 2, GL_FLOAT, GL_FALSE, sizeof(Vertex), (void*)(2*sizeof(glm::vec3)));
	glEnableVertexAttribArray(2);

	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
	glBindBuffer(GL_ARRAY_BUFFER, 0);
	glBindVertexArray(0);
}

Model::~Model()
{
	glDeleteVertexArrays(1, &m_VAO);
	glDeleteBuffers(1, &m_EBO);
	glDeleteBuffers(1, &m_VBO);
}

void Model::draw()
{
	glBindVertexArray(m_VAO);
	glBindBuffer(GL_ARRAY_BUFFER, m_VBO);
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, m_EBO);

	m_shader->use();
	m_texture->use(m_shader);
	m_transform.set_rot(glm::vec3(0., (float)glfwGetTime()/10, 0.));
	m_transform.use(m_shader);
	glBindVertexArray(m_VAO);
	glDrawElements(GL_TRIANGLES, m_indices.size() * sizeof(GLuint), GL_UNSIGNED_INT, 0);

	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
	glBindBuffer(GL_ARRAY_BUFFER, 0);
	glBindVertexArray(0);
}
