function show_level_1()
    game.update = update_level_1
    game.draw = draw_level_1

    init_light()
end

function update_level_1()
    update_light()
end

function draw_level_1()
    cls(7)
    draw_light()
end