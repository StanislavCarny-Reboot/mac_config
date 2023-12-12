hs.loadSpoon("SpoonInstall")

hs.hotkey.bind({'alt'},'1',function()hs.application.launchOrFocus('Google Chrome')end)
hs.hotkey.bind({'alt'},'2',function()hs.application.launchOrFocus('Visual Studio Code')end)
hs.hotkey.bind({'alt'},'3',function()hs.application.get('Slack'):activate()end)
hs.hotkey.bind({'alt'},'4',function()hs.application.launchOrFocus('Microsoft Outlook')end)
hs.hotkey.bind({'alt'},'5',function()hs.application.launchOrFocus('Notes')end)


-- resizing windowds and position
spoon.SpoonInstall:andUse("MiroWindowsManager",
    {
	fn = function(lol)
	    hs.window.animationDuration = 0.0
	    lol:bindHotkeys({
	      up = {"cmd", "k"},
	      right = {"cmd", "l"},
	      down = {"cmd", "j"},
	      left = {"cmd", "h"},
	      fullscreen = {{"cmd", "shift"}, "k"}
	    })
	end
    }
)


-- monitor switching 
hs.hotkey.bind({"cmd", "shift"}, "l", function()
    local win = hs.window.focusedWindow();
    if not win then return end
  win:moveToScreen(win:screen():next())
  end)
  
  hs.hotkey.bind({"cmd", "shift"}, "h", function()
    local win = hs.window.focusedWindow();
    if not win then return end
  win:moveToScreen(win:screen():previous())
  end)
  

  -- docking app
  hs.hotkey.bind({"cmd", "shift"}, "j", function()
      local win = hs.window.focusedWindow();
      if not win then return end
  win:minimize()
  end)


  ------- ClipboardTool -------
spoon.SpoonInstall:andUse("ClipboardTool",
{
    fn = function(lawl)
        lawl:start()
        lawl.show_copied_alert = false
        lawl.hist_size = 10000
    end
})
