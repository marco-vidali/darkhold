function init_timer()
    timer = {
        start = flr(time()),
        current = flr(time())
    }
end

function update_timer()
    timer.current = flr(time())

    if timer.current >= timer.start + 30 then
        show_you_died()
    end
end

function draw_timer()
    print(timer.start + 30 - timer.current, 0, 0, 7)
end