function show_game_complete()
    game.update = update_game_complete
    game.draw = draw_game_complete
end

function update_game_complete()
end

function draw_game_complete()
    cls()

    print("congratulations!", 32, 50, 7)
    print("you have completed darkhold!", 12, 60, 7)
end