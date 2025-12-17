function show_level_1()
    game.update = update_level_1
    game.draw = draw_level_1

    init_light()
    init_player()
    init_timer()

    map_offset_x = 0
    map_offset_y = 0

    timer.max = 20

    current_level = show_level_1
    next_level = show_level_2
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
    map(map_offset_x, map_offset_y)
    draw_player()
    draw_light()
    draw_timer()
end