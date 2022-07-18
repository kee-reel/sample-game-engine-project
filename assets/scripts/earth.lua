rot_step = -0.001
function init()
    self.transform:set_scale(vec3:new(1, 1, 1))
    self.transform:rotate(vec3:new(90., 0., 0.));
end
function update()
    self.transform:rotate(vec3:new(0., 0., rot_step));
end
