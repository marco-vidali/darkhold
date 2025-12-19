function show_game_complete()
    game.update = update_game_complete
    game.draw = draw_game_complete
end

function update_game_complete()
    if btnp(5) then
        dset(0, 0)
        show_menu()
    end
end

function draw_game_complete()
    cls()

    print_centered("congratulations!", 46, 7)
    print_centered("you have completed darkhold!", 58, 7)

    if time() % 1 < 0.5 then
        print_centered("press ❎ to restart", 76, 7)
    end
end