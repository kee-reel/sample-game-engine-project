#include "sge.h"
#include <iostream>
#include <cmath>

int main( void )
{
	std::shared_ptr<sge::IApplication> app = sge::instance();

	if(!app->init(500, 500, "SGE"))
		return 0;

    auto sun = app->add_game_object("res/star.mat", "res/sun.mat");

	std::vector<std::shared_ptr<sge::IGameObject>> stars;
	for(int i = 0; i < 1000; i++)
	{
		auto star = app->add_game_object("res/star.mat", "");
		star->get_transform().set_pos(
				(rand() % 1000) - (rand() % 1000),
				(rand() % 1000) - (rand() % 1000),
				(rand() % 1000) - (rand() % 1000));
        star->get_transform().set_scale(0.5, 0.5, 0.5);
		stars.push_back(star);
	}
	auto earth = app->add_game_object("res/earth.mat", "");
	earth->get_transform().set_pos(0., 0., 0.);

    app->get_camera_transform().set_pos(0, 0, 10);

	float y_rot = 0.f, rot_step = -0.001f;
    float period = 0;
	while(app->draw())
	{
		earth->get_transform().set_rot(0., y_rot, 0.);
		y_rot = y_rot < -360.f ? 0.f : y_rot + rot_step;
        sun->get_transform().set_pos(100*std::sin(period), 0, 100*std::cos(period));
        period += 0.01f;
	}

	return 0;
}

