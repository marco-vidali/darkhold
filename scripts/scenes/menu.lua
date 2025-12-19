function show_menu()
    game.update = update_menu
    game.draw = draw_menu
end

function update_menu()
    if btnp(4) then
        show_level_1()
    end
end

function draw_menu()
    cls()

    print("darkhold", 48, 50, 7)

    if time() % 1 < 0.5 then
        print("press 🅾️ to start", 30, 70, 7)
    end
end