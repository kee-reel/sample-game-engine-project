y_rot = 0.
rot_step = -0.001
function init()
    self.transform:set_scale(vec3:new(0.3, 0.3, 0.3))
end
function update()
    self.transform:set_rot(vec3:new(0., y_rot, 0.));
    if y_rot < -360. then
        y_rot = 0.
    else
        y_rot = y_rot + rot_step
    end
end
