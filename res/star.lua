grow_factor = 0.01
function update()
    scale = self.transform:get_scale().x
    if scale <= 0.1 or scale >= 1 then
        grow_factor = -grow_factor
    end
    scale = scale + grow_factor
    self.transform:set_scale(vec3:new(scale, scale, scale))
end
