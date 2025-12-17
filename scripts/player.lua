function init_player()
    player = {
        x = 10,
        y = 10,
    }
end

function update_player()
    move()
    die()
end

function draw_player()
    spr(1, player.x, player.y)
end

function move()
    if light.on then return end

    local new_x = player.x
    local new_y = player.y

    if btn(0) then new_x -= 1 end
    if btn(1) then new_x += 1 end
    if btn(2) then new_y -= 1 end
    if btn(3) then new_y += 1 end

    if not colliding_with_flag(new_x, player.y, 0) then
        player.x = new_x
    end

    if not colliding_with_flag(player.x, new_y, 0) then
        player.y = new_y
    end
end

function die()
    if colliding_with_flag(player.x, player.y, 1) then
        -- dead
    end
end

function colliding_with_flag(x, y, flag)
    local w = 6
    local h = 8

    x += 1

    for i = 0, w - 1 do
        for j = 0, h - 1 do
            local tile_x = flr((x + i) / 8)
            local tile_y = flr((y + j) / 8)
            local tile = mget(tile_x, tile_y)

            if fget(tile, flag) then
                return true
            end
        end
    end

    return false
end