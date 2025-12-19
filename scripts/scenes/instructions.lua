function show_instructions()
    game.update = update_instructions
    game.draw = draw_instructions
end

function update_instructions()
    if btnp(4) then
        show_level_1()
    end
end

function draw_instructions()
    cls()

    print_centered("you can only move in darkness", 46, 7)
    print_centered("the traps are deadly", 52, 7)
    print_centered("move with the arrow keys", 58, 7)
    print_centered("press 🅾️ to toggle light", 64, 7)

    if time() % 1 < 0.5 then
        print_centered("press 🅾️ to continue", 76, 7)
    end
end
