-- use karabiner to map this to caps lock
hyper = {"cmd", "alt", "ctrl", "shift"}

-- app hotkeys
singleapps = {
  {'A', 'Safari'},
  {'S', 'Sublime Text'},
  {'W', 'Terminal'},
  {'H', 'Slack'},
  {'J', 'Messages'},
  {'V', 'Calendar'}
}

for i, app in ipairs(singleapps) do
   hs.hotkey.bind(hyper, app[1], function() hs.application.launchOrFocus(app[2]); end)
end

-- looks pretty but gets jittery when right aligning
hs.window.animationDuration = 0

-- throw current window to previous screen
hs.hotkey.bind(hyper, '1', function()
  local win = hs.window.focusedWindow()
  win:moveToScreen(hs.screen.mainScreen():previous())
end)

-- throw current window to next screen
hs.hotkey.bind(hyper, '2', function()
  local win = hs.window.focusedWindow()
  win:moveToScreen(hs.screen.mainScreen():next())
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

-- maximize window
hs.hotkey.bind(hyper, "Up", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
end)

-- place a red circle around the mouse position
mouseCircle = nil
mouseCircleTimer = nil
hs.hotkey.bind(hyper, "D", function()
  -- Delete an existing highlight if it exists
  if mouseCircle then
      mouseCircle:delete()
      if mouseCircleTimer then
          mouseCircleTimer:stop()
      end
  end
  -- Get the current co-ordinates of the mouse pointer
  mousepoint = hs.mouse.getAbsolutePosition()
  -- Prepare a big red circle around the mouse pointer
  mouseCircle = hs.drawing.circle(hs.geometry.rect(mousepoint.x-40, mousepoint.y-40, 80, 80))
  mouseCircle:setStrokeColor({["red"]=1,["blue"]=0,["green"]=0,["alpha"]=1})
  mouseCircle:setFill(false)
  mouseCircle:setStrokeWidth(5)
  mouseCircle:show()

  -- Set a timer to delete the circle after 1 second
  mouseCircleTimer = hs.timer.doAfter(1, function() mouseCircle:delete() end)
end)
