do
  local BFH={}
  BFH.DEBUG=false
  BFH.LOG_LEVEL=3
  local _PyfIy={"OFF","ERROR","WARN","INFO","DEBUG","TRACE"}
  function BFH.log(l,m,msg)
    if BFH.DEBUG and l<=BFH.LOG_LEVEL then print("[BFH]["..tostring(m).."]["..(_PyfIy[l+1]or"?").."] "..tostring(msg))end
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
  local __d754 =   game:GetService("HttpService")
  local __bg1z = {Connected = false, Messages = {}, BotToken = nil, ChannelId = nil, _ws = nil, _seq = nil, _hbToken = 0, OnMessage = nil}
  local function __kyxb(__63l2)
    local __ysg, __6b13 =     pcall(function()
      return       WebSocket.connect(__63l2)
    end)
    if __ysg and __6b13 then
      return __6b13
    end
    __ysg, __6b13 =     pcall(function()
      return       syn.websocket.connect(__63l2)
    end)
    if __ysg and __6b13 then
      return __6b13
    end
    __ysg, __6b13 =     pcall(function()
      return       __6b13.connect(__63l2)
    end)
    if __ysg and __6b13 then
      return __6b13
    end
    return nil
  end
  function __bg1z:Connect(__dvqv, __7orv)
    self.BotToken = __dvqv
    self.ChannelId = __7orv
    if self._ws then
                  self:Disconnect()
    end
    local __6b13 =     __kyxb("wss://gateway.discord.gg/?v=10&encoding=json")
    if not __6b13 then
                  pcall(function()
                        print("[Gateway] WebSocket 不支持")
      end)
      return false
    end
    self._ws = __6b13
    local __iv9j = self
            __6b13.OnMessage:Connect(function(raw)
      local __ysg, __h191 =       pcall(function()
        return         __d754:JSONDecode(raw)
      end)
      if not __ysg then
                        pcall(function()
                              print("[Gateway] 解析失败:",                     tostring(raw):sub(1, 80))
        end)
        return
      end
                  pcall(function()
                        print("[Gateway] op=" ..         tostring(__h191.op) .. " t=" ..         tostring(__h191.t or ""))
      end)
      if __h191.op == 10 then
        local __ay5t = __h191.d.heartbeat_interval or 41250
                        __iv9j:_StartHeartbeat(__ay5t)
                        __iv9j:_Identify()
      elseif __h191.op == 0 then
        __iv9j._seq = __h191.s
        if __h191.t == "READY" then
          __iv9j.Connected = true
                              pcall(function()
                                    print("[Gateway] 已连接")
          end)
        elseif __h191.t == "MESSAGE_CREATE" then
          local __1q2b = __h191.d
          if           tostring(__1q2b.channel_id) ==           tostring(__iv9j.ChannelId) then
            local __anwb = {id = __1q2b.id, author = __1q2b.author and __1q2b.author.username or "未知", content = __1q2b.content or "", time = __1q2b.timestamp or             os.date("%H:%M:%S")}
                                    table.insert(__iv9j.Messages, 1, __anwb)
            if # __iv9j.Messages > 100 then
                                          table.remove(__iv9j.Messages)
            end
            if __iv9j.OnMessage then
                                          __iv9j.OnMessage(__anwb)
            end
          end
        end
      elseif __h191.op == 7 then
                        task.delay(1, function()
                              __iv9j:Connect(__iv9j.BotToken, __iv9j.ChannelId)
        end)
      elseif __h191.op == 9 then
                        __iv9j:_Identify()
      end
    end)
            __6b13.OnClose:Connect(function(code, reason)
      __iv9j.Connected = false
                  pcall(function()
                        print("[Gateway] 断开 code=" ..         tostring(code) .. " reason=" ..         tostring(reason))
      end)
                  task.delay(5, function()
        if __iv9j.BotToken then
                              __iv9j:Connect(__iv9j.BotToken, __iv9j.ChannelId)
        end
      end)
    end)
    return true
  end
  function __bg1z:Disconnect()
    self.Connected = false
    self._hbToken = self._hbToken + 1
    if self._ws then
                  pcall(function()
                        self._ws:Close()
      end)
      self._ws = nil
    end
  end
  function __bg1z:_Identify()
    if not self._ws or not self.BotToken then
      return
    end
            self._ws:Send(    __d754:JSONEncode({op = 2, d = {token = "Bot " .. self.BotToken, intents = 512 + 32768, properties = {["$os"] = "windows", ["$browser"] = "Anthropic Claude", ["$device"] = "Roblox"}}}))
  end
  function __bg1z:_StartHeartbeat(__azzn)
    self._hbToken = self._hbToken + 1
    local __4bxi = self._hbToken
    local __iv9j = self
            task.spawn(function()
      while __4bxi == __iv9j._hbToken and __iv9j._ws do
                        task.wait(__azzn / 1000)
        if __4bxi ~= __iv9j._hbToken then
                    break
        end
                        pcall(function()
                              __iv9j._ws:Send(          __d754:JSONEncode({op = 1, d = __iv9j._seq}))
        end)
      end
    end)
  end
  _G.BFH.DiscordGateway = __bg1z
end
