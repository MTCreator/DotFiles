---------------------
-- awesome battery --
---------------------

local awful = require("awful")
local gears = require("gears")
local wibox = require("wibox")
local beautiful = require("beautiful")

-- Configuration
local update_interval = 30            -- in seconds

local battery = wibox.widget{
    text = "battery widget",
    align  = 'center',
    valign = 'center',
    widget = wibox.widget.textbox
}

local function update_widget(bat)
  battery.markup = bat .. "%"
end

local bat_script = [[
  bash -c '
  sudo tlp-stat | grep -w "Charge total" | grep -o "[0-9]\{1,3\}.[0-9]\{1,2\}"
  ']]

awful.widget.watch(bat_script, update_interval, function(widget, stdout)
                     local bat = stdout:sub(1,-2)
                     -- bat = string.gsub(bat, '^%s*(.-)%s*$', '%1')
                     update_widget(bat)
end)

return battery