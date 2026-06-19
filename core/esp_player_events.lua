do
  local BFH={}
  BFH.DEBUG=false
  BFH.LOG_LEVEL=3
  local _hcwtUNiCD={"OFF","ERROR","WARN","INFO","DEBUG","TRACE"}
  function BFH.log(l,m,msg)
    if BFH.DEBUG and l<=BFH.LOG_LEVEL then print("[BFH]["..tostring(m).."]["..(_hcwtUNiCD[l+1]or"?").."] "..tostring(msg))end
  end
  function BFH.time(m,n,f)
    local s=os.clock();local ok,r=pcall(f);local c=(os.clock()-s)*1000
    if ok then BFH.log(3,m,n.." OK ("..string.format("%.1f",c).."ms)")
    else BFH.log(1,m,n.." FAIL: "..tostring(r).." ("..string.format("%.1f",c).."ms)")end
    return ok,r
  end
  local _C=_G.BFH.Core;_G.BFH=BFH;_G.BFH.Core=_C or {}
end
do
  local __9kwq = _G.BFH.Core.ESP
  if not __9kwq then
            warn("[玩家事件] 错误：未找到核心控制模块，请先注入 玩家_核心控制.lua")
    return
  end
  local Players =   game:GetService("Players")
  local __85mx = Players.LocalPlayer
  local function __bcw7()
            Players.PlayerAdded:Connect(function(p)
      if p.Character then
                        task.wait(0.5)
        if __9kwq._pUpdate then
                              __9kwq._pUpdate(p)
        end
      end
                  p.CharacterAdded:Connect(function()
                        task.wait(0.2)
        if __9kwq._pUpdate then
                              __9kwq._pUpdate(p)
        end
      end)
                  p.CharacterRemoving:Connect(function()
        if __9kwq._pDestroy then
                              __9kwq._pDestroy(p)
        end
      end)
    end)
    for __g9mz, __aaid in     ipairs(    Players:GetPlayers()) do
      if __aaid ~= __85mx then
                        __aaid.CharacterAdded:Connect(function()
                              task.wait(0.2)
          if __9kwq._pUpdate then
                                    __9kwq._pUpdate(__aaid)
          end
        end)
                        __aaid.CharacterRemoving:Connect(function()
          if __9kwq._pDestroy then
                                    __9kwq._pDestroy(__aaid)
          end
        end)
      end
    end
            Players.PlayerRemoving:Connect(function(__aaid)
      if __9kwq._pDestroy then
                        __9kwq._pDestroy(__aaid)
      end
    end)
            __85mx.CharacterAdded:Connect(function()
                  task.wait(0.5)
      if __9kwq._pRefresh then
                        __9kwq._pRefresh()
      end
    end)
  end
      __bcw7()
  _G.BFH.Core.ESP = __9kwq
end
