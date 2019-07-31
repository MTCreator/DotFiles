---------------------
-- awesome sidebar --
---------------------

local awful = require("awful")
local gears = require("gears")
local wibox = require("wibox")
local beautiful = require("beautiful")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

-- Some commonly used variables
local icon_size = dpi(36)
local progress_bar_width = dpi(215)
-- local progress_bar_margins = dpi(9)

-- Item configuration
local exit_icon = wibox.widget.imagebox(beautiful.poweroff_icon)
exit_icon.resize = true
exit_icon.forced_width = icon_size
exit_icon.forced_height = icon_size
local exit_text = wibox.widget.textbox("Exit")
exit_text.font = "sans 14"

local exit = wibox.widget{
  exit_icon,
  exit_text,
  layout = wibox.layout.fixed.horizontal
}
exit:buttons(gears.table.join(
                 awful.button({ }, 1, function ()
                     exit_screen_show()
                     sidebar.visible = false
                 end)
))


local time = wibox.widget.textclock("%H %M")
time.align = "center"
time.valign = "center"
time.font = "sans 55"


local date = wibox.widget.textclock("%B %d")
-- local date = wibox.widget.textclock("%A, %B %d")
-- local date = wibox.widget.textclock("%A, %B %d, %Y")
date.align = "center"
date.valign = "center"
date.font = "sans medium 16"

-- local fancy_date = wibox.widget.textclock("%-j days around the sun")
local fancy_date = wibox.widget.textclock("Knowing that today is %A fills you with determination.")
fancy_date.align = "center"
fancy_date.valign = "center"
fancy_date.font = "sans italic 11"

local battery_icon = wibox.widget.imagebox(beautiful.battery_icon)
battery_icon.forced_width = icon_size
battery_icon.forced_height = icon_size
local battery = require("widgets.battery")
battery.font = "sans 28"

-- Create the sidebar
sidebar = wibox({x = 0, y = 0, visible = false, ontop = true, type = "dock"})
sidebar.bg = beautiful.sidebar_bg or beautiful.wibar_bg or "#000000"
sidebar.fg = beautiful.sidebar_fg or beautiful.wibar_fg or "#FFFFFF"
sidebar.opacity = beautiful.sidebar_opacity or 1
sidebar.height = beautiful.sidebar_height or awful.screen.focused().geometry.height
sidebar.width = beautiful.sidebar_width or dpi(300)
sidebar.y = beautiful.sidebar_y or 0
local radius = beautiful.sidebar_border_radius or 0
if beautiful.sidebar_position == "right" then
  sidebar.x = awful.screen.focused().geometry.width - sidebar.width
  sidebar.shape = helpers.prrect(radius, true, false, false, true)
else
  sidebar.x = beautiful.sidebar_x or 0
  sidebar.shape = function(cr, width, height) gears.shape.partially_rounded_rect(cr, width, height, false, true, true, false, radius) end
end
-- sidebar.shape = helpers.rrect(radius)

sidebar:buttons(gears.table.join(
                  -- Middle click - Hide sidebar
                  awful.button({ }, 2, function ()
                      sidebar.visible = false
                  end)
                  -- Right click - Hide sidebar
                  -- awful.button({ }, 3, function ()
                  --     sidebar.visible = false
                  --     -- mymainmenu:show()
                  -- end)
))

-- Hide sidebar when mouse leaves
if beautiful.sidebar_hide_on_mouse_leave then
  sidebar:connect_signal("mouse::leave", function ()
                           sidebar.visible = false
  end)
end
-- Activate sidebar by moving the mouse at the edge of the screen
if beautiful.sidebar_hide_on_mouse_leave then
  local sidebar_activator = wibox({y = sidebar.y, width = 1, visible = true, ontop = false, opacity = 0, below = true})
  sidebar_activator.height = sidebar.height
  -- sidebar_activator.height = sidebar.height - beautiful.wibar_height
  sidebar_activator:connect_signal("mouse::enter", function ()
                                     sidebar.visible = true
  end)

  if beautiful.sidebar_position == "right" then
    sidebar_activator.x = awful.screen.focused().geometry.width - sidebar_activator.width
  else
    sidebar_activator.x = 0
  end

  sidebar_activator:buttons(
    gears.table.join(
      -- awful.button({ }, 2, function ()
      --     start_screen_show()
      --     -- sidebar.visible = not sidebar.visible
      -- end),
      awful.button({ }, 4, function ()
          awful.tag.viewprev()
      end),
      awful.button({ }, 5, function ()
          awful.tag.viewnext()
      end)
  ))
end

pad = wibox.widget.textbox(" ")

-- Item placement
sidebar:setup {
  { ----------- TOP GROUP -----------
    time,
    date,
    fancy_date,
    layout = wibox.layout.fixed.vertical
  },
  { ----------- MIDDLE GROUP -----------
    pad,
    {
      battery_icon,
      battery,
      layout = wibox.layout.align.horizontal,
    },
    
    layout = wibox.layout.fixed.vertical
  },
  { ----------- BOTTOM GROUP -----------
    { -- Search and exit screen
      nil,
      {
        exit,
        layout = wibox.layout.fixed.horizontal
      },
      nil,
      layout = wibox.layout.align.horizontal,
      expand = "none"
    },
    layout = wibox.layout.fixed.vertical
  },
  layout = wibox.layout.align.vertical,
}

return sidebar