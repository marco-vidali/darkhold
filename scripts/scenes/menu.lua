function show_menu()
    game.update = update_menu
    game.draw = draw_menu
end

function update_menu()
    if btnp(4) then
        -- load next scene
        local next_scene = dget(0)

        if next_scene == 0 then
            show_instructions()
        elseif next_scene == 1 then
            show_level_1()
        elseif next_scene == 2 then
            show_level_2()
        elseif next_scene == 3 then
            show_level_3()
        elseif next_scene == 4 then
            show_level_4()
        elseif next_scene == 5 then
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