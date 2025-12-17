function init_player()
    player = {
        x = 10,
        y = 10,
    }
end

function update_player()
    if light.on then return end

    local new_x = player.x
    local new_y = player.y

    if btn(0) then new_x -= 1 end
    if btn(1) then new_x += 1 end
    if btn(2) then new_y -= 1 end
    if btn(3) then new_y += 1 end

    if not solid_at(new_x, player.y) then
        player.x = new_x
    end

    if not solid_at(player.x, new_y) then
        player.y = new_y
    end
end

function draw_player()
    spr(1, player.x, player.y)
end

function solid_at(x, y)
    x += 1
    w = 6
    h = 8

    for i = 0, w - 1 do
        for j = 0, h - 1 do
            local tile_x = flr((x + i) / 8)
            local tile_y = flr((y + j) / 8)
            local tile = mget(tile_x, tile_y)

            if fget(tile, 0) then
                return true
            end
        end
    end

    return false
end