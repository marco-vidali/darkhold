current_level = nil

function show_you_died()
    game.update = update_you_died
    game.draw = draw_you_died
end

function update_you_died()
    if btnp(4) then
        current_level()
    end
end

function draw_you_died()
    cls()

    print_centered("you died", 52, 7)
    
    if time() % 1 < 0.5 then
        print_centered("press 🅾️ to restart", 64, 7)
    end
end