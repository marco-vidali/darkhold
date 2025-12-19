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
    
    print("level complete", 36, 52, 7)

    if time() % 1 < 0.5 then
        print("press 🅾️ to continue", 26, 70, 7)
    end
end