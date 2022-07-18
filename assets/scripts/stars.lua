stars = {}
for i = 1, 101, 1
do
    t = math.random(0, 2)
    star = app:add_game_object("models/sphere.fbx", "materials/sphere.json", "scripts/star.lua", "", false)
    a = 2*3.14 * math.random(1000) / 1000
    b = 2*3.14 * math.random(1000) / 1000
    radius = 50 + math.random(25) - math.random(25)
    star.transform:set_pos(vec3:new(
        radius*math.cos(a)*math.sin(b),
        radius*math.cos(b),
        radius*math.sin(a)*math.sin(b)))
    scale = 1 + math.random(1000) / 1000 * 3
    star.transform:set_scale(vec3:new(scale, scale, scale))
    stars[i] = star
end
function init()

end

period = 0
function update()
--    for i = 1, 101, 1 do
--        star = stars[i]
--        star.transform:move(vec3:new(0, math.sin(period), math.cos(period)));
--    end
--    period = period + 0.005
end
