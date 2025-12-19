function show_level_3()
    game.update = update_level_3
    game.draw = draw_level_3

    dset(0, 3)

    init_light()
    init_player()
    init_timer()

    map_offset_x = 34
    map_offset_y = 0

    timer.max = 25

    current_level = show_level_3
    next_level = show_level_4
end

function update_level_3()
    update_light()
    update_player()
    update_timer()
end

function draw_level_3()
    map(map_offset_x, map_offset_y)

    draw_player()
    draw_timer()

    if time() % 2 < 1 then
        -- block 1
        mset(37, 6, 3)
        mset(35, 6, 4)

        -- block 2
        mset(41, 9, 3)
        mset(41, 10, 3)
        mset(41, 11, 3)

        -- block 3
        mset(45, 5, 3)
        mset(46, 5, 3)
        mset(47, 5, 4)
    else
        -- block 1
        mset(35, 6, 3)
        mset(37, 6, 4)

        -- block 2
        mset(41, 9, 4)
        mset(41, 10, 4)
        mset(41, 11, 4)

        -- block 3
        mset(45, 5, 4)
        mset(46, 5, 4)
        mset(47, 5, 3)
    end

    draw_light()
end