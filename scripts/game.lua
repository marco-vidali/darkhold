game = {}

-- load cart data
cartdata("darkhold")

-- set light green as transparent color
palt(0, false)
palt(11, true)

function _init()
    show_menu()
end

function _update()
    game.update()
end

function _draw()
    game.draw()
end