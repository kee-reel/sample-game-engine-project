grow_factor = 0.001
function init()
    if math.random() > 0.5 then
        grow_factor = -grow_factor
    end
end
function update()
    scale = self.transform:get_scale().x
    if scale <= 0.01 or scale >= 0.08 then
        grow_factor = -grow_factor
    end
    scale = scale + grow_factor
    self.transform:set_scale(vec3:new(scale, scale, scale))
end
