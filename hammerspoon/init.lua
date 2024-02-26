-- use karabiner to map this to caps lock
hyper = {"cmd", "alt", "ctrl", "shift"}

-- app hotkeys
singleapps = {
  -- top row
  {'W', 'Warp'},
  {'E', 'Things3'},
  {'R', 'Obsidian'},
  -- T is quick save in Anybox
  -- middle row
  {'A', 'Safari'},
  {'S', 'Visual Studio Code'},
  {'D', 'Guilded-Tarobi'},
  {'F', 'LM Studio'},
  {'H', 'Slack'},
  {'J', 'Messages'},
  -- K is Cardhop (defined in app)
  {'L', 'Music'},
  -- bottom row
  {'Z', 'Google Chrome'},
  -- C is Copy 'Em (defined in app)
  -- V is Fantastical (defined in app)
  {'M', 'Mail'},
  -- Space is quick find Anybox
}

for i, app in ipairs(singleapps) do
   hs.hotkey.bind(hyper, app[1], function() hs.application.launchOrFocus(app[2]); end)
end

-- looks pretty but gets jittery when right aligning
hs.window.animationDuration = 0

-- throw current window to LG
hs.hotkey.bind(hyper, '1', function()
  local win = hs.window.focusedWindow()
  win:moveToScreen('LG')
end)

-- throw current window to laptop screen
hs.hotkey.bind(hyper, '2', function()
  local win = hs.window.focusedWindow()
  win:moveToScreen('Built%-in')
end)

-- throw current window to Dell
hs.hotkey.bind(hyper, '3', function()
  local win = hs.window.focusedWindow()
  win:moveToScreen('Dell')
end)

-- dock window to left half of screen
hs.hotkey.bind(hyper, "Left", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

-- dock window to right half of screen
hs.hotkey.bind(hyper, "Right", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

-- dock window to bottom half of screen
hs.hotkey.bind(hyper, "Down", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y + (max.h / 2)
  f.w = max.w
  f.h = max.h / 2
  win:setFrame(f)
end)

-- maximize window or dock with top half if already maximized
hs.hotkey.bind(hyper, "Up", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  if f.x == max.x and f.y == max.y and f.w == max.w and f.h == max.h then
    f.x = max.x
    f.y = max.y
    f.w = max.w
    f.h = max.h / 2
  else
    f.x = max.x
    f.y = max.y
    f.w = max.w
    f.h = max.h
  end
  win:setFrame(f)
end)

-- place a red circle around the mouse position
mouseCircle = nil
mouseCircleTimer = nil
hs.hotkey.bind(hyper, "`", function()
  -- Delete an existing highlight if it exists
  if mouseCircle then
      if mouseCircleTimer then
          mouseCircleTimer:stop()
      end
      mouseCircle:delete()
      mouseCircle = nil
  end
  -- Get the current co-ordinates of the mouse pointer
  mousepoint = hs.mouse.absolutePosition()
  -- Prepare a big red circle around the mouse pointer
  mouseCircle = hs.drawing.circle(hs.geometry.rect(mousepoint.x-40, mousepoint.y-40, 80, 80))
  mouseCircle:setStrokeColor({["red"]=1,["blue"]=0,["green"]=0,["alpha"]=1})
  mouseCircle:setFill(false)
  mouseCircle:setStrokeWidth(5)
  mouseCircle:show()

  -- Set a timer to delete the circle after 1 second
  mouseCircleTimer = hs.timer.doAfter(3, function()
    mouseCircle:delete()
    mouseCircle = nil
  end)
end)
