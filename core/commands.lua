do
  local BFH={}
  BFH.DEBUG=false
  BFH.LOG_LEVEL=3
  local _SvPeI={"OFF","ERROR","WARN","INFO","DEBUG","TRACE"}
  function BFH.log(l,m,msg)
    if BFH.DEBUG and l<=BFH.LOG_LEVEL then print("[BFH]["..tostring(m).."]["..(_SvPeI[l+1]or"?").."] "..tostring(msg))end
  end
  function BFH.time(m,n,f)
    local s=os.clock();local ok,r=pcall(f);local c=(os.clock()-s)*1000
    if ok then BFH.log(3,m,n.." OK ("..string.format("%.1f",c).."ms)")
    else BFH.log(1,m,n.." FAIL: "..tostring(r).." ("..string.format("%.1f",c).."ms)")end
    return ok,r
  end
  local _C=_G.BFH.Core;_G.BFH=BFH;_G.BFH.Core=_C or {}
end
local __bqor = {_state = {amount = 5, wavenum = 1, customInput = ""}}
function __bqor._dispatch(__4ncb, __ads)
  local __5ah6 = {}
  for __elod in   __4ncb:gmatch("[^%.]+") do
            table.insert(__5ah6, __elod)
  end
  if # __5ah6 < 3 then
    return
  end
  local __haz1 = __5ah6[2]
  local __hzei = __5ah6[3]
  if __haz1 == "button" then
    local __b46o = __bqor
    if __hzei == "custom_send" then
                  __b46o.sendCommand(__b46o._state.customInput or "")
    elseif     __hzei:find("^spawn_") then
                  __b46o.spawnZombie(      __hzei:gsub("^spawn_", ""))
    elseif __hzei == "skip_wave" then
                  __b46o.skipWave()
    elseif __hzei == "skip_obj" then
                  __b46o.skipObjective()
    elseif     __hzei:find("^class_") then
                  __b46o.setClass(      __hzei:gsub("^class_", ""))
    elseif     __hzei:find("^give_") then
                  __b46o.giveItem(      __hzei:gsub("^give_", ""))
    elseif __hzei == "kill" then
                  __b46o.killPlayer()
    elseif __hzei == "respawn" then
                  __b46o.respawnPlayer()
    elseif __hzei == "bring" then
                  __b46o.bringPlayer()
    elseif __hzei == "to" then
                  __b46o.teleportTo()
    elseif __hzei == "warp" then
                  __b46o.warpTo()
    end
  elseif __haz1 == "toggle" then
    if __hzei == "togglez" then
                  __bqor.toggleZombies(__ads.value)
    elseif __hzei == "togglethink" then
                  __bqor.toggleAI(__ads.value)
    end
  elseif __haz1 == "slider" then
    if __hzei == "amount" then
      __bqor._state.amount = __ads.value
    elseif __hzei == "wavenum" then
      __bqor._state.wavenum = __ads.value
    end
  elseif __haz1 == "input" then
    if __hzei == "custom" then
      __bqor._state.customInput = __ads.value or ""
    end
  end
end
function __bqor.sendCommand(__fpbi)
      print("[CMD] 发送自定义指令:", __fpbi)
  local Players =   game:GetService("Players")
  local __19yb = Players.LocalPlayer
  local __b46o = __19yb.Character
  if __b46o then
    local __cbop =     __b46o:FindFirstChild("Chat")
    if __cbop then
                  __cbop:FireServer(__fpbi)
    end
  end
end
function __bqor.spawnZombie(__6n56)
      print("[CMD] 召唤僵尸:", __6n56, "数量:", __bqor._state.amount)
  local __93xi =     game:GetService("ReplicatedStorage"):FindFirstChild("SpawnZombie")
  if __93xi then
            __93xi:InvokeServer(__6n56, __bqor._state.amount)
  end
end
function __bqor.skipWave()
      print("[CMD] 跳过波次")
  local __93xi =     game:GetService("ReplicatedStorage"):FindFirstChild("SkipWave")
  if __93xi then
            __93xi:InvokeServer()
  end
end
function __bqor.skipObjective()
      print("[CMD] 跳过目标")
  local __93xi =     game:GetService("ReplicatedStorage"):FindFirstChild("SkipObjective")
  if __93xi then
            __93xi:InvokeServer()
  end
end
function __bqor.toggleZombies(__hul8)
      print("[CMD] ToggleZ 僵尸:", __hul8)
  local __93xi =     game:GetService("ReplicatedStorage"):FindFirstChild("ToggleZombies")
  if __93xi then
            __93xi:InvokeServer(__hul8)
  end
end
function __bqor.toggleAI(__hul8)
      print("[CMD] ToggleThink AI:", __hul8)
  local __93xi =     game:GetService("ReplicatedStorage"):FindFirstChild("ToggleAI")
  if __93xi then
            __93xi:InvokeServer(__hul8)
  end
end
function __bqor.switchMap(__62k3)
      print("[CMD] 切换地图:", __62k3)
  local __93xi =     game:GetService("ReplicatedStorage"):FindFirstChild("SwitchMap")
  if __93xi then
            __93xi:InvokeServer(__62k3)
  end
end
function __bqor.killPlayer()
      print("[CMD] 击杀玩家")
  local __93xi =     game:GetService("ReplicatedStorage"):FindFirstChild("KillPlayer")
  if __93xi then
            __93xi:InvokeServer()
  end
end
function __bqor.respawnPlayer()
      print("[CMD] 重生玩家")
  local __93xi =     game:GetService("ReplicatedStorage"):FindFirstChild("RespawnPlayer")
  if __93xi then
            __93xi:InvokeServer()
  end
end
function __bqor.bringPlayer()
      print("[CMD] 传送玩家到身边")
  local __93xi =     game:GetService("ReplicatedStorage"):FindFirstChild("BringPlayer")
  if __93xi then
            __93xi:InvokeServer()
  end
end
function __bqor.teleportTo()
      print("[CMD] 传送到玩家位置")
  local __93xi =     game:GetService("ReplicatedStorage"):FindFirstChild("TeleportTo")
  if __93xi then
            __93xi:InvokeServer()
  end
end
function __bqor.warpTo()
      print("[CMD] 传送到坐标")
  local __93xi =     game:GetService("ReplicatedStorage"):FindFirstChild("WarpTo")
  if __93xi then
            __93xi:InvokeServer()
  end
end
function __bqor.setClass(__7sgu)
      print("[CMD] 更换职业:", __7sgu)
  local __93xi =     game:GetService("ReplicatedStorage"):FindFirstChild("SetClass")
  if __93xi then
            __93xi:InvokeServer(__7sgu)
  end
end
function __bqor.giveItem(__jqdo)
      print("[CMD] 给予物品:", __jqdo)
  local __93xi =     game:GetService("ReplicatedStorage"):FindFirstChild("GiveItem")
  if __93xi then
            __93xi:InvokeServer(__jqdo)
  end
end
_G.BFH.Core = _G.BFH.Core or {}
_G.BFH.Core.CMD = __bqor
return __bqor
