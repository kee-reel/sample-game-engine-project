period = 0
self.transform:set_scale(vec3:new(0.1, 0.1, 0.1))
function update()
    self.transform:set_pos(vec3:new(0, 3*math.sin(period/5), 1.5*math.cos(period/5)));
    period = period + 0.005
end
