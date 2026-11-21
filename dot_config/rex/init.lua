-- One-shot prefix from ~/.config/zellij/config.kdl.
local function prefix(key, action, args)
    rex.bind("ctrl+a>" .. key, action, args)
end

-- Zellij's "Write 2" sends Ctrl+B to the foreground program.
prefix("ctrl+a", "pane.send_key", { key = "ctrl+b" })

prefix("c", "client.tab.new")
prefix("t", "client.tab.new")
prefix("p", "client.tab.previous")
prefix("n", "client.tab.next")
prefix(",", "client.tab.rename")
prefix(".", "pane.rename")
prefix("shift+\\", "pane.split", { direction = "right" }) -- |
prefix("-", "pane.split", { direction = "down" })
prefix("z", "pane.zoom")
prefix("x", "pane.close")
prefix("[", "pane.copy_mode.enter")

for _, key in ipairs({ "s", "shift+4", "shift+;" }) do -- s, $, :
    prefix(key, "session.switch")
end

local directions = { h = "left", j = "down", k = "up", l = "right" }
for key, direction in pairs(directions) do
    prefix(key, "pane.focus", { direction = direction })
    prefix(direction, "pane.focus", { direction = direction })
    rex.bind("ctrl+" .. key, "pane.focus", { direction = direction })
    rex.bind("alt+" .. key, "pane.resize", { direction = direction })
end

-- Rex copy mode already supplies j/k, Up/Down, PageUp/PageDown, n and Esc.
-- Zellij's scroll and search modes share a single copy mode in Rex.
local page_motions = {
    page_up = { "shift+k", "left", "h" },
    page_down = { "shift+j", "right", "l" },
    half_page_up = { "u" },
    half_page_down = { "d" },
}
for motion, keys in pairs(page_motions) do
    for _, key in ipairs(keys) do
        rex.bind("copy/" .. key, "pane.copy_mode.move", { to = motion })
    end
end
rex.bind("copy/ctrl+r", "pane.copy_mode.search", { direction = "forward" })
rex.bind("copy/p", "pane.copy_mode.search_again", { direction = "opposite" })
