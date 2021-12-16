#include "sogl.h"

int main( void )
{
	std::shared_ptr<SOGL::IApplication> app = SOGL::instance();

	if(!app->init(500, 500))
		return 0;

	std::vector<std::shared_ptr<SOGL::IModel>> stars;
	for(int i = 0; i < 1000; i++)
	{
		auto star = app->add_model(
			{"res/shaders/LightSource.vert", "res/shaders/LightSource.frag"}, 
			{"res/stars.jpeg"});
		star->get_transform()->set_pos(
				(rand() % 1000) - (rand() % 1000),
				(rand() % 1000) - (rand() % 1000),
				(rand() % 1000) - (rand() % 1000));
		stars.push_back(star);
	}
	auto earth = app->add_model(
			{"res/shaders/Sample.vert", "res/shaders/Sample.frag"}, 
			{"res/earth.jpeg"});
	earth->get_transform()->set_pos(0., 0., -3.);

	float y_rot = 0.f, rot_step = -0.001f;
	while(app->draw())
	{
		earth->get_transform()->set_rot(0., y_rot, 0.);
		y_rot = y_rot < -360.f ? 0.f : y_rot + rot_step;
	}

	return 0;
}

