function init_light()
    light = {
        on = true,
    }
end

function update_light()
    if btnp(4) then
        light.on = not light.on
    end
end

function draw_light()
    if not light.on then
        rectfill(0, 0, 127, 127, 0)
    end
end