function show_you_died()
    game.update = update_you_died
    game.draw = draw_you_died
end

function update_you_died()
    if btnp(4) then
        show_level_1()
    end
end

function draw_you_died()
    cls()
    print("you died", 48, 50, 7)
    print("press 🅾️ to restart", 28, 70, 7)
end