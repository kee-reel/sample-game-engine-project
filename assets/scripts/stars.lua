
stars = {}
for i = 1, 1001, 1
do
    star = app:add_game_object("materials/star.json", "scripts/star.lua", "")
    star.transform:set_pos(vec3:new(
        math.random(1000) - math.random(1000), 
        math.random(1000) - math.random(1000), 
        math.random(1000) - math.random(1000)))
    scale = math.random(1000) / 1000
    star.transform:set_scale(vec3:new(scale, scale, scale))
    stars[i] = star
end

period = 0
function update()
    for i = 1, 1001, 1 do
        star = stars[i]
        star.transform:move(vec3:new(0, math.sin(period)/50, math.cos(period)/50));
    end
    period = period + 0.005
end
