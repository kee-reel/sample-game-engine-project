#include "includes.h"

class Camera
{
public:
	Camera();
	const glm::mat4 &get_view();
	void move(glm::vec3 move);
	void mouse(double pos_x, double pos_y);

private:
	void recalc();

private:
	glm::mat4 m_view;
	glm::vec3 m_pos;
	glm::vec3 m_front;
	glm::vec3 m_up;
	bool m_mouse_inited;
	double m_last_x, m_last_y;
	float m_yaw, m_pitch;
};
