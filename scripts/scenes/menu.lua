function show_menu()
    game.update = update_menu
    game.draw = draw_menu
end

function update_menu()
    if btnp(4) then
        -- load last played level
        local last_level = dget(0)

        if last_level == 0 then
            last_level = 1
        end

        if last_level == 1 then
            show_level_1()
        elseif last_level == 2 then
            show_level_2()
        elseif last_level == 3 then
            show_level_3()
        elseif last_level == 4 then
            show_level_4()
        elseif last_level == 5 then
            show_level_5()
        end
    end
end

function draw_menu()
    cls()

    print("darkhold", 48, 52, 7)

    if time() % 1 < 0.5 then
        print("press 🅾️ to start", 32, 70, 7)
    end
end