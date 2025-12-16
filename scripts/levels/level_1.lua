function show_level_1()
    game.update = update_level_1
    game.draw = draw_level_1

    init_light()
    init_player()
end

function update_level_1()
    update_light()
    update_player()
end

function draw_level_1()
    cls(4)
    draw_player()
    draw_light()
end