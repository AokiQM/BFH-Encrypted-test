-- BFH v1.0.0
local function exec()
  local raw=game:HttpGet("https://raw.githubusercontent.com/AokiQM/BFH-Encrypted-test/master/bundle.json")
  local MODS=game:GetService("HttpService"):JSONDecode(raw)
  _G.BFH=_G.BFH or {};_G.BFH.Core=_G.BFH.Core or {};_G._BFH_STOP_ALL=_G._BFH_STOP_ALL or {}
  local cm={"chat_config","feedback_config","registry","esp_base","esp_axe","esp_runner","esp_cuirassier","esp_barrel","esp_lantern","esp_normal","esp_driver","esp_player_ctrl","esp_player_render","esp_player_events","esp_fort","hitbox","killaura","pvp","features","commands","getitems","hud"}
  local function l(m)
    local c=MODS["core/"..m]
    if not c then return nil end
    local fn,err=loadstring("_G.BFH=_G.BFH or {};_G.BFH.Core=_G.BFH.Core or {};"..c)
    if not fn then warn("[BFH] "..m.." ERR");return nil end
    local ok,M=pcall(fn)
    if ok and type(M)=="table" then return M elseif not ok then warn("[BFH] "..m.." FAIL")end
    return nil
  end
  for _,x in ipairs(cm)do local M=l(x);if M then _G.BFH.Core[x:upper()]=M end end
  if MODS.ui then local fn,err=loadstring(MODS.ui);if fn then pcall(fn)else warn("[BFH] ui ERR")end end
  if MODS.bridge then local fn,err=loadstring(MODS.bridge);if fn then pcall(fn)else warn("[BFH] bridge ERR")end end
  print("=== BFH v1.0.0 ===")
  print("按 右Shift")
end
pcall(exec)
