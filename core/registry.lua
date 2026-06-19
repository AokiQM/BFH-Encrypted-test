do
  local BFH={}
  BFH.DEBUG=false
  BFH.LOG_LEVEL=3
  local _LWDOrE={"OFF","ERROR","WARN","INFO","DEBUG","TRACE"}
  function BFH.log(l,m,msg)
    if BFH.DEBUG and l<=BFH.LOG_LEVEL then print("[BFH]["..tostring(m).."]["..(_LWDOrE[l+1]or"?").."] "..tostring(msg))end
  end
  function BFH.time(m,n,f)
    local s=os.clock();local ok,r=pcall(f);local c=(os.clock()-s)*1000
    if ok then BFH.log(3,m,n.." OK ("..string.format("%.1f",c).."ms)")
    else BFH.log(1,m,n.." FAIL: "..tostring(r).." ("..string.format("%.1f",c).."ms)")end
    return ok,r
  end
  local _C=_G.BFH.Core;_G.BFH=BFH;_G.BFH.Core=_C or {}
end
local __f8qb = {}
__f8qb._features = {}
__f8qb._state = {}
function __f8qb.register(__c8an, __c2gh)
  local __hrxh = __f8qb._features[__c8an]
  if __hrxh and __hrxh.active then
    if __hrxh.__c2gh.onStop then
                  __hrxh.__c2gh.onStop()
    end
    __f8qb._state[__c8an] = false
  end
  __f8qb._features[__c8an] = {handlers = __c2gh, active = false}
end
function __f8qb.set(__c8an, __igjd)
  local __iyao = __f8qb._features[__c8an]
  if not __iyao then
            warn(    string.format("[BFH][Registry] key '%s' 未注册，无法设置状态为 %s",     tostring(__c8an),     tostring(__igjd)))
    return
  end
  if __igjd == __iyao.active then
    return
  end
  if __igjd then
    if __iyao.__c2gh.onStart then
                  __iyao.__c2gh.onStart()
    end
    __iyao.active = true
    __f8qb._state[__c8an] = true
  else
    if __iyao.__c2gh.onStop then
                  __iyao.__c2gh.onStop()
    end
    __iyao.active = false
    __f8qb._state[__c8an] = false
  end
end
function __f8qb.get(__c8an)
  local __iyao = __f8qb._features[__c8an]
  if not __iyao then
    return false
  end
  return __iyao.active
end
function __f8qb.cleanupAll()
  local __58c2 = {}
  for __c8an, __iyao in   pairs(__f8qb._features) do
    if __iyao.active then
                  table.insert(__58c2, __c8an)
    end
  end
  for __btf2, __c8an in   ipairs(__58c2) do
    local __iyao = __f8qb._features[__c8an]
    if __iyao and __iyao.active then
      if __iyao.__c2gh.onStop then
        local __dzsz, __h7a3 =         pcall(__iyao.__c2gh.onStop)
        if not __dzsz then
                              warn(          string.format("[BFH][Registry] cleanupAll: key '%s' onStop 出错: %s",           tostring(__c8an),           tostring(__h7a3)))
        end
      end
      __iyao.active = false
    end
  end
  __f8qb._features = {}
  __f8qb._state = {}
  return # __58c2
end
_G._BFH_STOP_ALL = _G._BFH_STOP_ALL or {}
table.insert(_G._BFH_STOP_ALL, function()
      __f8qb.cleanupAll()
end)
_G.BFH.Core = _G.BFH.Core or {}
_G.BFH.Core.REGISTRY = __f8qb
return __f8qb
