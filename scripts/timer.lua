function init_timer()
    timer = {
        start = flr(time()),
        current = flr(time()),
        max = 20
    }
end

function update_timer()
    timer.current = flr(time())

    if timer.current >= timer.start + timer.max then
        show_you_died()
    end
end

function draw_timer()
    print(timer.start + timer.max - timer.current, 0, 0, 7)
end