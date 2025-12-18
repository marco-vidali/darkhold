function show_level_4()
    game.update = update_level_4
    game.draw = draw_level_4

    init_light()
    init_player()
    init_timer()

    map_offset_x = 51
    map_offset_y = 0

    timer.max = 40

    current_level = show_level_4
    next_level = show_level_5
end

function update_level_4()
    update_light()
    update_player()
    update_timer()

    if colliding_with_flag(player.x, player.y, 2) then
        show_level_complete()
    end
end

function draw_level_4()
    map(map_offset_x, map_offset_y)
    draw_player()

    if time() % 2 < 1 then
        -- block 1
        mset(58, 5, 4)

        -- block 2
        mset(56, 9, 4)

        -- block 3
        mset(59, 12, 4)
        mset(59, 14, 3)

        -- block 4
        mset(63, 10, 3)
        mset(63, 6, 4)
    else
        -- block 1
        mset(58, 5, 3)

        -- block 2
        mset(56, 9, 3)

        -- block 3
        mset(59, 12, 3)
        mset(59, 14, 4)

        -- block 4
        mset(63, 10, 4)
        mset(63, 6, 3)
    end

    draw_light()
    draw_timer()
end