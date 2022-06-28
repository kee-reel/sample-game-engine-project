period = 0
function init()
    self.transform:set_scale(vec3:new(3, 3, 3))
end
function update()
    self.transform:set_pos(vec3:new(25*math.sin(period), 0, 25*math.cos(period)));
    period = period + 0.0001
end
