function init_player()
    player = {
        x = 10,
        y = 10,
        speed = 1,
        sprite = 1
    }
end

function update_player()
    if light.on then return end

    if btn(0) then player.x -= player.speed end
    if btn(1) then player.x += player.speed end
    if btn(2) then player.y -= player.speed end
    if btn(3) then player.y += player.speed end
end

function draw_player()
    spr(player.sprite, player.x, player.y)
end