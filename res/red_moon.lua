period = 0
self.transform:set_scale(vec3:new(0.5, 0.5, 0.5))
function update()
    self.transform:set_pos(vec3:new(10*math.sin(period), 0, 10*math.cos(period)));
    period = period + 0.005
end
