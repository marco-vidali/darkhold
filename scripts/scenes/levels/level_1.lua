function show_level_1()
    game.update = update_level_1
    game.draw = draw_level_1

    dset(0, 1)

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
end

function draw_level_1()
    map(map_offset_x, map_offset_y)
    draw_player()
    draw_timer()
    draw_light()
end