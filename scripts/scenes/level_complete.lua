next_level = nil

function show_level_complete()
    game.update = update_level_complete
    game.draw = draw_level_complete
end

function update_level_complete()
    if btnp(4) then
        next_level()
    end
end

function draw_level_complete()
    cls()
    
    print_centered("level complete!", 52, 7)

    if time() % 1 < 0.5 then
        print_centered("press 🅾️ to continue", 64, 7)
    end
end