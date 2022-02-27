#include "sge.h"
#include <iostream>
#include <cmath>

int main( void )
{
	std::shared_ptr<sge::IApplication> app = sge::instance();

	if(!app->init(500, 500, "SGE"))
		return 0;

    auto sun_directional = app->add_game_object("res/star.mat", "res/sun_directional.mat");
    sun_directional->get_transform().set_scale(0.1, 0.1, 0.1);

    auto sun_point = app->add_game_object("res/red_moon.mat", "res/sun_point.mat");
    sun_point->get_transform().set_scale(0.05, 0.05, 0.05);

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
        sun_directional->get_transform().set_pos(10*std::sin(period), 0, 10*std::cos(period));
        sun_point->get_transform().set_pos(0, 3*std::sin(period/5), 1.5f*std::cos(period/5));
        period += 0.005f;
	}

	return 0;
}

