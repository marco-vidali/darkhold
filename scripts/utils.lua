function print_centered(text, y, col)
    local text_width = #text * 4 - 1
    local x = (128 - text_width) / 2
    print(text, x, y, col)
end