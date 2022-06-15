get_camera_transform():set_pos(vec3:new(-5, 0, 0))

earth = add_game_object("res/earth.mat", "")

star_d = add_game_object("res/star.mat", "res/sun_directional.mat")
star_d:get_transform():set_scale(vec3:new(0.5, 0.5, 0.5))

star_p = add_game_object("res/red_moon.mat", "res/sun_point.mat")
star_p:get_transform():set_scale(vec3:new(0.1, 0.1, 0.1))

for i = 0, 1000, 1
do
    star = add_game_object("res/star.mat", "")
    star:get_transform():set_pos(vec3:new(
        math.random(1000) - math.random(1000), 
        math.random(1000) - math.random(1000), 
        math.random(1000) - math.random(1000)))
    star:get_transform():set_scale(vec3:new(0.5, 0.5, 0.5))
end

y_rot = 0.
rot_step = -0.001
period = 0
while draw()
do
		earth:get_transform():set_rot(vec3:new(0., y_rot, 0.));
		if y_rot < -360. then
            y_rot = 0.
        else
            y_rot = y_rot + rot_step
        end
        star_d:get_transform():set_pos(vec3:new(10*math.sin(period), 0, 10*math.cos(period)));
        star_p:get_transform():set_pos(vec3:new(0, 3*math.sin(period/5), 1.5*math.cos(period/5)));
        period = period + 0.005
end
