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
    print("level complete", 36, 50, 7)
    print("press 🅾️ to continue", 24, 70, 7)
end