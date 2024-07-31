-- hyper = { "cmd", "alt", "ctrl", "shift" }
-- hs.hotkey.bind(hyper, "W", function()
--   hs.alert.defaultStyle = {
--     strokeWidth = 2,
--     strokeColor = { white = 1, alpha = 1 },
--     fillColor = { white = 0, alpha = 0.75 },
--     textColor = { white = 1, alpha = 1 },
--     textFont = ".AppleSystemUIFont",
--     textSize = 27,
--     radius = 5,
--     atScreenEdge = 0,
--     fadeInDuration = 0.15,
--     fadeOutDuration = 0.15,
--     padding = nil,
--   }
--   hs.alert.show("Hello World! \ntest")
--   -- hs.execute("skhd -k 'hyper-space'", true)
-- end)
require("hs.ipc")
-- yabaiSpaces = require("yabai-spaces")
-- if yabaiSpaces then
--   yabaiSpaces:start()
-- end

stackline = require("stackline")
stackline:init()
