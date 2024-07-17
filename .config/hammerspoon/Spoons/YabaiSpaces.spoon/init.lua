local obj = {}

-- Metadata
obj.name = "YabaiSpaces"
obj.version = "1.0"
obj.author = "Dimitar Banev <banev_dimitar@mail.com>"
obj.homepage = "https://github.com/devastion"
obj.license = "MIT - https://opensource.org/licenses/MIT"

-- Internals
obj.menu = nil
obj.watcher = nil
obj.screen = nil

function obj:_getCurrentSpace()
  local output = hs.execute("yabai -m query --spaces --space", true)
  local space = hs.json.decode(output)

  if space.label == "" then
    return space.index
  else
    return space.label
  end
end

function obj:_updateMenuTitle()
  local menuTitle = obj:_getCurrentSpace()
  obj.menu:setTitle(string.upper(menuTitle))
end

function obj:init()
  obj.menu = hs.menubar.new()
  obj:_updateMenuTitle()

  obj.watcher = hs.spaces.watcher.new(obj._updateMenuTitle)
  obj.watcher:start()

  obj.menu:setMenu({
    {
      title = "Edit space label",
      fn = function()
        local current = obj:_getCurrentSpace()
        local button, newSpaceName = hs.dialog.textPrompt("Rename space", "", current, "Save", "Cancel")
        if button == "Save" and newSpaceName ~= "" then
          hs.execute("yabai -m space " .. current .. " --label " .. newSpaceName, true)
          obj:_updateMenuTitle()
        end
      end,
    },
  })
end

return obj
