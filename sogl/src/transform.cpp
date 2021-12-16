#include "transform.h"

#include "includes.h"
#include <glm/gtc/matrix_transform.hpp>

Transform::Transform() :
	m_pos(glm::vec3(0., 0., 0.)),
	m_rot(glm::vec3(0., 0., 0.)),
	m_scale(glm::vec3(1., 1., 1.))
{
	recalc();
}

Transform::~Transform()
{

}

void Transform::set_pos(glm::vec3 pos)
{
	m_pos = pos;
	recalc();
}

void Transform::set_rot(glm::vec3 rot)
{
	m_rot = rot;
	recalc();
}

void Transform::set_scale(glm::vec3 scale)
{
	m_scale = scale;
	recalc();
}

void Transform::set_pos(float x, float y, float z)
{
	set_pos(glm::vec3(x, y, z));
}

void Transform::set_rot(float x, float y, float z)
{
	set_rot(glm::vec3(x, y, z));
}

void Transform::set_scale(float x, float y, float z)
{
	set_scale(glm::vec3(x, y, z));
}

void Transform::use(std::shared_ptr<Shader> shader, const glm::mat4 &view)
{
	shader->set_mat4("model", m_model);
	shader->set_mat4("view", view);
}

void Transform::recalc()
{
	m_model = glm::mat4(1.);
	m_model = glm::scale(m_model, m_scale);
	m_model = glm::translate(m_model, m_pos);
	m_model = glm::rotate(m_model, m_rot.x, glm::vec3(1., 0., 0.));
	m_model = glm::rotate(m_model, m_rot.y, glm::vec3(0., 1., 0.));
	m_model = glm::rotate(m_model, m_rot.z, glm::vec3(0., 0., 1.));

	m_view = glm::mat4(1.);
	m_view = glm::translate(m_view, glm::vec3(0., 0., -5.));
}
