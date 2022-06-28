stars = {}
for i = 1, 10001, 1
do
    star = app:add_game_object("materials/star.json", "scripts/star.lua", "")
    a = 2*3.14 * math.random(1000) / 1000
    b = 2*3.14 * math.random(1000) / 1000
    star.transform:set_pos(vec3:new(
        50*math.cos(a)*math.sin(b),
        50*math.cos(b),
        50*math.sin(a)*math.sin(b)))
    scale = 0.01 + math.random(1000) / 1000 * 0.03
    star.transform:set_scale(vec3:new(scale, scale, scale))
    stars[i] = star
end

period = 0
function update()
    --for i = 1, 10001, 1 do
    --    star = stars[i]
    --    star.transform:move(vec3:new(0, math.sin(period)/50, math.cos(period)/50));
    --end
    --period = period + 0.005
end
