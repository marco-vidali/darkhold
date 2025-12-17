function show_level_1()
    game.update = update_level_1
    game.draw = draw_level_1

    init_light()
    init_player()
    init_timer()
end

function update_level_1()
    update_light()
    update_player()
    update_timer()

    if colliding_with_flag(player.x, player.y, 2) then
        show_level_complete()
    end
end

function draw_level_1()
    map(0, 0)
    draw_player()
    draw_light()
    draw_timer()
end