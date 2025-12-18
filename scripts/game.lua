game = {}

-- set light green as transparent color
palt(0, false)
palt(11, true)

function _init()
    show_level_5()
end

function _update()
    game.update()
end

function _draw()
    game.draw()
end