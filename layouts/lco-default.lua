require "keybow"
require "layouts/lco-colours"

-- Layout reference
-- ----------------
-- | 09 | 10 | 11 |
-- | 06 | 07 | 08 |
-- | 03 | 04 | 05 | USB
-- | 00 | 01 | 02 |

function setup() -- Set custom lights up
    keybow.auto_lights(false)
    keybow.clear_lights()
    keybow.set_pixel(9, colours.RED["r"], colours.RED["g"], colours.RED["b"])
    keybow.set_pixel(10, colours.BRIGHT_ORANGE["r"], colours.BRIGHT_ORANGE["g"], colours.BRIGHT_ORANGE["b"])
    keybow.set_pixel(11, colours.YELLOW["r"], colours.YELLOW["g"], colours.YELLOW["b"])
    keybow.set_pixel(6, colours.LIGHT_GREEN["r"], colours.LIGHT_GREEN["g"], colours.LIGHT_GREEN["b"])
    keybow.set_pixel(7, colours.LIGHT_BLUE["r"], colours.LIGHT_BLUE["g"], colours.LIGHT_BLUE["b"])
    keybow.set_pixel(8, colours.PURPLE["r"], colours.PURPLE["g"], colours.PURPLE["b"])
    
    keybow.set_pixel(3, colours.LIGHT_PINK["r"], colours.LIGHT_PINK["g"], colours.LIGHT_PINK["b"])
    keybow.set_pixel(4, colours.WHITE["r"], colours.WHITE["g"], colours.WHITE["b"])
    keybow.set_pixel(5, colours.BRIGHT_PINK["r"], colours.BRIGHT_PINK["g"], colours.BRIGHT_PINK["b"])
    keybow.set_pixel(1, colours.LIGHT_BROWN["r"], colours.LIGHT_BROWN["g"], colours.LIGHT_BROWN["b"])
end

toggle = { false, false, false, false, false, false, false, false, false, false, false, false }


-- Key mappings --

function handle_key_00(pressed)
    -- keybow.set_key("0", pressed)
end

function handle_key_01(pressed)
    key_number = 1
    key_index = key_number + 1
    
    if toggle[key_index] then
        keybow.set_pixel(key_number, colours.BROWN["r"], colours.BROWN["g"], colours.BROWN["b"])
    else
        keybow.set_pixel(key_number, colours.LIGHT_BROWN["r"], colours.LIGHT_BROWN["g"], colours.LIGHT_BROWN["b"])
    end

    toggle[key_index] = not toggle[key_index]
    -- keybow.set_key(".", pressed)
end

function handle_key_02(pressed)
    -- keybow.set_key(keybow.ENTER, pressed)
end

function handle_key_03(pressed)
    key_number = 3
    key_index = key_number + 1

    if toggle[key_number+1] then
        keybow.set_pixel(key_number, colours.PINK["r"], colours.PINK["g"], colours.PINK["b"])
    else
        keybow.set_pixel(key_number, colours.LIGHT_PINK["r"], colours.LIGHT_PINK["g"], colours.LIGHT_PINK["b"])
    end

    toggle[key_index] = not toggle[key_index]
    -- keybow.set_key("1", pressed)
end

function handle_key_04(pressed)
    key_number = 4
    key_index = key_number + 1

    if toggle[key_number+1] then
        keybow.set_pixel(key_number, colours.GREY["r"], colours.GREY["g"], colours.GREY["b"])
    else
        keybow.set_pixel(key_number, colours.WHITE["r"], colours.WHITE["g"], colours.WHITE["b"])
    end

    toggle[key_index] = not toggle[key_index]
    -- keybow.set_key("2", pressed)
end

function handle_key_05(pressed)
    key_number = 5
    key_index = key_number + 1

    if toggle[key_number+1] then
        keybow.set_pixel(key_number, 0, 0, 0)
    else
        keybow.set_pixel(key_number, colours.BRIGHT_PINK["r"], colours.BRIGHT_PINK["g"], colours.BRIGHT_PINK["b"])
    end

    toggle[key_index] = not toggle[key_index]
    -- keybow.set_key("3", pressed)
end

function handle_key_06(pressed)
    key_number = 6
    key_index = key_number + 1

    if toggle[key_number+1] then
        keybow.set_pixel(key_number, colours.GREEN["r"], colours.GREEN["g"], colours.GREEN["b"])
    else
        keybow.set_pixel(key_number, colours.LIGHT_GREEN["r"], colours.LIGHT_GREEN["g"], colours.LIGHT_GREEN["b"])
    end

    toggle[key_index] = not toggle[key_index]
    -- keybow.set_key("4", pressed)
end

function handle_key_07(pressed)
    key_number = 7
    key_index = key_number + 1

    if toggle[key_number+1] then
        keybow.set_pixel(key_number, colours.BLUE["r"], colours.BLUE["g"], colours.BLUE["b"])
    else
        keybow.set_pixel(key_number, colours.LIGHT_BLUE["r"], colours.LIGHT_BLUE["g"], colours.LIGHT_BLUE["b"])
    end

    toggle[key_index] = not toggle[key_index]
    -- keybow.set_key("5", pressed)
end

function handle_key_08(pressed)
    key_number = 8
    key_index = key_number + 1

    if toggle[key_number+1] then
        keybow.set_pixel(key_number, 0, 0, 0)
    else
        keybow.set_pixel(key_number, colours.PURPLE["r"], colours.PURPLE["g"], colours.PURPLE["b"])
    end

    toggle[key_index] = not toggle[key_index]
    -- keybow.set_key("6", pressed)
end

function handle_key_09(pressed)
    key_number = 9
    key_index = key_number + 1

    if toggle[key_number+1] then
        keybow.set_pixel(key_number, 0, 0, 0)
    else
        keybow.set_pixel(key_number, colours.RED["r"], colours.RED["g"], colours.RED["b"])
    end

    toggle[key_index] = not toggle[key_index]
    -- keybow.set_key("7", pressed)
end

function handle_key_10(pressed)
    key_number = 10
    key_index = key_number + 1

    if toggle[key_number+1] then
        keybow.set_pixel(key_number, 0, 0, 0)
    else
        keybow.set_pixel(key_number, colours.BRIGHT_ORANGE["r"], colours.BRIGHT_ORANGE["g"], colours.BRIGHT_ORANGE["b"])
    end

    toggle[key_index] = not toggle[key_index]
    -- keybow.set_key("8", pressed)
end

function handle_key_11(pressed)
    key_number = 11
    key_index = key_number + 1

    if toggle[key_number+1] then
        keybow.set_pixel(key_number, 0, 0, 0)
    else
        keybow.set_pixel(key_number, colours.YELLOW["r"], colours.YELLOW["g"], colours.YELLOW["b"])
    end

    toggle[key_index] = not toggle[key_index]
    -- keybow.set_key("9", pressed)
end
