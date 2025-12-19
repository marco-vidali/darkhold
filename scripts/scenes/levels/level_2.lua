function show_level_2()
    game.update = update_level_2
    game.draw = draw_level_2

    init_light()
    init_player()
    init_timer()

    map_offset_x = 17
    map_offset_y = 0

    timer.max = 50

    current_level = show_level_2
    next_level = show_level_3
end

function update_level_2()
    update_light()
    update_player()
    update_timer()
end

function draw_level_2()
    map(map_offset_x, map_offset_y)
    draw_player()
    draw_light()
    draw_timer()
end