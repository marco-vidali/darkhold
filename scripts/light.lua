function init_light()
    light = {
        on = true,
        off_time = 0,
        cooldown = 1
    }
end

function update_light()
    if btnp(4) then
        if light.on then
            light.off_time = time()
            light.on = false
        end

        if not light.on and time() - light.off_time > light.cooldown then
            light.on = true
        end
    end
end

function draw_light()
    if not light.on then
        rectfill(0, 0, 127, 127, 0)
    end
end