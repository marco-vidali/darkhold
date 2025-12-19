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

    print("you can only move in darkness", 6,  46, 7)
    print("the traps are deadly", 24, 52, 7)
    print("move with the arrow keys", 16, 58, 7)
    print("press 🅾️ to toggle light", 19, 64, 7)

    if time() % 1 < 0.5 then
        print("press 🅾️ to continue", 27, 76, 7)
    end
end
