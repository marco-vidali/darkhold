function show_level_5()
    game.update = update_level_5
    game.draw = draw_level_5

    dset(0, 5)

    init_light()
    init_player()
    init_timer()

    map_offset_x = 68
    map_offset_y = 0

    timer.max = 60

    current_level = show_level_5
    next_level = show_game_complete
end

function update_level_5()
    update_light()
    update_player()
    update_timer()
end

function draw_level_5()
    map(map_offset_x, map_offset_y)
    draw_player()

    if time() % 2 < 1 then
        -- block 1
        mset(70, 3, 4)

        -- block 2
        mset(70, 6, 3)

        -- block 3
        mset(74, 9, 3)
        mset(74, 7, 4)

        -- block 4
        mset(81, 8, 3)
        mset(81, 9, 3)

        -- block 4
        mset(76, 13, 4)

        -- block 5
        mset(73, 13, 3)
    else
        -- block 1
        mset(70, 3, 3)

        -- block 2
        mset(70, 6, 4)

        -- block 3
        mset(74, 9, 4)
        mset(74, 7, 3)

        -- block 4
        mset(81, 8, 4)
        mset(81, 9, 4)

        -- block 4
        mset(76, 13, 3)

        -- block 5
        mset(73, 13, 4)
    end

    draw_light()
    draw_timer()
end