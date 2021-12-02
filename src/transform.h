#include "shader.h"

class Transform
{
public:
	Transform();
	~Transform();
	void set_pos(glm::vec3 pos);
	void set_rot(glm::vec3 rot);
	void set_scale(glm::vec3 scale);
	void use(std::shared_ptr<Shader> shader, const glm::mat4 &view);

private:
	void recalc();

private:
	glm::mat4 m_model;
	glm::mat4 m_view;
	glm::mat4 m_projection;

	glm::vec3 m_pos;
	glm::vec3 m_rot;
	glm::vec3 m_scale;
};
