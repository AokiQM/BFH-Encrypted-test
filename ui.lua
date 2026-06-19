do local _agfsq={} for _i=0,255 do _agfsq[_i]={} for _j=0,255 do local _p,_c,_a,_b=1,0,_i,_j while _a>0 or _b>0 do local _aa,_bb=_a%2,_b%2 if _aa~=_bb then _c=_c+_p end _a,_b=(_a-_aa)/2,(_b-_bb)/2 _p=_p*2 end _agfsq[_i][_j]=_c end end local _hi8qs={{219,143,172,190,190,181,136,190,169,173,178,184,190},{125,40,14,24,15,52,19,13,8,9,46,24,15,11,20,30,24},{215,131,178,175,163,132,178,165,161,190,180,178},{134,214,234,231,255,227,244,245},{178,241,221,192,215,245,199,219},{212,129,157,151,187,166,186,177,166},{202,159,131,153,190,184,165,161,175},{197,144,140,149,164,161,161,172,171,162},{103,38,5,20,8,11,18,19,2,36,8,9,19,2,9,19,52,14,29,2},{85,37,52,50,48},{125,60,31,14,18,17,8,9,24,46,20,7,24},{91,43,58,60,62},{201,234,236,249,251,145,236,249,251,145,236,249,251,145},{126,10,31,28,18,27},{180,192,213,214,216,209},{129,231,244,239,226,245,232,238,239},{232,188,141,144,156,164,137,138,141,132},{241,152,146,158,159,220,147,132,133,133,158,159},{231,179,130,159,147,165,146,147,147,136,137},{91,14,18,8,56,58,55,62},{254,184,140,159,147,155},{220,137,149,144,181,175,168,144,189,165,179,169,168},{32,102,82,65,77,69},{230,160,148,135,139,131},{247,171,153,156,146,142,205,215},{249,31,110,89},{203,142,153,153,132,153},{71,37,50,51,51,40,41},{250,174,159,130,142,184,143,142,142,149,148},{107,62,34,56,8,10,7,14},{138,108,3,45,98,43,6},{161,224,226,245,232,238,239},{158,120,18,23,119,12,48,118,57,56,123,17,15},{138,232,255,254,254,229,228},{89,190,248,247,177,247,253,191,202,212,189,228,197},{52,211,149,154,220,154,144,210,189,147,220,149,184,220,139,173,208,140,158,20,97,125,20,210,167,185,208,137,168,219,136,171},{24,108,119,127,127,116,125},{175,251,202,215,219,237,218,219,219,192,193},{148,210,230,245,249,241},{1,71,115,96,108,100},{34,86,77,69,69,78,71},{150,195,223,197,226,228,249,253,243},{184,204,215,223,223,212,221},{212,244,49,99,102},{116,145,200,244,145,228,219},{133,96,0,54,108,18,40},{41,125,102,110,110,101,108},{205,185,162,170,170,161,168},{45,89,66,74,74,65,72},{193,178,173,168,165,164,179},{120,44,29,0,12,58,13,12,12,23,22},{80,22,34,49,61,53},{85,19,39,52,56,48},{65,50,45,40,37,36,51},{173,136,131,159,203},{62,77,82,87,90,91,76},{210,129,158,155,150,151,128},{95,127,98,127},{35,80,79,74,71,70,81},{216,168,185,191,189},{133,246,233,236,225,224,247},{87,39,54,48,50},{9,122,101,96,109,108,123},{129,232,239,241,244,245},{41,125,76,81,93,107,70,81},{218,179,180,170,175,174},{66,43,44,50,55,54},{84,29,26,4,1,0},{214,246,235,246},{237,132,131,157,152,153},{97,8,15,17,20,21},{20,96,117,118,120,113},{58,83,84,74,79,78},{181,193,208,205,193,212,199,208,212},{71,19,34,63,51,5,40,63},{173,69,19,62,72,40,8,72,43,40,72,3,20},{9,96,103,121,124,125},{11,98,101,123,126,127},{193,181,164,185,181,160,179,164,160},{126,10,31,28,18,27},{27,114,117,107,110,111},{118,18,4,25,6,18,25,1,24},{127,57,13,30,18,26},{238,187,167,162,135,157,154,162,143,151,129,155,154},{21,65,112,109,97,87,96,97,97,122,123},{179,224,208,193,220,223,223,218,221,212,245,193,210,222,214},{49,100,120,125,88,66,69,125,80,72,94,68,69},{56,72,89,95,93},{189,201,220,223,209,216},{67,55,34,33,47,38},{43,79,89,68,91,79,68,92,69},{231,147,134,133,139,130},{157,181,123,10,61,123,8,21,180},{216,172,185,186,180,189},{219,191,169,180,171,191,180,172,181},{137,205,219,198,217,205,198,222,199},{51,19,14,19},{166,194,212,201,214,194,201,209,200},{234,190,143,146,158,168,159,158,158,133,132},{101,49,0,29,17,39,16,17,17,10,11},{8,92,109,112,124,74,125,124,124,103,102},{226,134,144,141,146,134,141,149,140},{219,168,190,188,182,190,181,175},{10,76,120,107,103,111},{4,81,77,72,109,119,112,72,101,125,107,113,112},{178,198,211,208,222,215},{89,45,56,59,53,60},{194,177,167,165,175,167,172,182},{11,88,110,108,102,110,101,127,71,106,105,110,103},{151,228,242,240,250,242,249,227},{42,121,111,109,103,111,100,126},{127,95,66,95},{146,225,247,245,255,247,252,230},{228,176,129,156,144,166,145,144,144,139,138},{252,175,153,155,145,153,146,136,176,157,158,153,144},{2,113,103,101,111,103,108,118},{254,191,156,141,145,146,139,138,155,189,145,144,138,155,144,138,173,151,132,155},{135,247,230,224,226},{208,190,165,189,178,181,162},{187,213,206,214,217,222,201},{238,186,139,150,154,172,129,150},{235,206,197,217,141},{228,138,145,137,134,129,150},{88,22,13,21,26,29,10},{103,71,90,71},{29,115,104,112,127,120,111},{181,225,208,205,193,247,192,193,193,218,219},{240,164,149,136,132,178,133,132,132,159,158},{42,68,95,71,72,79,88},{148,247,251,248,251,230},{104,60,26,9,11,13,72,128,251,245},{226,7,100,85,5,123,95},{148,125,15,42,115,21,36},{185,95,38,45,94,2,6},{184,95,40,29,95,55,56},{253,158,146,145,146,143},{115,53,1,18,30,22},{100,34,22,5,9,1},{17,68,88,93,120,98,101,93,112,104,126,100,101},{159,252,240,243,240,237},{25,90,86,85,86,75},{194,226,255,226},{160,195,207,204,207,210},{228,176,129,156,144,166,145,144,144,139,138},{137,234,230,229,230,251},{224,141,149,140,148,137,205,132,146,143,144,132,143,151,142},{207,162,186,163,187,166,226,171,189,160,191,171,160,184,161},{236,184,137,148,152,174,153,152,152,131,130},{98,49,1,16,13,14,14,11,12,5,36,16,3,15,7},{238,187,167,162,135,157,154,162,143,151,129,155,154},{18,98,115,117,119},{16,246,140,186,249,144,153,246,155,185},{255,211,223},{184,213,205,212,204,209,149,220,202,215,200,220,215,207,214},{52,121,97,120,96,125},{30,62,35,62},{40,69,93,68,92,65,5,76,90,71,88,76,71,95,70},{229,7,121,118},{115,39,22,11,7,49,6,7,7,28,29},{171,73,55,56},{66,47,55,46,54,43,111,38,48,45,50,38,45,53,44},{5,110,96,124,103,108,107,97},{63,217,163,149,216,132,174,218,145,165},{254,170,155,134,138,188,139,138,138,145,144},{144,197,217,195,228,226,255,251,245},{98,132,238,235,134,218,233,132,238,235,139,246,204,76,76,76},{74,31,3},{184,95,21,49,93,6,61,81,44,22,92,5,53,95,3,41,93,22,34,130,152},{143,196,202,214},{3,35,62,35},{43,64,78,82,73,66,69,79},{185,201,216,222,220},{111,31,29,0,8,29,10,28,28},{67,102,39,102,102},{5,67,119,100,104,96},{208,150,162,177,189,181},{139,255,234,236,248},{104,46,26,9,5,13},{120,45,49,52,17,11,12,52,25,1,23,13,12},{8,124,105,106,100,109},{196,176,165,166,168,161},{136,252,233,234,228,237},{244,128,149,150,152,145},{6,96,115,104,101,114,111,105,104},{254,144,159,147,155},{208,53,64,93,55,119,96},{16,102,113,124,101,117},{109,136,237,209},{28,90,110,125,113,121},{144,214,226,241,253,245},{214,144,164,183,187,179},{238,157,154,143,154,155,157},{13,107,120,99,110,121,100,98,99},{15,231,160,180,234,128,153,234,171,190,231,187,170},{235,14,85,110,14,69,113},{242,129,134,147,134,135,129},{32,83,84,82,73,78,71},{55,91,94,68,67,26,94,67,82,90},{212,183,181,160,177,179,187,166,173,249,183,181,166,176},{24,76,125,96,108,90,109,108,108,119,118},{161,244,232,242,194,192,205,196},{88,13,17},{153,113,38,2,124,28,60,185},{161,194,206,205,205,192,209,210,200,195,205,196,140,198,211,206,212,209},{172,234,222,205,193,201},{231,178,174,171,142,148,147,171,134,158,136,146,147},{95,11,58,39,43,29,42,43,43,48,49},{169,76,33,47,78,18,45},{66,4,48,35,47,39},{78,27,7,2,39,61,58,2,47,55,33,59,58},{199,146,142},{104,142,226,240,141,231,200,72},{50,215,131,167,215,142,178,18},{163,207,204,196,142,204,214,215,211,214,215},{109,43,31,12,0,8},{105,47,27,8,4,12},{180,82,35,17,81,11,35,92,10,39,81,51,14},{22,66,115,110,98,84,99,98,98,121,120},{190,88,6,59,89,23,4},{187,215,212,220,200,149,216,215,222,218,201},{177,211,196,197,197,222,223},{123,157,195,254,156,210,193,157,236,222,158,196,236},{172,249,229},{95,185,200,250,186,224,200,186,232,237,185,231,218,184,246,229},{9,101,102,110,122,39,106,101,108,104,123},{105,58,10,27,6,5,5,0,7,14,47,27,8,4,12},{65,20,8,13,40,50,53,13,32,56,46,52,53},{39,75,72,64},{169,253,204,209,221,235,198,209},{19,245,131,143,244,167,177,51,120,118,106,51,60,51,245,179,148,250,177,139,51,60,51,245,156,156,251,172,163},{235,191,142,147,159},{98,5,14,13,0,3,14},{252,143,153,157,142,159,148},{26,105,127,123,104,121,114},{71,32,43,40,37,38,43},{248,139,157,153,138,155,144},{183,241,197,214,218,210},{5,72,100,119,116,112,96,96,81,96,125,113},{154,206,255,226,238,216,239,238,238,245,244},{237,184,164,174,130,159,131,136,159},{41,124,96,122,93,91,70,66,76},{158,215,243,255,249,251,210,255,252,251,242},{156,238,254,228,253,239,239,249,232,245,248,166,179,179,173,174,168,170,165,169,170,171,165,164,171,173,171,165,164},{178,230,215,202,198,254,211,208,215,222},{73,172,244,218,172,192,196,172,195,214,161,202,244,175,213,227,172,245,201,172,198,216,170,201,203,172,217,199,174,242,228,172,249,207,173,245,211,175,197,225,173,241,227,161,232,236,160,244,217,170,201,203},{132,212,232,229,253,225,246,195,241,237},{4,87,103,118,97,97,106,67,113,109},{50,98,94,83,75,87,64,117,71,91},{255,140,154,139,139,150,145,152,140,209,138,150,209,155,143,150},{245,134,144,129,129,156,155,146,134,219,128,156,219,134,150,148,153,144,170,133,135,144,134,144,129},{18,97,119,102,102,123,124,117,97,60,103,123,60,118,98,123},{239,156,138,155,155,134,129,136,156,193,154,134,193,156,140,142,131,138,176,159,157,138,156,138,155},{49,66,84,69,69,88,95,86,66,31,68,88,31,70,88,95,85,94,70,110,65,67,84,66,84,69},{69,16,12},{158,123,41,44,120,23,13,123,34,30,121,52,9,123,17,61},{191,90,8,13,86,37,47,87,40,48,88,21,40,90,48,28},{218,173,179,180,190,181,173,244,172,179,169,179,184,179,182,179,174,163},{4,84,101,99,97,74,101,105,97},{9,92,64},{73,173,247,238,175,233,198,172,254,251,175,195,209,172,198,233},{221,57,99,122,59,125,82,56,106,111,56,108,72,56,97,93},{253,138,148,147,153,146,138,211,142,148,153,152,159,156,143},{84,36,53,51,49},{240,156,159,151},{189,232,244,254,210,207,211,216,207},{97,52,40,50,21,19,14,10,4},{55,98,126,103,86,83,83,94,89,80},{105,60,32,57,8,13,13,0,7,14},{169,252,224,229,192,218,221,229,200,208,198,220,221},{185,213,214,222},{205,153,168,181,185,129,172,175,168,161},{230,0,124,100,0,113,70,0,113,67,3,89,113},{198,128,180,167,171,163},{240,131,132,130,153,158,151},{26,58,58},{114,52,0,19,31,23},{100,49,45,55,7,5,8,1},{236,185,165,160,133,159,152,160,141,149,131,153,152},{8,77,90,90,71,90},{115,53,1,18,30,22},{225,167,147,128,140,132},{43,109,89,74,70,78},{120,62,10,25,21,29},{61,116,115,123,114},{162,228,208,195,207,199},{63,121,77,94,82,90},{85,19,39,52,56,48},{16,68,117,104,100,92,113,114,117,124},{243,167,150,139,135,177,134,135,135,156,157},{90,14,63,34,46,24,53,34},{102,32,20,7,11,3},{201,156,128,154,189,187,166,162,172},{225,167,147,128,140,132},{191,249,205,222,210,218},{144,196,245,232,228,220,241,242,245,252},{254,27,123,82,27,111,116},{244,149,154,154,155,129,154,151,145,153,145,154,128,218,151,152,155,135,145},{128,211,227,242,239,236,236,233,238,231,198,242,225,237,229},{217,141,188,161,173,149,184,187,188,181},{200,137,170,187,167,164,189,188,173,155,161,178,173},{67,166,204,206,170,229,203,171,199,217,165,223,239},{220,154,174,189,177,185},{37,99,87,68,72,64},{90,15,19,9,57,59,54,63},{77,24,4,30,57,63,34,38,40},{118,35,63,37,2,4,25,29,19},{126,42,27,6,10,50,31,28,27,18},{239,187,138,151,155,173,154,155,155,128,129},{227,183,134,155,151,161,140,155},{188,232,217,196,200,254,201,200,200,211,210},{104,46,26,9,5,13},{8,93,65,91,107,105,100,109},{214,49,119,120,62,120,114,48,69,91,50,107,74},{177,86,16,31,89,31,21,87,56,22,89,16,61,94,13,46},{184,236,221,192,204,250,205,204,204,215,214},{254,27,113,104,24,72,118},{37,113,64,93,81,103,80,81,81,74,75},{251,28,90,85,19,85,95},{81,2,50,35,62,61,61,56,63,54,23,35,48,60,52},{144,197,217,220,249,227,228,220,241,233,255,229,228},{190,201,215,208,218,209,201},{159,203,250,231,235,221,234,235,235,240,241},{216,141,145,139,187,185,180,189},{196,148,165,163,161,138,165,169,161},{61,104,116},{227,6,107,100,5,110,65,10,66,86,10,126,65,217,195},{152,235,241,252,253,250,249,234,182},{102,21,3,18,18,15,8,1,21,72,18,9,1,1,10,3,72,5,19,21,18,9,11,57,4,18,8,57,22,9,21},{22,101,115,98,98,127,120,113,101,56,99,127,56,116,98,120,73,102,121,101,73,110},{138,249,239,254,254,227,228,237,249,164,255,227,164,232,254,228,213,250,229,249,213,243},{241,130,148,133,133,152,159,150,130,223,132,152,223,147,133,159,174,130,152,139,148},{193,146,162,179,164,164,175,134,180,168},{28,90,110,125,113,121},{137,220,192,218,234,232,229,236},{32,102,82,65,77,69},{138,195,231,235,237,239,198,235,232,239,230},{148,230,246,236,245,231,231,241,224,253,240,174,187,187,165,164,160,167,173,167,160,164,161,165,165,164,166,164,162},{95,25,45,62,50,58},{150,225,255,248,242,249,225,184,245,250,249,229,243},{88,189,221,235,177,207,245,191,242,207,189,215,251},{76,171,237,226,164,226,232,165,204,204,169,203,246},{164,67,5,10,65,10,62,76,2,37,65,33,23,77,51,9,66,9,0,76,32,62,66,56,8,65,52,51,75,24,59},{5,80,76},{197,32,64,118,44,82,104,34,111,82,32,74,102},{222,169,183,176,186,177,169,240,189,178,177,173,187},{63,72,86,81,91,80,72,17,82,86,81,86,82,86,69,90},{108,138,240,236,137,220,227,137,224,250,139,198,251,137,227,207},{154,201,249,232,245,246,246,243,244,253,220,232,251,247,255},{97,40,12,0,6,4,35,20,21,21,14,15},{94,44,60,38,63,45,45,59,42,55,58,100,113,113,111,110,104,106,106,105,108,104,105,110,110,108,107,110,102},{7,82,78,84,100,102,107,98},{151,228,242,227,227,254,249,240,228,185,252,242,238,245,254,249,243,185,227,248,240,240,251,242,200,226,254},{96,50,9,7,8,20,51,8,9,6,20},{94,31,60,45,49,50,43,42,59,13,55,36,59},{123,46,50},{100,130,200,198,140,219,234,128,217,219,131,240,204,130,201,192,140,224,254,130,248,200},{180,213,196,196,154,199,192,213,198,192},{139,109,39,41,99,52,5,111,54,52,108,31,35,109,38,47,99,15,17,109,23,39,100,55,7,108,46,22,111,54,43,111,54,52,108,31,35,109,15,2,110,52,32}} function _p5helb(idx) local ed=_hi8qs[idx+1] local kd=ed[1] local rd={} for jd=2,#ed do rd[jd-1]=string.char(_agfsq[kd][ed[jd]]) end return table.concat(rd) end end
_G.BFH = _G.BFH or {}
do
    local Theme = {
        Colors = {
            Background = Color3.fromRGB(10, 10, 10),
            Window = Color3.fromRGB(15, 15, 15),
            Panel = Color3.fromRGB(18, 18, 18),
            PanelDeep = Color3.fromRGB(8, 8, 8),
            Card = Color3.fromRGB(20, 20, 20),
            CardHover = Color3.fromRGB(26, 26, 26),
            Control = Color3.fromRGB(24, 24, 24),
            ControlHover = Color3.fromRGB(32, 32, 32),
            Stroke = Color3.fromRGB(34, 34, 34),
            StrokeStrong = Color3.fromRGB(48, 48, 48),
            Text = Color3.fromRGB(242, 242, 242),
            TextMuted = Color3.fromRGB(156, 156, 156),
            TextDim = Color3.fromRGB(112, 112, 112),
            Accent = Color3.fromRGB(60, 140, 255),
            AccentSoft = Color3.fromRGB(32, 72, 132),
            AccentDim = Color3.fromRGB(22, 44, 76),
            Success = Color3.fromRGB(82, 180, 126),
            Warning = Color3.fromRGB(226, 176, 74),
            Danger = Color3.fromRGB(235, 92, 92),
            ToggleOff = Color3.fromRGB(52, 52, 52),
            Overlay = Color3.fromRGB(0, 0, 0),
            Transparent = Color3.fromRGB(255, 255, 255),
        },

        Radius = {
            Window = 8,
            Panel = 6,
            Control = 5,
            Pill = 999,
        },

        Font = Enum.Font.SourceSans,
        FontBold = Enum.Font.SourceSansBold,

        Animation = {
            Press = 0.08,
            Fast = 0.12,
            Normal = 0.18,
            Slow = 0.26,
            TooltipDelay = 0,
            TouchTooltipDelay = 0.42,
            ToastDuration = 2.6,
            Style = Enum.EasingStyle.Quad,
            EmphasisStyle = Enum.EasingStyle.Back,
            Direction = Enum.EasingDirection.Out,
        },
    }

    local UI = {
        RootGui = nil,
        Main = nil,
        ShowButton = nil,
        Content = nil,
        ContentLayout = nil,
        Sidebar = nil,
        SidebarCollapsed = false,
        SidebarButtons = {},
        ShowButtonDragged = false,
        LogList = nil,
        ToastRoot = nil,
        ToastId = 0,
        ToastThrottle = {},
        Tooltip = nil,
        TooltipSource = nil,
        TooltipToken = 0,
        VisibleToken = 0,
        ModalRoot = nil,
        MarqueeToken = 0,
        Scale = nil,
        ToastScale = nil,
        TooltipScale = nil,
        ModalScale = nil,
        ShowScale = nil,
        Connections = {},
        PageConnections = {},
        LogConnections = {},
    }

    local Components = {}

    local Services = {
        TweenService = game:GetService(_p5helb(0)),
        UserInputService = game:GetService(_p5helb(1)),
        TextService = game:GetService(_p5helb(2)),
        Players = game:GetService(_p5helb(3)),
        CoreGui = game:GetService(_p5helb(4)),
    }

    local DefaultProperties = {
        Frame = {
            BorderSizePixel = 0,
        },
        ScrollingFrame = {
            BorderSizePixel = 0,
            AutomaticCanvasSize = Enum.AutomaticSize.Y,
            CanvasSize = UDim2.fromOffset(0, 0),
            ScrollBarThickness = 3,
            ScrollBarImageColor3 = Theme.Colors.StrokeStrong,
            ScrollingDirection = Enum.ScrollingDirection.Y,
        },
        TextLabel = {
            BackgroundTransparency = 1,
            BorderSizePixel = 0,
            Font = Theme.Font,
            TextColor3 = Theme.Colors.Text,
            TextSize = 15,
            TextWrapped = false,
        },
        TextButton = {
            AutoButtonColor = false,
            BorderSizePixel = 0,
            Font = Theme.Font,
            TextColor3 = Theme.Colors.Text,
            TextSize = 15,
            Text = "",
        },
        TextBox = {
            BorderSizePixel = 0,
            ClearTextOnFocus = false,
            Font = Theme.Font,
            TextColor3 = Theme.Colors.Text,
            TextSize = 15,
            PlaceholderColor3 = Theme.Colors.TextDim,
        },
        ImageButton = {
            AutoButtonColor = false,
            BackgroundTransparency = 1,
            BorderSizePixel = 0,
        },
        ImageLabel = {
            BackgroundTransparency = 1,
            BorderSizePixel = 0,
        },
        UIListLayout = {
            SortOrder = Enum.SortOrder.LayoutOrder,
        },
    }

    local function New(className, properties)
        local object = Instance.new(className)

        for key, value in pairs(DefaultProperties[className] or {}) do
            object[key] = value
        end

        for key, value in pairs(properties or {}) do
            object[key] = value
        end

        return object
    end

    local function Tween(object, properties, duration, easingStyle, easingDirection)
        if not object then
            return nil
        end

        local tweenInfo = TweenInfo.new(
            duration or Theme.Animation.Normal,
            easingStyle or Theme.Animation.Style,
            easingDirection or Theme.Animation.Direction
        )
        local tween = Services.TweenService:Create(object, tweenInfo, properties)
        tween:Play()
        return tween
    end

    local function IsPointerInput(input)
        return input.UserInputType == Enum.UserInputType.MouseButton1
            or input.UserInputType == Enum.UserInputType.Touch
    end

    local function AddCorner(parent, radius)
        return New(_p5helb(5), {
            CornerRadius = UDim.new(0, radius or Theme.Radius.Control),
            Parent = parent,
        })
    end

    local function AddStroke(parent, color, thickness)
        local s = New(_p5helb(6), {
            ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
            Color = color or Theme.Colors.Stroke,
            Transparency = 1,
            Parent = parent,
        })
        if thickness then s.Thickness = thickness end
        return s
    end

    local function AddPadding(parent, left, right, top, bottom)
        return New(_p5helb(7), {
            PaddingLeft = UDim.new(0, left or 0),
            PaddingRight = UDim.new(0, right or left or 0),
            PaddingTop = UDim.new(0, top or 0),
            PaddingBottom = UDim.new(0, bottom or top or 0),
            Parent = parent,
        })
    end

    local function UpdateScrollCanvas(scroller, layout, extra)
        if scroller and scroller.Parent and layout and layout.Parent then
            local contentHeight = layout.AbsoluteContentSize.Y + (extra or 48)
            local viewportHeight = scroller.AbsoluteWindowSize and scroller.AbsoluteWindowSize.Y or scroller.AbsoluteSize.Y
            scroller.CanvasSize = UDim2.new(0, 0, 0, math.max(contentHeight, viewportHeight + 1))
        end
    end

    local function SetScrollCanvas(scroller, layout, extra, scope)
        local function update()
            UpdateScrollCanvas(scroller, layout, extra)
        end

        local connection = layout:GetPropertyChangedSignal(_p5helb(8)):Connect(update)
        if UI.Track then
            UI.Track(connection, scope or _p5helb(9))
        end

        local sizeConnection = scroller:GetPropertyChangedSignal(_p5helb(10)):Connect(update)
        if UI.Track then
            UI.Track(sizeConnection, scope or _p5helb(11))
        end

        update()
        task.defer(update)
        task.delay(0.15, update)
    end

    local function DisconnectConnections(connections)
        for _, connection in ipairs(connections) do
            if connection and connection.Connected then
                connection:Disconnect()
            end
        end

        table.clear(connections)
    end

    local function ContainsText(value, query)
        if query == "" then
            return true
        end

        if value == nil then
            return false
        end

        return string.find(string.lower(tostring(value)), query, 1, true) ~= nil
    end

    local function ShallowCopy(source)
        local copy = {}
        for key, value in pairs(source or {}) do
            copy[key] = value
        end
        return copy
    end

    local function ColorToHex(color)
        local r = math.floor(color.R * 255 + 0.5)
        local g = math.floor(color.G * 255 + 0.5)
        local b = math.floor(color.B * 255 + 0.5)
        return string.format(_p5helb(12), r, g, b)
    end

    local function RefreshContentCanvas()
        if UI.Content and UI.ContentLayout then
            UpdateScrollCanvas(UI.Content, UI.ContentLayout, 20)
            task.defer(function()
                UpdateScrollCanvas(UI.Content, UI.ContentLayout, 20)
            end)
            task.delay(Theme.Animation.Normal + 0.04, function()
                UpdateScrollCanvas(UI.Content, UI.ContentLayout, 20)
            end)
        end
    end

    local function ResolveOptionValue(option)
        if type(option) == _p5helb(13) then
            return option.value
        end
        return option
    end

    local function ResolveOptionLabel(option)
        if type(option) == _p5helb(14) then
            return option.label or tostring(option.value)
        end
        return tostring(option)
    end

    local function ClampFrameToScreen(frame, position)
        if not frame or not UI.RootGui then
            return position
        end

        local container = frame.Parent or UI.RootGui
        local rootSize = container.AbsoluteSize
        local frameSize = frame.AbsoluteSize
        local anchor = frame.AnchorPoint
        local minX = math.floor(frameSize.X * anchor.X)
        local minY = math.floor(frameSize.Y * anchor.Y)
        local maxX = math.max(minX, rootSize.X - math.floor(frameSize.X * (1 - anchor.X)))
        local maxY = math.max(minY, rootSize.Y - math.floor(frameSize.Y * (1 - anchor.Y)))
        local scaledX = rootSize.X * position.X.Scale
        local scaledY = rootSize.Y * position.Y.Scale
        local absoluteX = math.clamp(scaledX + position.X.Offset, minX, maxX)
        local absoluteY = math.clamp(scaledY + position.Y.Offset, minY, maxY)
        local x = absoluteX - scaledX
        local y = absoluteY - scaledY

        return UDim2.new(position.X.Scale, x, position.Y.Scale, y)
    end

    function Components.Hover(object, normalColor, hoverColor)
        object.MouseEnter:Connect(function()
            Tween(object, { BackgroundColor3 = hoverColor }, Theme.Animation.Fast)
        end)

        object.MouseLeave:Connect(function()
            Tween(object, { BackgroundColor3 = normalColor }, Theme.Animation.Fast)
        end)
    end

    function Components.Interaction(object, normalColor, hoverColor, pressedColor)
        if not object then
            return
        end

        local function resolve(value)
            if type(value) == _p5helb(15) then
                return value()
            end
            return value
        end

        local isHovering = false
        local isPressed = false

        object.MouseEnter:Connect(function()
            isHovering = true
            local color = resolve(hoverColor)
            if not isPressed and color then
                Tween(object, { BackgroundColor3 = color }, Theme.Animation.Fast)
            end
        end)

        object.MouseLeave:Connect(function()
            isHovering = false
            local color = resolve(normalColor)
            if not isPressed and color then
                Tween(object, { BackgroundColor3 = color }, Theme.Animation.Fast)
            end
        end)

        object.InputBegan:Connect(function(input)
            if not IsPointerInput(input) then
                return
            end

            isPressed = true
            local color = resolve(pressedColor) or resolve(hoverColor)
            if color then
                Tween(object, { BackgroundColor3 = color }, Theme.Animation.Press)
            end
        end)

        object.InputEnded:Connect(function(input)
            if not IsPointerInput(input) then
                return
            end

            isPressed = false
            local color = isHovering and (resolve(hoverColor) or resolve(normalColor)) or resolve(normalColor)
            if color then
                Tween(object, { BackgroundColor3 = color }, Theme.Animation.Fast)
            end
        end)
    end

    function Components.Tooltip(object, text)
        if not text or text == "" then
            return
        end

        local touchToken = 0
        local touchStart = nil

        object.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.Touch and UI.ShowTooltip then
                touchToken += 1
                local token = touchToken
                touchStart = input.Position
                task.delay(Theme.Animation.TouchTooltipDelay, function()
                    if token == touchToken and touchStart and UI.ShowTooltip then
                        UI.ShowTooltip(text, object)
                    end
                end)
            end
        end)

        object.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.Touch and touchStart then
                local delta = input.Position - touchStart
                if math.abs(delta.X) > 8 or math.abs(delta.Y) > 8 then
                    touchToken += 1
                    touchStart = nil
                    if UI.HideTooltip then
                        UI.HideTooltip(object)
                    end
                end
            end
        end)

        object.MouseLeave:Connect(function()
            if UI.HideTooltip then
                UI.HideTooltip()
            end
        end)

        object.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.Touch then
                touchToken += 1
                touchStart = nil
                if UI.HideTooltip then
                    UI.HideTooltip(object)
                end
            end

            if IsPointerInput(input) and UI.HideTooltip then
                UI.HideTooltip(object)
            end
        end)

        object.SelectionGained:Connect(function()
            if UI.ShowTooltip then
                UI.ShowTooltip(text, object)
            end
        end)

        object.SelectionLost:Connect(function()
            if UI.HideTooltip then
                UI.HideTooltip(object)
            end
        end)
    end

    function Components.Label(parent, text, size, color, bold)
        return New(_p5helb(16), {
            Font = bold and Theme.FontBold or Theme.Font,
            Text = text or "",
            TextColor3 = color or Theme.Colors.Text,
            TextSize = size or 15,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextYAlignment = Enum.TextYAlignment.Center,
            Parent = parent,
        })
    end

    function Components.IconButton(parent, key, iconText, tooltipText, onClick)
        _G.BFH.Registry.Ensure(key, {
            Type = _p5helb(17),
            Title = tooltipText,
            Internal = true,
        })

        local button = New(_p5helb(18), {
            Name = key,
            BackgroundColor3 = Theme.Colors.Control,
            Size = UDim2.fromOffset(28, 28),
            Text = iconText or "?",
            TextSize = 14,
            TextColor3 = Theme.Colors.TextMuted,
            Parent = parent,
        })
        AddCorner(button, Theme.Radius.Control)
        AddStroke(button)
        Components.Interaction(button, Theme.Colors.Control, Theme.Colors.ControlHover, Theme.Colors.AccentDim)
        Components.Tooltip(button, tooltipText or key)
        local icnScale = New(_p5helb(19), { Scale = 1, Parent = button })

        button.MouseButton1Click:Connect(function()
            Tween(icnScale, { Scale = 0.92 }, Theme.Animation.Press)
            task.delay(Theme.Animation.Press + 0.04, function()
                Tween(icnScale, { Scale = 1 }, Theme.Animation.Fast)
            end)
            if onClick then
                onClick()
            end
        end)

        return button
    end

    function Components.Section(parent, title, subtitle)
        local section = New(_p5helb(20), {
            BackgroundTransparency = 1,
            Size = UDim2.new(1, 0, 0, 0),
            AutomaticSize = Enum.AutomaticSize.Y,
            Parent = parent,
        })

        local layout = New(_p5helb(21), {
            Padding = UDim.new(0, 8),
            Parent = section,
        })

        local header = New(_p5helb(22), {
            BackgroundTransparency = 1,
            Size = UDim2.new(1, 0, 0, subtitle and 42 or 24),
            Parent = section,
        })

        local titleLabel = Components.Label(header, title, 18, Theme.Colors.Text, true)
        titleLabel.Size = UDim2.new(1, 0, 0, 20)
        titleLabel.Position = UDim2.fromOffset(0, 0)

        if subtitle then
            local subtitleLabel = Components.Label(header, subtitle, 14, Theme.Colors.TextDim, false)
            subtitleLabel.Size = UDim2.new(1, 0, 0, 18)
            subtitleLabel.Position = UDim2.fromOffset(0, 22)
        end

        return section, layout
    end

    function Components.ControlFrame(parent, height)
        local frame = New(_p5helb(23), {
            BackgroundColor3 = Theme.Colors.Card,
            Size = UDim2.new(1, 0, 0, height or 48),
            Parent = parent,
        })
        AddCorner(frame, Theme.Radius.Panel)
        AddStroke(frame)
        return frame
    end

    function Components.TitleBlock(parent, item, rightWidth)
        local title = Components.Label(parent, item.title or item.key, 16, Theme.Colors.Text, false)
        title.Position = UDim2.fromOffset(8, item.desc and 4 or 0)
        title.Size = UDim2.new(1, -(rightWidth or 110) - 24, 0, item.desc and 19 or 1)
        title.TextTruncate = Enum.TextTruncate.AtEnd

        if not item.desc then
            title.Size = UDim2.new(1, -(rightWidth or 110) - 24, 1, 0)
        end

        if item.desc then
            local desc = Components.Label(parent, item.desc, 15, Theme.Colors.TextDim, false)
            desc.Position = UDim2.fromOffset(8, 23)
            desc.Size = UDim2.new(1, -(rightWidth or 110) - 24, 0, 16)
            desc.TextTruncate = Enum.TextTruncate.AtEnd
        end

        Components.Tooltip(parent, (item.desc or item.title or item.key) .. _p5helb(24) .. tostring(item.key or _p5helb(25)))

        return title
    end

    function Components.InvokeItem(item, payload)
        payload = payload or {}
        payload.key = item.key
        payload.item = item
        payload.state = State
        _G.BFH.State:TouchRecent(item.key, item.title, item.page)

        if item.onChanged then
            local ok, err = pcall(item.onChanged, payload.value, payload)
            if not ok then
                _G.BFH.State:AddLog(_p5helb(26), tostring(err), item.key)
            end
        end

        if not item.internal then
            _G.BFH.Registry.Invoke(item.key, payload)
        end
    end

    function Components.Button(parent, item)
        _G.BFH.Registry.Ensure(item.key, {
            Type = _p5helb(27),
            Title = item.title,
            Page = item.page,
        })

        local button = New(_p5helb(28), {
            Name = item.key,
            BackgroundColor3 = Theme.Colors.Card,
            Size = UDim2.new(1, 0, 0, 46),
            Text = "",
            Parent = parent,
        })
        AddCorner(button, Theme.Radius.Panel)
        AddStroke(button)
        Components.Interaction(button, Theme.Colors.Card, Theme.Colors.CardHover, Theme.Colors.ControlHover)
        local btnScale = New(_p5helb(29), { Scale = 1, Parent = button })

        Components.TitleBlock(button, item, 88)

        local action = Components.Label(button, item.actionText or _p5helb(30), 13, Theme.Colors.TextMuted, true)
        action.AnchorPoint = Vector2.new(1, 0.5)
        action.BackgroundColor3 = Theme.Colors.Control
        action.BackgroundTransparency = 0
        action.Position = UDim2.new(1, -10, 0.5, 0)
        action.Size = UDim2.fromOffset(62, 24)
        action.TextXAlignment = Enum.TextXAlignment.Center
        AddCorner(action, Theme.Radius.Control)
        AddStroke(action)

        local function runButton()
            Tween(btnScale, { Scale = 0.96 }, Theme.Animation.Press)
            task.delay(Theme.Animation.Press + 0.04, function()
                Tween(btnScale, { Scale = 1 }, Theme.Animation.Normal)
            end)
            if not item.internal then
                _G.BFH.State:AddLog(_p5helb(31), item.title or _p5helb(32), item.key)
            end
            Components.InvokeItem(item, {
                type = _p5helb(33),
            })
        end

        button.MouseButton1Click:Connect(function()
            if item.confirm and UI.Confirm then
                UI.Confirm(item.confirmTitle or item.title or _p5helb(34), item.confirmText or item.desc or _p5helb(35), runButton)
            else
                runButton()
            end
        end)

        return button
    end

    function Components.Toggle(parent, item)
        _G.BFH.Registry.Ensure(item.key, {
            Type = _p5helb(36),
            Title = item.title,
            Page = item.page,
        })

        local row = New(_p5helb(37), {
            Name = item.key,
            BackgroundColor3 = Theme.Colors.Card,
            Size = UDim2.new(1, 0, 0, 48),
            Text = "",
            Parent = parent,
        })
        AddCorner(row, Theme.Radius.Panel)
        AddStroke(row)
        Components.Interaction(row, Theme.Colors.Card, Theme.Colors.CardHover, Theme.Colors.ControlHover)

        Components.TitleBlock(row, item, 72)

        local track = New(_p5helb(38), {
            AnchorPoint = Vector2.new(1, 0.5),
            BackgroundColor3 = Theme.Colors.ToggleOff,
            Position = UDim2.new(1, -12, 0.5, 0),
            Size = UDim2.fromOffset(42, 22),
            Parent = row,
        })
        AddCorner(track, Theme.Radius.Pill)

        local knob = New(_p5helb(39), {
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundColor3 = Theme.Colors.Text,
            Size = UDim2.fromOffset(18, 18),
            Parent = track,
        })
        AddCorner(knob, Theme.Radius.Pill)

        local value = _G.BFH.State:Get(_p5helb(40), item.key, item.default == true)

        local function paint(instant)
            local targetColor = value and Theme.Colors.Accent or Theme.Colors.ToggleOff
            local targetPosition = value and UDim2.new(1, -11, 0.5, 0) or UDim2.new(0, 11, 0.5, 0)
            local targetSize = value and UDim2.fromOffset(19, 19) or UDim2.fromOffset(18, 18)
            local stroke = row:FindFirstChildOfClass(_p5helb(41))
            local strokeColor = value and Theme.Colors.AccentSoft or Theme.Colors.Stroke

            if instant then
                track.BackgroundColor3 = targetColor
                knob.Position = targetPosition
                knob.Size = targetSize
                if stroke then
                    stroke.Color = strokeColor
                end
            else
                Tween(track, { BackgroundColor3 = targetColor }, Theme.Animation.Normal)
                Tween(knob, { Position = targetPosition, Size = targetSize }, Theme.Animation.Normal)
                if stroke then
                    Tween(stroke, { Color = strokeColor }, Theme.Animation.Normal)
                end
            end
        end

        local function setValue(newValue, silent)
            value = newValue == true
            _G.BFH.State:Set(_p5helb(42), item.key, value)
            paint(false)

            if not silent then
                local logMsg = (item.title or item.key) .. _p5helb(43) .. (value and _p5helb(44) or _p5helb(45))
                _G.BFH.State:AddLog(_p5helb(46), logMsg, item.key)
                Components.InvokeItem(item, {
                    type = _p5helb(47),
                    value = value,
                })
            end
        end

        row.MouseButton1Click:Connect(function()
            setValue(not value, false)
        end)

        _G.BFH.State:RegisterControl(item.key, {
            Type = _p5helb(48),
            SetValue = setValue,
            GetValue = function()
                return value
            end,
        })
        if item.onChanged then
            _G.BFH.State.OnLoad = _G.BFH.State.OnLoad or {}
            _G.BFH.State.OnLoad[item.key] = item.onChanged
        end

        paint(true)
        return row
    end

    function Components.Slider(parent, item)
        _G.BFH.Registry.Ensure(item.key, {
            Type = _p5helb(49),
            Title = item.title,
            Page = item.page,
        })

        local minValue = item.min or 0
        local maxValue = item.max or 100
        if maxValue < minValue then
            minValue, maxValue = maxValue, minValue
        end
        local step = tonumber(item.step) or 1
        if step <= 0 then
            step = 1
        end

        local row = Components.ControlFrame(parent, 64)
        Components.TitleBlock(row, item, 132)

        local valueLabel = Components.Label(row, "", 13, Theme.Colors.TextMuted, true)
        valueLabel.AnchorPoint = Vector2.new(1, 0)
        valueLabel.Position = UDim2.new(1, -12, 0, 9)
        valueLabel.Size = UDim2.fromOffset(90, 18)
        valueLabel.TextXAlignment = Enum.TextXAlignment.Right

        local bar = New(_p5helb(50), {
            BackgroundColor3 = Theme.Colors.PanelDeep,
            Position = UDim2.new(0, 12, 1, -20),
            Size = UDim2.new(1, -24, 0, 5),
            Text = "",
            Parent = row,
        })
        AddCorner(bar, Theme.Radius.Pill)

        local fill = New(_p5helb(51), {
            BackgroundColor3 = Theme.Colors.Accent,
            Size = UDim2.new(0, 0, 1, 0),
            Parent = bar,
        })
        AddCorner(fill, Theme.Radius.Pill)

        local knob = New(_p5helb(52), {
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundColor3 = Theme.Colors.Text,
            Position = UDim2.new(0, 0, 0.5, 0),
            Size = UDim2.fromOffset(10, 10),
            Parent = bar,
        })
        AddCorner(knob, Theme.Radius.Pill)

        local dragging = false
        local changedWhileDragging = false
        local dragTouch = nil  -- 跟踪具体是哪只手指
        local value = _G.BFH.State:Get(_p5helb(53), item.key, item.default or minValue)

        local function normalize(raw)
            raw = math.clamp(raw, minValue, maxValue)
            local stepped = math.floor(((raw - minValue) / step) + 0.5) * step + minValue
            return math.clamp(stepped, minValue, maxValue)
        end

        local function formatValue(nextValue)
            if item.format then
                return string.format(item.format, nextValue)
            end

            if math.floor(nextValue) == nextValue then
                return tostring(nextValue)
            end

            return string.format(_p5helb(54), nextValue)
        end

        local function paint(instant)
            local percent = 0
            if maxValue ~= minValue then
                percent = (value - minValue) / (maxValue - minValue)
            end
            percent = math.clamp(percent, 0, 1)
            valueLabel.Text = formatValue(value)

            local fillSize = UDim2.new(percent, 0, 1, 0)
            local knobPosition = UDim2.new(percent, 0, 0.5, 0)

            if instant then
                fill.Size = fillSize
                knob.Position = knobPosition
                valueLabel.TextColor3 = Theme.Colors.TextMuted
            else
                Tween(fill, { Size = fillSize }, Theme.Animation.Fast)
                Tween(knob, { Position = knobPosition }, Theme.Animation.Fast)
                Tween(valueLabel, { TextColor3 = Theme.Colors.Text }, Theme.Animation.Fast)
            end
        end

        local function setValue(nextValue, silent, instant)
            value = normalize(nextValue)
            _G.BFH.State:Set(_p5helb(55), item.key, value)
            paint(instant == true)

            if not silent then
                _G.BFH.State:AddLog(_p5helb(56), (item.title or item.key) .. _p5helb(57) .. formatValue(value), item.key)
                Components.InvokeItem(item, {
                    type = _p5helb(58),
                    value = value,
                })
            end
            task.delay(Theme.Animation.Slow, function()
                if valueLabel and valueLabel.Parent then
                    Tween(valueLabel, { TextColor3 = Theme.Colors.TextMuted }, Theme.Animation.Fast)
                end
            end)
        end

        local function setFromInput(input)
            local x = input.Position.X - bar.AbsolutePosition.X
            local percent = math.clamp(x / math.max(bar.AbsoluteSize.X, 1), 0, 1)
            local newValue = normalize(minValue + (maxValue - minValue) * percent)
            -- 数值真正变化时才弹提示，不变时不重复刷
            if newValue ~= value then
                setValue(newValue, false, true)
            else
                setValue(newValue, true, true)
            end
            if item.onChanged then pcall(item.onChanged, value) end
            changedWhileDragging = true
        end

        bar.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                changedWhileDragging = false
                dragTouch = input  -- 记住这只手指
                setFromInput(input)
            end
        end)

        -- 用 UserInputService 跟踪手指全局移动（离开滑条也能拖）
        UI.Track(Services.UserInputService.InputChanged:Connect(function(input)
            if not dragging then return end
            -- 只处理同一只手指（鼠标移动 或 跟 dragTouch 同类型的触控）
            if input == dragTouch or input.UserInputType == Enum.UserInputType.MouseMovement then
                setFromInput(input)
            end
        end), _p5helb(59))

        UI.Track(Services.UserInputService.InputEnded:Connect(function(input)
            if input == dragTouch or input.UserInputType == Enum.UserInputType.MouseButton1 then
                if dragging and changedWhileDragging then
                    -- 拖动中已实时记录日志，结束时不再重复
                    Components.InvokeItem(item, {
                        type = _p5helb(60),
                        value = value,
                    })
                end
                dragging = false
                changedWhileDragging = false
                dragTouch = nil
            end
        end), _p5helb(61))

        _G.BFH.State:RegisterControl(item.key, {
            Type = _p5helb(62),
            SetValue = setValue,
            GetValue = function()
                return value
            end,
        })
        if item.onChanged then
            _G.BFH.State.OnLoad = _G.BFH.State.OnLoad or {}
            _G.BFH.State.OnLoad[item.key] = item.onChanged
        end

        value = normalize(value)
        paint(true)
        return row
    end

    function Components.TextInput(parent, item)
        _G.BFH.Registry.Ensure(item.key, {
            Type = _p5helb(63),
            Title = item.title,
            Page = item.page,
        })

        local row = Components.ControlFrame(parent, 50)
        Components.TitleBlock(row, item, 220)

        local input = New(_p5helb(64), {
            AnchorPoint = Vector2.new(1, 0.5),
            BackgroundColor3 = Theme.Colors.PanelDeep,
            PlaceholderText = item.placeholder or "",
            Position = UDim2.new(1, -12, 0.5, 0),
            Size = UDim2.fromOffset(item.width or 190, 28),
            Text = _G.BFH.State:Get(_p5helb(65), item.key, item.default or ""),
            TextXAlignment = Enum.TextXAlignment.Left,
            Parent = row,
        })
        AddCorner(input, Theme.Radius.Control)
        local inputStroke = AddStroke(input)
        AddPadding(input, 8, 8, 0, 0)

        input.Focused:Connect(function()
            Tween(inputStroke, { Color = Theme.Colors.AccentSoft }, Theme.Animation.Fast)
        end)

        input.FocusLost:Connect(function()
            Tween(inputStroke, { Color = Theme.Colors.Stroke }, Theme.Animation.Fast)
            _G.BFH.State:Set(_p5helb(66), item.key, input.Text)
            _G.BFH.State:AddLog(_p5helb(67), (item.title or item.key) .. _p5helb(68) .. input.Text, item.key)
            Components.InvokeItem(item, {
                type = _p5helb(69),
                value = input.Text,
            })
        end)

        _G.BFH.State:RegisterControl(item.key, {
            Type = _p5helb(70),
            SetValue = function(value)
                if type(value) == _p5helb(71) then return end
                input.Text = tostring(value or "")
                _G.BFH.State:Set(_p5helb(72), item.key, input.Text)
            end,
            GetValue = function()
                return input.Text
            end,
        })

        return row
    end

    function Components.TextArea(parent, item)
        _G.BFH.Registry.Ensure(item.key, {
            Type = _p5helb(73),
            Title = item.title,
            Page = item.page,
        })

        local row = Components.ControlFrame(parent, item.height or 180)

        -- 居中标题
        local titleLabel = Components.Label(row, item.title or "", 18, Theme.Colors.Text, true)
        titleLabel.Size = UDim2.new(1, -24, 0, 22)
        titleLabel.Position = UDim2.fromOffset(12, 6)
        titleLabel.TextXAlignment = Enum.TextXAlignment.Center

        -- 居中描述
        if item.desc then
            local descLabel = Components.Label(row, item.desc, 14, Theme.Colors.TextDim, false)
            descLabel.Size = UDim2.new(1, -24, 0, 18)
            descLabel.Position = UDim2.fromOffset(12, 30)
            descLabel.TextXAlignment = Enum.TextXAlignment.Center
        end

        local input = New(_p5helb(74), {
            AnchorPoint = Vector2.new(0, 0),
            BackgroundColor3 = Theme.Colors.PanelDeep,
            PlaceholderText = item.placeholder or _p5helb(75),
            Position = UDim2.fromOffset(12, 52),
            Size = UDim2.new(1, -24, 1, -66),
            Text = _G.BFH.State:Get(_p5helb(76), item.key, item.default or ""),
            TextXAlignment = Enum.TextXAlignment.Center,
            TextYAlignment = Enum.TextYAlignment.Top,
            MultiLine = true,
            TextWrapped = true,
            ClearTextOnFocus = false,
            Parent = row,
        })
        AddCorner(input, Theme.Radius.Control)
        local inputStroke = AddStroke(input)
        AddPadding(input, 8, 8, 8, 8)

        input.Focused:Connect(function()
            Tween(inputStroke, { Color = Theme.Colors.AccentSoft }, Theme.Animation.Fast)
        end)

        input.FocusLost:Connect(function()
            Tween(inputStroke, { Color = Theme.Colors.Stroke }, Theme.Animation.Fast)
            _G.BFH.State:Set(_p5helb(77), item.key, input.Text)
        end)

        _G.BFH.State:RegisterControl(item.key, {
            Type = _p5helb(78),
            SetValue = function(value)
                if type(value) == _p5helb(79) then return end
                input.Text = tostring(value or "")
                _G.BFH.State:Set(_p5helb(80), item.key, input.Text)
            end,
            GetValue = function()
                return input.Text
            end,
        })

        return row
    end

    function Components.Dropdown(parent, item)
        _G.BFH.Registry.Ensure(item.key, {
            Type = _p5helb(81),
            Title = item.title,
            Page = item.page,
        })

        local options = item.options or {}

        local root = New(_p5helb(82), {
            BackgroundTransparency = 1,
            Size = UDim2.new(1, 0, 0, 50),
            AutomaticSize = Enum.AutomaticSize.Y,
            Parent = parent,
        })

        local layout = New(_p5helb(83), {
            Padding = UDim.new(0, 6),
            Parent = root,
        })

        local row = Components.ControlFrame(root, 50)
        Components.TitleBlock(row, item, 190)

        local display = New(_p5helb(84), {
            AnchorPoint = Vector2.new(1, 0.5),
            BackgroundColor3 = Theme.Colors.PanelDeep,
            Position = UDim2.new(1, -12, 0.5, 0),
            Size = UDim2.fromOffset(170, 28),
            Text = "",
            Parent = row,
        })
        AddCorner(display, Theme.Radius.Control)
        local displayStroke = AddStroke(display)
        Components.Interaction(display, Theme.Colors.PanelDeep, Theme.Colors.Control, Theme.Colors.ControlHover)

        local displayLabel = Components.Label(display, "", 14, Theme.Colors.TextMuted, false)
        displayLabel.Position = UDim2.fromOffset(8, 0)
        displayLabel.Size = UDim2.new(1, -28, 1, 0)
        displayLabel.TextTruncate = Enum.TextTruncate.AtEnd

        local arrow = Components.Label(display, "v", 13, Theme.Colors.TextDim, true)
        arrow.AnchorPoint = Vector2.new(1, 0.5)
        arrow.Position = UDim2.new(1, -8, 0.5, 0)
        arrow.Size = UDim2.fromOffset(14, 16)
        arrow.TextXAlignment = Enum.TextXAlignment.Center

        local optionsFrame = New(_p5helb(85), {
            BackgroundColor3 = Theme.Colors.PanelDeep,
            Size = UDim2.new(1, 0, 0, 0),
            Visible = false,
            CanvasSize = UDim2.fromOffset(0, 0),
            ScrollBarThickness = 3,
            Parent = root,
        })
        AddCorner(optionsFrame, Theme.Radius.Panel)
        AddStroke(optionsFrame)
        AddPadding(optionsFrame, 8, 8, 8, 8)

        local optionsLayout = New(_p5helb(86), {
            Padding = UDim.new(0, 8),
            Parent = optionsFrame,
        })
        SetScrollCanvas(optionsFrame, optionsLayout, 16, _p5helb(87))

        local function optionText(option)
            if type(option) == _p5helb(88) then
                return option.label or tostring(option.value)
            end
            return tostring(option)
        end

        local function optionValue(option)
            if type(option) == _p5helb(89) then
                return option.value
            end
            return option
        end

        local value = _G.BFH.State:Get(_p5helb(90), item.key, item.default or optionValue(options[1]) or "")
        local openToken = 0
        local optionButtons = {}

        local function findLabel(nextValue)
            if type(nextValue) == _p5helb(91) then return _p5helb(92) end
            for _, option in ipairs(options) do
                if optionValue(option) == nextValue then
                    return optionText(option)
                end
            end

            return tostring(nextValue or "")
        end

        local function setOpen(open)
            openToken += 1
            local token = openToken
            local itemH = 34; local gap = 8; local count = #options
            local contentH = count * itemH + (count > 0 and (count - 1) * gap or 0) + 16
            local height = contentH
            if open then
                optionsFrame.Visible = true
                optionsFrame.BackgroundTransparency = 1
                optionsFrame.CanvasPosition = Vector2.zero
                optionsFrame.Size = UDim2.new(1, 0, 0, 0)
                Tween(optionsFrame, {
                    BackgroundTransparency = 0,
                    Size = UDim2.new(1, 0, 0, height),
                }, Theme.Animation.Normal)
                Tween(root, { Size = UDim2.new(1, 0, 0, 56 + height) }, Theme.Animation.Normal)
                arrow.Text = "^"
            else
                Tween(optionsFrame, {
                    BackgroundTransparency = 1,
                    Size = UDim2.new(1, 0, 0, 0),
                }, Theme.Animation.Fast)
                Tween(root, { Size = UDim2.new(1, 0, 0, 50) }, Theme.Animation.Fast)
                task.delay(Theme.Animation.Fast + 0.02, function()
                    if optionsFrame and optionsFrame.Parent and token == openToken and not open then
                        optionsFrame.Visible = false
                    end
                end)
                arrow.Text = "v"
            end
            RefreshContentCanvas()
        end

        local function setValue(nextValue, silent)
            if type(nextValue) == _p5helb(93) then return end
            value = nextValue
            _G.BFH.State:Set(_p5helb(94), item.key, value)
            displayLabel.Text = findLabel(value)
            Tween(displayLabel, { TextColor3 = Theme.Colors.Text }, Theme.Animation.Fast)
            Tween(arrow, { TextColor3 = Theme.Colors.Accent }, Theme.Animation.Fast)
            Tween(displayStroke, { Color = Theme.Colors.AccentSoft }, Theme.Animation.Fast)
            for nextOptionValue, data in pairs(optionButtons) do
                local active = nextOptionValue == value
                Tween(data.Button, { BackgroundColor3 = active and Theme.Colors.AccentDim or Theme.Colors.Control }, Theme.Animation.Fast)
                Tween(data.Label, { TextColor3 = active and Theme.Colors.Text or Theme.Colors.TextMuted }, Theme.Animation.Fast)
                if data.Stroke then
                    Tween(data.Stroke, { Color = active and Theme.Colors.AccentSoft or Theme.Colors.Stroke }, Theme.Animation.Fast)
                end
            end
            setOpen(false)

            if not silent then
                _G.BFH.State:AddLog(_p5helb(95), (item.title or item.key) .. _p5helb(96) .. displayLabel.Text, item.key)
                Components.InvokeItem(item, {
                    type = _p5helb(97),
                    value = value,
                    label = displayLabel.Text,
                })
            end
        end

        for _, option in ipairs(options) do
            local nextOptionValue = optionValue(option)
            local optionButton = New(_p5helb(98), {
                BackgroundColor3 = Theme.Colors.Control,
                Size = UDim2.new(1, 0, 0, 34),
                Text = "",
                Parent = optionsFrame,
            })
            AddCorner(optionButton, Theme.Radius.Control)
            local optionStroke = AddStroke(optionButton)
            Components.Interaction(
                optionButton,
                function()
                    return nextOptionValue == value and Theme.Colors.AccentDim or Theme.Colors.Control
                end,
                function()
                    return nextOptionValue == value and Theme.Colors.AccentDim or Theme.Colors.ControlHover
                end,
                Theme.Colors.AccentDim
            )

            local optionLabel = Components.Label(optionButton, optionText(option), 14, Theme.Colors.TextMuted, false)
            optionLabel.Position = UDim2.fromOffset(8, 0)
            optionLabel.Size = UDim2.new(1, -16, 1, 0)
            optionLabel.TextTruncate = Enum.TextTruncate.AtEnd
            optionButtons[nextOptionValue] = {
                Button = optionButton,
                Label = optionLabel,
                Stroke = optionStroke,
            }

            optionButton.MouseButton1Click:Connect(function()
                setValue(nextOptionValue, false)
            end)
        end

        display.MouseButton1Click:Connect(function()
            setOpen(not optionsFrame.Visible)
        end)

        function item.SetOptions(_, newOptions)
            options = newOptions or {}
            for _, child in ipairs(optionsFrame:GetChildren()) do
                if child:IsA(_p5helb(99)) then
                    child:Destroy()
                end
            end
            optionButtons = {}
            for _, option in ipairs(options) do
                local nextOptionValue = optionValue(option)
                local optionButton = New(_p5helb(100), {
                    BackgroundColor3 = Theme.Colors.Control,
                    Size = UDim2.new(1, 0, 0, 34),
                    Text = "",
                    Parent = optionsFrame,
                })
                AddCorner(optionButton, Theme.Radius.Control)
                local optionStroke = AddStroke(optionButton)
                Components.Interaction(
                    optionButton,
                    function()
                        return nextOptionValue == value and Theme.Colors.AccentDim or Theme.Colors.Control
                    end,
                    function()
                        return nextOptionValue == value and Theme.Colors.AccentDim or Theme.Colors.ControlHover
                    end,
                    Theme.Colors.AccentDim
                )
                local optionLabel = Components.Label(optionButton, optionText(option), 14, Theme.Colors.TextMuted, false)
                optionLabel.Position = UDim2.fromOffset(8, 0)
                optionLabel.Size = UDim2.new(1, -16, 1, 0)
                optionLabel.TextTruncate = Enum.TextTruncate.AtEnd
                optionButtons[nextOptionValue] = {
                    Button = optionButton,
                    Label = optionLabel,
                    Stroke = optionStroke,
                }
                optionButton.MouseButton1Click:Connect(function()
                    setValue(nextOptionValue, false)
                end)
            end
            displayLabel.Text = findLabel(value)
            for nextOptValue, data in pairs(optionButtons) do
                local active = nextOptValue == value
                data.Button.BackgroundColor3 = active and Theme.Colors.AccentDim or Theme.Colors.Control
                data.Label.TextColor3 = active and Theme.Colors.Text or Theme.Colors.TextMuted
                if data.Stroke then
                    data.Stroke.Color = active and Theme.Colors.AccentSoft or Theme.Colors.Stroke
                end
            end
        end

        _G.BFH.State:RegisterControl(item.key, {
            Type = _p5helb(101),
            SetValue = setValue,
            SetOptions = item.SetOptions,
            GetValue = function()
                return value
            end,
        })
        if item.onChanged then
            _G.BFH.State.OnLoad = _G.BFH.State.OnLoad or {}
            _G.BFH.State.OnLoad[item.key] = item.onChanged
        end

        setValue(value, true)
        return root
    end

    function Components.Segmented(parent, item)
        _G.BFH.Registry.Ensure(item.key, {
            Type = _p5helb(102),
            Title = item.title,
            Page = item.page,
            Internal = item.internal == true,
        })

        local options = item.options or {}
        local stacked = item.stacked == true
        local containerWidth = item.width or 284
        local root = Components.ControlFrame(parent, stacked and (item.desc and 92 or 74) or (item.desc and 72 or 54))
        local titleLabel = Components.TitleBlock(root, item, stacked and 24 or (containerWidth + 24))
        if stacked and not item.desc then
            titleLabel.Position = UDim2.fromOffset(12, 6)
            titleLabel.Size = UDim2.new(1, -48, 0, 22)
        end

        local container = New(_p5helb(103), {
            AnchorPoint = stacked and Vector2.new(0, 0) or Vector2.new(1, 0.5),
            BackgroundColor3 = Theme.Colors.PanelDeep,
            Position = stacked and UDim2.new(0, 12, 1, -40) or UDim2.new(1, -12, 0.5, item.desc and 10 or 0),
            Size = stacked and UDim2.new(1, -24, 0, 30) or UDim2.fromOffset(containerWidth, 30),
            Parent = root,
        })
        AddCorner(container, Theme.Radius.Control)
        AddStroke(container)
        AddPadding(container, 3, 3, 3, 3)

        local layout = New(_p5helb(104), {
            FillDirection = Enum.FillDirection.Horizontal,
            Padding = UDim.new(0, 4),
            Parent = container,
        })

        local buttons = {}

        local function optionText(option)
            return type(option) == _p5helb(105) and (option.label or tostring(option.value)) or tostring(option)
        end

        local function optionValue(option)
            return type(option) == _p5helb(106) and option.value or option
        end

        local value = _G.BFH.State:Get(_p5helb(107), item.key, item.default or optionValue(options[1]) or "")

        local function paint()
            for nextValue, button in pairs(buttons) do
                local active = nextValue == value
                local label = button:FindFirstChild(_p5helb(108))
                Tween(button, {
                    BackgroundColor3 = active and Theme.Colors.Accent or Theme.Colors.Control,
                }, Theme.Animation.Fast)
                if label then
                    Tween(label, { TextColor3 = active and Theme.Colors.Text or Theme.Colors.TextMuted }, Theme.Animation.Fast)
                end
            end
        end

        local function setValue(nextValue, silent, instant)
            value = nextValue
            _G.BFH.State:Set(_p5helb(109), item.key, value)
            paint()

            if not silent then
                _G.BFH.State:AddLog(_p5helb(110), (item.title or item.key) .. _p5helb(111) .. tostring(value), item.key)
                Components.InvokeItem(item, {
                    type = _p5helb(112),
                    value = value,
                })
            end
        end

        local buttonCount = math.max(#options, 1)
        local buttonWidth = math.floor((containerWidth - 6 - math.max(#options - 1, 0) * 4) / buttonCount)
        for _, option in ipairs(options) do
            local nextValue = optionValue(option)
            local button = New(_p5helb(113), {
                BackgroundColor3 = Theme.Colors.Control,
                Size = stacked and UDim2.new(1 / buttonCount, -math.ceil((math.max(buttonCount - 1, 0) * 4) / buttonCount), 1, 0) or UDim2.new(0, buttonWidth, 1, 0),
                Text = "",
                Parent = container,
            })
            AddCorner(button, Theme.Radius.Control)
            Components.Interaction(
                button,
                function()
                    return nextValue == value and Theme.Colors.Accent or Theme.Colors.Control
                end,
                function()
                    return nextValue == value and Theme.Colors.Accent or Theme.Colors.ControlHover
                end,
                Theme.Colors.AccentDim
            )

            local buttonLabel = Components.Label(button, optionText(option), 13, Theme.Colors.TextMuted, false)
            buttonLabel.Name = _p5helb(114)
            buttonLabel.Size = UDim2.fromScale(1, 1)
            buttonLabel.TextXAlignment = Enum.TextXAlignment.Center
            buttonLabel.TextTruncate = Enum.TextTruncate.AtEnd

            buttons[nextValue] = button

            button.MouseButton1Click:Connect(function()
                setValue(nextValue, false)
            end)
        end

        _G.BFH.State:RegisterControl(item.key, {
            Type = _p5helb(115),
            SetValue = setValue,
            GetValue = function()
                return value
            end,
        })
        if item.onChanged then
            _G.BFH.State.OnLoad = _G.BFH.State.OnLoad or {}
            _G.BFH.State.OnLoad[item.key] = item.onChanged
        end

        paint()
        UI.Track(layout:GetPropertyChangedSignal(_p5helb(116)):Connect(paint), _p5helb(117))
        return root
    end

    function Components.NumberInput(parent, item)
        _G.BFH.Registry.Ensure(item.key, {
            Type = _p5helb(118),
            Title = item.title,
            Page = item.page,
        })

        local minValue = item.min or -999999
        local maxValue = item.max or 999999
        if maxValue < minValue then
            minValue, maxValue = maxValue, minValue
        end
        local step = tonumber(item.step) or 1
        if step <= 0 then
            step = 1
        end
        local value = tonumber(_G.BFH.State:Get(_p5helb(119), item.key, item.default or 0)) or 0

        local row = Components.ControlFrame(parent, 50)
        Components.TitleBlock(row, item, 180)

        local box = New(_p5helb(120), {
            AnchorPoint = Vector2.new(1, 0.5),
            BackgroundColor3 = Theme.Colors.PanelDeep,
            Position = UDim2.new(1, -46, 0.5, 0),
            Size = UDim2.fromOffset(96, 28),
            Text = tostring(value),
            TextXAlignment = Enum.TextXAlignment.Center,
            Parent = row,
        })
        AddCorner(box, Theme.Radius.Control)
        AddStroke(box)

        local function format(nextValue)
            if item.format then
                return string.format(item.format, nextValue)
            end
            if math.floor(nextValue) == nextValue then
                return tostring(nextValue)
            end
            return string.format(_p5helb(121), nextValue)
        end

        local function setValue(nextValue, silent)
            local raw = math.clamp(tonumber(nextValue) or value, minValue, maxValue)
            local stepped = math.floor(((raw - minValue) / step) + 0.5) * step + minValue
            value = math.clamp(stepped, minValue, maxValue)
            _G.BFH.State:Set(_p5helb(122), item.key, value)
            box.Text = format(value)
            Tween(box, { TextColor3 = Theme.Colors.Text }, Theme.Animation.Fast)
            if not silent then
                _G.BFH.State:AddLog(_p5helb(123), (item.title or item.key) .. _p5helb(124) .. box.Text, item.key)
                Components.InvokeItem(item, { type = _p5helb(125), value = value })
            end
        end

        local minus = New(_p5helb(126), {
            AnchorPoint = Vector2.new(1, 0.5),
            BackgroundColor3 = Theme.Colors.Control,
            Position = UDim2.new(1, -148, 0.5, 0),
            Size = UDim2.fromOffset(28, 28),
            Text = "-",
            TextSize = 18,
            Parent = row,
        })
        AddCorner(minus, Theme.Radius.Control)
        AddStroke(minus)
        Components.Interaction(minus, Theme.Colors.Control, Theme.Colors.ControlHover, Theme.Colors.AccentDim)

        local plus = New(_p5helb(127), {
            AnchorPoint = Vector2.new(1, 0.5),
            BackgroundColor3 = Theme.Colors.Control,
            Position = UDim2.new(1, -12, 0.5, 0),
            Size = UDim2.fromOffset(28, 28),
            Text = "+",
            TextSize = 18,
            Parent = row,
        })
        AddCorner(plus, Theme.Radius.Control)
        AddStroke(plus)
        Components.Interaction(plus, Theme.Colors.Control, Theme.Colors.ControlHover, Theme.Colors.AccentDim)

        minus.MouseButton1Click:Connect(function()
            setValue(value - step, false)
        end)
        plus.MouseButton1Click:Connect(function()
            setValue(value + step, false)
        end)
        box.FocusLost:Connect(function()
            setValue(box.Text, false)
        end)

        _G.BFH.State:RegisterControl(item.key, {
            Type = _p5helb(128),
            SetValue = setValue,
            GetValue = function()
                return value
            end,
        })
        if item.onChanged then
            _G.BFH.State.OnLoad = _G.BFH.State.OnLoad or {}
            _G.BFH.State.OnLoad[item.key] = item.onChanged
        end

        setValue(value, true)
        return row
    end

    function Components.ColorPicker(parent, item)
        _G.BFH.Registry.Ensure(item.key, {
            Type = _p5helb(129),
            Title = item.title,
            Page = item.page,
        })

        local presets = item.presets or {
            { label = _p5helb(130), value = Color3.fromRGB(60, 140, 255) },
            { label = _p5helb(131), value = Color3.fromRGB(230, 236, 245) },
            { label = _p5helb(132), value = Color3.fromRGB(120, 130, 145) },
            { label = _p5helb(133), value = Color3.fromRGB(82, 180, 126) },
            { label = _p5helb(134), value = Color3.fromRGB(226, 176, 74) },
        }
        local value = _G.BFH.State:Get(_p5helb(135), item.key, item.default or presets[1].value)

        local root = Components.ControlFrame(parent, 64)
        Components.TitleBlock(root, item, 236)

        local swatch = New(_p5helb(136), {
            AnchorPoint = Vector2.new(1, 0.5),
            BackgroundColor3 = value,
            Position = UDim2.new(1, -204, 0.5, 0),
            Size = UDim2.fromOffset(30, 30),
            Parent = root,
        })
        AddCorner(swatch, Theme.Radius.Control)
        AddStroke(swatch, Theme.Colors.StrokeStrong)

        local holder = New(_p5helb(137), {
            AnchorPoint = Vector2.new(1, 0.5),
            BackgroundTransparency = 1,
            Position = UDim2.new(1, -12, 0.5, 0),
            Size = UDim2.fromOffset(184, 30),
            Parent = root,
        })
        local layout = New(_p5helb(138), {
            FillDirection = Enum.FillDirection.Horizontal,
            Padding = UDim.new(0, 6),
            Parent = holder,
        })

        local function setValue(nextValue, label, silent)
            value = nextValue
            _G.BFH.State:Set(_p5helb(139), item.key, value)
            Tween(swatch, { BackgroundColor3 = value }, Theme.Animation.Fast)
            if not silent then
                _G.BFH.State:AddLog(_p5helb(140), (item.title or item.key) .. _p5helb(141) .. (label or ColorToHex(value)), item.key)
                Components.InvokeItem(item, { type = _p5helb(142), value = value, label = label, hex = ColorToHex(value) })
            end
        end

        for _, preset in ipairs(presets) do
            local button = New(_p5helb(143), {
                BackgroundColor3 = preset.value,
                Size = UDim2.fromOffset(24, 24),
                Text = "",
                Parent = holder,
            })
            AddCorner(button, Theme.Radius.Pill)
            AddStroke(button, Theme.Colors.StrokeStrong)
            Components.Tooltip(button, preset.label .. " " .. ColorToHex(preset.value))
            button.MouseButton1Click:Connect(function()
                setValue(preset.value, preset.label, false)
            end)
        end

        _G.BFH.State:RegisterControl(item.key, {
            Type = _p5helb(144),
            SetValue = setValue,
            GetValue = function()
                return value
            end,
        })
        if item.onChanged then
            _G.BFH.State.OnLoad = _G.BFH.State.OnLoad or {}
            _G.BFH.State.OnLoad[item.key] = item.onChanged
        end

        return root
    end

    function Components.MultiDropdown(parent, item)
        _G.BFH.Registry.Ensure(item.key, {
            Type = _p5helb(145),
            Title = item.title,
            Page = item.page,
        })

        local root = Components.ControlFrame(parent, 56)
        Components.TitleBlock(root, item, 230)

        local selected = _G.BFH.State:Get(_p5helb(146), item.key, ShallowCopy(item.default or {}))
        local options = item.options or {}

        local display = New(_p5helb(147), {
            AnchorPoint = Vector2.new(1, 0.5),
            BackgroundColor3 = Theme.Colors.PanelDeep,
            Position = UDim2.new(1, -12, 0, 30),
            Size = UDim2.fromOffset(220, 30),
            Text = "",
            Parent = root,
        })
        AddCorner(display, Theme.Radius.Control)
        local displayStroke = AddStroke(display)
        Components.Interaction(display, Theme.Colors.PanelDeep, Theme.Colors.Control, Theme.Colors.ControlHover)

        local label = Components.Label(display, "", 13, Theme.Colors.TextMuted, false)
        label.Position = UDim2.fromOffset(8, 0)
        label.Size = UDim2.new(1, -26, 1, 0)
        label.TextTruncate = Enum.TextTruncate.AtEnd

        local arrow = Components.Label(display, "v", 13, Theme.Colors.TextDim, true)
        arrow.AnchorPoint = Vector2.new(1, 0.5)
        arrow.Position = UDim2.new(1, -8, 0.5, 0)
        arrow.Size = UDim2.fromOffset(14, 16)
        arrow.TextXAlignment = Enum.TextXAlignment.Center

        local popup = New(_p5helb(148), {
            AnchorPoint = Vector2.new(0.5, 0),
            BackgroundColor3 = Theme.Colors.PanelDeep,
            Position = UDim2.new(0.5, 0, 0, 52.5),
            Size = UDim2.new(1, -24, 0, 0),
            Visible = false,
            CanvasSize = UDim2.fromOffset(0, 0),
            ScrollBarThickness = 3,
            Parent = root,
            ZIndex = 35,
        })
        AddCorner(popup, Theme.Radius.Panel)
        AddStroke(popup, Theme.Colors.Stroke)
        AddPadding(popup, 7, 7, 7, 7)
        local popupLayout = New(_p5helb(149), {
            Padding = UDim.new(0, 5),
            Parent = popup,
        })
        SetScrollCanvas(popup, popupLayout, 14, _p5helb(150))

        local function selectedText()
            local names = {}
            for _, option in ipairs(options) do
                local optionValue = ResolveOptionValue(option)
                if selected[optionValue] then
                    local label = item.optionLabelCallback and item.optionLabelCallback(optionValue, ResolveOptionLabel(option)) or ResolveOptionLabel(option)
                    table.insert(names, label)
                end
            end
            return #names == 0 and _p5helb(151) or table.concat(names, _p5helb(152))
        end

        local function syncLabel()
            label.Text = selectedText()
            local hasSelected = false
            for _, enabled in pairs(selected) do
                if enabled then
                    hasSelected = true
                    break
                end
            end
            Tween(label, { TextColor3 = hasSelected and Theme.Colors.Text or Theme.Colors.TextMuted }, Theme.Animation.Fast)
            Tween(arrow, { TextColor3 = hasSelected and Theme.Colors.Accent or Theme.Colors.TextDim }, Theme.Animation.Fast)
            Tween(displayStroke, { Color = hasSelected and Theme.Colors.AccentSoft or Theme.Colors.Stroke }, Theme.Animation.Fast)
        end

        local function fire(silent)
            _G.BFH.State:Set(_p5helb(153), item.key, selected)
            if silent then return end
            _G.BFH.State:AddLog(_p5helb(154), (item.title or item.key) .. _p5helb(155) .. selectedText(), item.key)
            Components.InvokeItem(item, { type = _p5helb(156), value = selected, label = selectedText() })
        end

        local openToken = 0
        local optionRows = {}

        local function paintOptions()
            for optionValue, data in pairs(optionRows) do
                local disabled = item.isOptionDisabled and item.isOptionDisabled(optionValue)
                local active = selected[optionValue] == true and not disabled
                data.Check.Text = active and _p5helb(157) or ""
                local opt = data.option
                if opt and disabled and item.optionLabelCallback then
                    data.Text.Text = item.optionLabelCallback(optionValue, ResolveOptionLabel(opt))
                elseif opt and not disabled and item.optionLabelCallback then
                    data.Text.Text = ResolveOptionLabel(opt)
                end
                Tween(data.Button, { BackgroundColor3 = disabled and Theme.Colors.ControlDim or (active and Theme.Colors.AccentDim or Theme.Colors.Control) }, Theme.Animation.Fast)
                Tween(data.Text, { TextColor3 = disabled and Theme.Colors.TextDim or (active and Theme.Colors.Text or Theme.Colors.TextMuted) }, Theme.Animation.Fast)
                if data.Stroke then
                    Tween(data.Stroke, { Color = disabled and Theme.Colors.Stroke or (active and Theme.Colors.AccentSoft or Theme.Colors.Stroke) }, Theme.Animation.Fast)
                end
            end
        end

        for _, option in ipairs(options) do
            local optionValue = ResolveOptionValue(option)
            local defaultLabel = ResolveOptionLabel(option)
            local optionLabel = item.optionLabelCallback and item.optionLabelCallback(optionValue, defaultLabel) or defaultLabel
            local optionButton = New(_p5helb(158), {
                BackgroundColor3 = Theme.Colors.Control,
                Size = UDim2.new(1, 0, 0, 26),
                Text = "",
                Parent = popup,
                ZIndex = 36,
            })
            AddCorner(optionButton, Theme.Radius.Control)
            local optionStroke = AddStroke(optionButton)
            Components.Interaction(
                optionButton,
                function()
                    return selected[optionValue] and Theme.Colors.AccentDim or Theme.Colors.Control
                end,
                function()
                    return selected[optionValue] and Theme.Colors.AccentDim or Theme.Colors.ControlHover
                end,
                Theme.Colors.AccentDim
            )

            local check = Components.Label(optionButton, selected[optionValue] and _p5helb(159) or "", 14, Theme.Colors.Accent, true)
            check.Position = UDim2.fromOffset(8, 0)
            check.Size = UDim2.fromOffset(20, 26)
            check.TextXAlignment = Enum.TextXAlignment.Center
            check.ZIndex = 37

            local text = Components.Label(optionButton, optionLabel, 13, Theme.Colors.TextMuted, false)
            text.Position = UDim2.fromOffset(34, 0)
            text.Size = UDim2.new(1, -42, 1, 0)
            text.TextTruncate = Enum.TextTruncate.AtEnd
            text.ZIndex = 37
            optionRows[optionValue] = {
                Button = optionButton,
                Check = check,
                Text = text,
                Stroke = optionStroke,
                option = option,
            }

            optionButton.MouseButton1Click:Connect(function()
                if item.isOptionDisabled and item.isOptionDisabled(optionValue) then return end
                selected[optionValue] = not selected[optionValue] or nil
                syncLabel()
                paintOptions()
                fire()
            end)
        end

        local popupHeight = 170

        local function setOpen(open)
            openToken += 1
            local token = openToken
            arrow.Text = open and "^" or "v"
            if open then
                popup.Visible = true
                popup.BackgroundTransparency = 1
                popup.Size = UDim2.new(1, -24, 0, 1)
                local optionCount = #options
                local itemH = 26
                local gap = 5
                local padding = 14
                local h = optionCount * itemH + math.max(optionCount - 1, 0) * gap + padding
                task.defer(function()
                    if token ~= openToken then return end
                    Tween(popup, {
                        BackgroundTransparency = 0,
                        Size = UDim2.new(1, -24, 0, h),
                    }, Theme.Animation.Normal)
                    Tween(root, { Size = UDim2.new(1, 0, 0, 60 + h) }, Theme.Animation.Normal)
                end)
            else
                Tween(popup, {
                    BackgroundTransparency = 1,
                    Size = UDim2.new(1, -24, 0, 1),
                }, Theme.Animation.Normal)
                Tween(root, { Size = UDim2.new(1, 0, 0, 56) }, Theme.Animation.Normal)
                task.delay(Theme.Animation.Normal + 0.03, function()
                    if popup and popup.Parent and token == openToken then
                        popup.Visible = false
                    end
                end)
            end
            RefreshContentCanvas()
        end

        display.MouseButton1Click:Connect(function()
            setOpen(not popup.Visible)
        end)

        _G.BFH.State:RegisterControl(item.key, {
            Type = _p5helb(160),
            SetValue = function(nextValue, silent)
                selected = ShallowCopy(nextValue or {})
                syncLabel()
                paintOptions()
                fire(silent)
            end,
            GetValue = function()
                return selected
            end,
        })
        if item.onChanged then
            _G.BFH.State.OnLoad = _G.BFH.State.OnLoad or {}
            _G.BFH.State.OnLoad[item.key] = item.onChanged
        end

        syncLabel()
        paintOptions()
        return root
    end

    function Components.Keybind(parent, item)
        _G.BFH.Registry.Ensure(item.key, {
            Type = _p5helb(161),
            Title = item.title,
            Page = item.page,
        })

        local value = _G.BFH.State.Keybinds[item.key] or item.default or _p5helb(162)
        local row = Components.ControlFrame(parent, 48)
        Components.TitleBlock(row, item, 140)

        local button = New(_p5helb(163), {
            AnchorPoint = Vector2.new(1, 0.5),
            BackgroundColor3 = Theme.Colors.PanelDeep,
            Position = UDim2.new(1, -12, 0.5, 0),
            Size = UDim2.fromOffset(116, 28),
            Text = tostring(value),
            TextColor3 = Theme.Colors.TextMuted,
            TextSize = 13,
            Parent = row,
        })
        AddCorner(button, Theme.Radius.Control)
        AddStroke(button)
        Components.Interaction(button, Theme.Colors.PanelDeep, Theme.Colors.Control, Theme.Colors.ControlHover)

        local waiting = false
        local normalStroke = button:FindFirstChildOfClass(_p5helb(164))
        button.MouseButton1Click:Connect(function()
            waiting = true
            button.Text = _p5helb(165)
            Tween(button, { BackgroundColor3 = Theme.Colors.AccentDim, TextColor3 = Theme.Colors.Text }, Theme.Animation.Fast)
            if normalStroke then
                Tween(normalStroke, { Color = Theme.Colors.AccentSoft }, Theme.Animation.Fast)
            end
            _G.BFH.State:AddLog(_p5helb(166), _p5helb(167) .. (item.title or item.key), item.key)
        end)

        UI.Track(Services.UserInputService.InputBegan:Connect(function(input, processed)
            if not waiting or processed then
                return
            end
            if input.UserInputType ~= Enum.UserInputType.Keyboard then
                return
            end
            waiting = false
            value = input.KeyCode.Name
            _G.BFH.State.Keybinds[item.key] = value
            button.Text = value
            Tween(button, { BackgroundColor3 = Theme.Colors.PanelDeep, TextColor3 = Theme.Colors.TextMuted }, Theme.Animation.Fast)
            if normalStroke then
                Tween(normalStroke, { Color = Theme.Colors.Stroke }, Theme.Animation.Fast)
            end
            _G.BFH.State:AddLog(_p5helb(168), (item.title or item.key) .. _p5helb(169) .. value, item.key)
            Components.InvokeItem(item, { type = _p5helb(170), value = value })
        end), _p5helb(171))

        return row
    end

    function Components.Progress(parent, item)
        if not item.internal then
            _G.BFH.Registry.Ensure(item.key, {
                Type = _p5helb(172),
                Title = item.title,
                Page = item.page,
                Internal = item.internal == true,
            })
        end

        local value = math.clamp(item.value or item.default or 0, 0, 1)
        local row = Components.ControlFrame(parent, 58)
        Components.TitleBlock(row, item, 120)

        local valueLabel = Components.Label(row, string.format(_p5helb(173), value * 100), 13, Theme.Colors.TextMuted, true)
        valueLabel.AnchorPoint = Vector2.new(1, 0)
        valueLabel.Position = UDim2.new(1, -12, 0, 9)
        valueLabel.Size = UDim2.fromOffset(70, 18)
        valueLabel.TextXAlignment = Enum.TextXAlignment.Right

        local bar = New(_p5helb(174), {
            BackgroundColor3 = Theme.Colors.PanelDeep,
            Position = UDim2.new(0, 12, 1, -20),
            Size = UDim2.new(1, -24, 0, 8),
            Parent = row,
        })
        AddCorner(bar, Theme.Radius.Pill)

        local fill = New(_p5helb(175), {
            BackgroundColor3 = item.color or Theme.Colors.Accent,
            Size = UDim2.new(value, 0, 1, 0),
            Parent = bar,
        })
        AddCorner(fill, Theme.Radius.Pill)

        return row
    end

    function Components.TagRow(parent, item)
        if not item.internal then
            _G.BFH.Registry.Ensure(item.key, {
                Type = _p5helb(176),
                Title = item.title,
                Page = item.page,
                Internal = true,
            })
        end

        local row = Components.ControlFrame(parent, 58)
        Components.TitleBlock(row, item, 300)

        local holder = New(_p5helb(177), {
            AnchorPoint = Vector2.new(1, 0.5),
            BackgroundTransparency = 1,
            Position = UDim2.new(1, -12, 0.5, 0),
            Size = UDim2.fromOffset(280, 28),
            Parent = row,
        })
        New(_p5helb(178), {
            FillDirection = Enum.FillDirection.Horizontal,
            HorizontalAlignment = Enum.HorizontalAlignment.Right,
            Padding = UDim.new(0, 6),
            Parent = holder,
        })

        for _, tag in ipairs(item.tags or {}) do
            local tagLabel = Components.Label(holder, type(tag) == _p5helb(179) and tag.label or tostring(tag), 12, Theme.Colors.TextMuted, true)
            tagLabel.BackgroundColor3 = type(tag) == _p5helb(180) and (tag.color or Theme.Colors.Control) or Theme.Colors.Control
            tagLabel.BackgroundTransparency = 0
            tagLabel.Size = UDim2.fromOffset(type(tag) == _p5helb(181) and (tag.width or 62) or 62, 24)
            tagLabel.TextXAlignment = Enum.TextXAlignment.Center
            AddCorner(tagLabel, Theme.Radius.Pill)
            AddStroke(tagLabel)
        end

        return row
    end

    function Components.Table(parent, item)
        if not item.internal then
            _G.BFH.Registry.Ensure(item.key, {
                Type = _p5helb(182),
                Title = item.title,
                Page = item.page,
                Internal = true,
            })
        end

        local rows = item.rows or {}
        if type(rows) == _p5helb(183) then
            local ok, result = pcall(rows)
            rows = ok and result or {}
        end

        local columns = item.columns or {
            { key = _p5helb(184), label = _p5helb(185), width = 0.45 },
            { key = _p5helb(186), label = _p5helb(187), width = 0.55 },
        }

        local root = New(_p5helb(188), {
            BackgroundColor3 = Theme.Colors.Card,
            Size = UDim2.new(1, 0, 0, math.max(90, 34 + (#rows * 30))),
            Parent = parent,
        })
        AddCorner(root, Theme.Radius.Panel)
        AddStroke(root)
        AddPadding(root, 10, 10, 10, 10)

        local header = New(_p5helb(189), {
            BackgroundColor3 = Theme.Colors.PanelDeep,
            Size = UDim2.new(1, 0, 0, 34),
            Parent = root,
        })
        AddCorner(header, Theme.Radius.Control)

        local xOffset = 0
        for _, column in ipairs(columns) do
            local label = Components.Label(header, column.label, 12, Theme.Colors.TextDim, true)
            label.Position = UDim2.new(xOffset, 8, 0, 0)
            label.Size = UDim2.new(column.width, -10, 1, 0)
            xOffset += column.width
        end

        local y = 34
        for _, row in ipairs(rows) do
            local line = New(_p5helb(190), {
                BackgroundColor3 = Theme.Colors.Control,
                BackgroundTransparency = 0.25,
                Position = UDim2.fromOffset(0, y),
                Size = UDim2.new(1, 0, 0, 26),
                Parent = root,
            })
            AddCorner(line, Theme.Radius.Control)

            xOffset = 0
            for _, column in ipairs(columns) do
                local value = row[column.key]
                local cell = Components.Label(line, tostring(value or ""), 12, Theme.Colors.TextMuted, false)
                cell.Position = UDim2.new(xOffset, 8, 0, 0)
                cell.Size = UDim2.new(column.width, -10, 1, 0)
                cell.TextTruncate = Enum.TextTruncate.AtEnd
                xOffset += column.width
            end
            y += 30
        end

        return root
    end

    function Components.StatusLabel(parent, item)
        if not item.internal then
            _G.BFH.Registry.Ensure(item.key, {
                Type = _p5helb(191),
                Title = item.title,
                Page = item.page,
                Internal = true,
            })
        end

        local row = Components.ControlFrame(parent, 44)
        Components.TitleBlock(row, item, 130)

        local resolvedValue = item.value
        if type(resolvedValue) == _p5helb(192) then
            local ok, result = pcall(resolvedValue)
            resolvedValue = ok and result or _p5helb(193)
        end

        local badge = Components.Label(row, resolvedValue or _p5helb(194), 13, Theme.Colors.Text, true)
        badge.AnchorPoint = Vector2.new(1, 0.5)
        badge.BackgroundColor3 = Theme.Colors.AccentDim
        badge.BackgroundTransparency = 0
        badge.Position = UDim2.new(1, -12, 0.5, 0)
        badge.Size = UDim2.fromOffset(100, 24)
        badge.TextXAlignment = Enum.TextXAlignment.Center
        AddCorner(badge, Theme.Radius.Control)
        AddStroke(badge, Theme.Colors.AccentSoft)

        _G.BFH.State:RegisterControl(item.key, {
            Type = _p5helb(195),
            SetValue = function(_, value)
                if type(value) ~= _p5helb(196) then return end
                badge.Text = value
            end,
            GetValue = function()
                return badge.Text
            end,
        })

        return row
    end

    function Components.ListItem(parent, item)
        if not item.internal then
            _G.BFH.Registry.Ensure(item.key, {
                Type = _p5helb(197),
                Title = item.title,
                Page = item.page,
                Internal = item.internal == true,
            })
        end

        local row = Components.ControlFrame(parent, item.desc and 52 or 36)
        Components.TitleBlock(row, item, item.badge and 110 or 24)

        if item.badge then
            local badge = Components.Label(row, item.badge, 12, Theme.Colors.TextMuted, true)
            badge.AnchorPoint = Vector2.new(1, 0.5)
            badge.BackgroundColor3 = Theme.Colors.Control
            badge.BackgroundTransparency = 0
            badge.Position = UDim2.new(1, -12, 0.5, 0)
            badge.Size = UDim2.fromOffset(86, 22)
            badge.TextXAlignment = Enum.TextXAlignment.Center
            AddCorner(badge, Theme.Radius.Control)
        end

        return row
    end

    function Components.CategoryCard(parent, item)
        _G.BFH.Registry.Ensure(item.key, {
            Type = _p5helb(198),
            Title = item.title,
            Page = item.page,
            TargetPage = item.targetPage,
            Internal = true,
        })

        local button = New(_p5helb(199), {
            BackgroundColor3 = Theme.Colors.Card,
            Size = UDim2.new(1, 0, 0, 58),
            Text = "",
            Parent = parent,
        })
        AddCorner(button, Theme.Radius.Panel)
        AddStroke(button)
        Components.Interaction(button, Theme.Colors.Card, Theme.Colors.CardHover, Theme.Colors.ControlHover)
        local cardScale = New(_p5helb(200), { Scale = 1, Parent = button })
        button.MouseEnter:Connect(function()
            Tween(cardScale, { Scale = 1.02 }, Theme.Animation.Normal)
        end)
        button.MouseLeave:Connect(function()
            Tween(cardScale, { Scale = 1 }, Theme.Animation.Normal)
        end)

        local icon = Components.Label(button, item.icon or ">", 18, Theme.Colors.Accent, true)
        icon.BackgroundColor3 = Theme.Colors.AccentDim
        icon.BackgroundTransparency = 0
        icon.Position = UDim2.fromOffset(12, 11)
        icon.Size = UDim2.fromOffset(36, 36)
        icon.TextXAlignment = Enum.TextXAlignment.Center
        AddCorner(icon, Theme.Radius.Control)
        AddStroke(icon, Theme.Colors.AccentSoft)

        local title = Components.Label(button, item.title, 16, Theme.Colors.Text, true)
        title.Position = UDim2.fromOffset(58, 8)
        title.Size = UDim2.new(1, -112, 0, 20)

        local desc = Components.Label(button, item.desc, 13, Theme.Colors.TextDim, false)
        desc.Position = UDim2.fromOffset(58, 30)
        desc.Size = UDim2.new(1, -112, 0, 18)
        desc.TextTruncate = Enum.TextTruncate.AtEnd

        local arrow = Components.Label(button, ">", 18, Theme.Colors.TextDim, true)
        arrow.AnchorPoint = Vector2.new(1, 0.5)
        arrow.Position = UDim2.new(1, -14, 0.5, 0)
        arrow.Size = UDim2.fromOffset(20, 24)
        arrow.TextXAlignment = Enum.TextXAlignment.Center

        button.MouseButton1Click:Connect(function()
            if item.targetPage then
                UI.SetPage(item.targetPage)
            end
            _G.BFH.State:AddLog(_p5helb(201), _p5helb(202) .. (item.title or item.targetPage or ""), item.key)
        end)

        return button
    end

    function Components.Collapsible(parent, item)
        _G.BFH.Registry.Ensure(item.key, {
            Type = _p5helb(203),
            Title = item.title,
            Page = item.page,
            Internal = true,
        })

        local root = New(_p5helb(204), {
            BackgroundTransparency = 1,
            Size = UDim2.new(1, 0, 0, 0),
            AutomaticSize = Enum.AutomaticSize.Y,
            Parent = parent,
        })

        local layout = New(_p5helb(205), {
            Padding = UDim.new(0, 8),
            Parent = root,
        })

        local header = New(_p5helb(206), {
            BackgroundColor3 = Theme.Colors.Control,
            Size = UDim2.new(1, 0, 0, 38),
            Text = "",
            Parent = root,
        })
        AddCorner(header, Theme.Radius.Panel)
        AddStroke(header)
        Components.Interaction(header, Theme.Colors.Control, Theme.Colors.ControlHover, Theme.Colors.AccentDim)

        local arrow = Components.Label(header, "v", 14, Theme.Colors.TextDim, true)
        arrow.Position = UDim2.fromOffset(12, 0)
        arrow.Size = UDim2.fromOffset(18, 38)
        arrow.TextXAlignment = Enum.TextXAlignment.Center

        local title = Components.Label(header, item.title or _p5helb(207), 16, Theme.Colors.Text, true)
        title.Position = UDim2.fromOffset(36, 0)
        title.Size = UDim2.new(1, -48, 1, 0)

        local content = New(_p5helb(208), {
            BackgroundTransparency = 1,
            Size = UDim2.new(1, 0, 0, 0),
            ClipsDescendants = true,
            Parent = root,
        })

        local contentLayout = New(_p5helb(209), {
            Padding = UDim.new(0, 8),
            Parent = content,
        })

        local collapsed = _G.BFH.State.Collapsed[item.key] == true

        local function getContentHeight()
            return contentLayout.AbsoluteContentSize.Y + 8
        end

        local animToken = 0
        local function animate(expand)
            animToken += 1
            local token = animToken
            if expand then
                content.Visible = true
                content.Size = UDim2.new(1, 0, 0, 0)
                task.defer(function()
                    if token ~= animToken then return end
                    local h = getContentHeight()
                    Tween(content, { Size = UDim2.new(1, 0, 0, h) }, Theme.Animation.Normal)
                end)
            else
                local cur = content.AbsoluteSize.Y
                if cur > 0 then
                    Tween(content, { Size = UDim2.new(1, 0, 0, 1) }, Theme.Animation.Fast)
                    task.delay(Theme.Animation.Fast + 0.03, function()
                        if token == animToken then
                            content.Visible = false
                        end
                    end)
                else
                    content.Visible = false
                end
            end
        end

        header.MouseButton1Click:Connect(function()
            collapsed = not collapsed
            _G.BFH.State.Collapsed[item.key] = collapsed
            arrow.Text = collapsed and ">" or "v"
            animate(not collapsed)
            _G.BFH.State:AddLog(_p5helb(210), (collapsed and _p5helb(211) or _p5helb(212)) .. (item.title or item.key), item.key)
        end)

        if collapsed then
            content.Visible = false
            content.Size = UDim2.new(1, 0, 0, 0)
        else
            task.defer(function()
                local h = getContentHeight()
                content.Size = UDim2.new(1, 0, 0, h)
            end)
        end
        return root, content
    end

    function Components.LogOutput(parent, item)
        _G.BFH.Registry.Ensure(item.key, {
            Type = _p5helb(213),
            Title = item.title,
            Page = item.page,
            Internal = true,
        })

        local root = New(_p5helb(214), {
            BackgroundColor3 = Theme.Colors.Card,
            Size = UDim2.new(1, 0, 0, 300),
            Parent = parent,
        })
        AddCorner(root, Theme.Radius.Panel)
        AddStroke(root)
        AddPadding(root, 10, 10, 10, 10)

        local header = New(_p5helb(215), {
            BackgroundTransparency = 1,
            Size = UDim2.new(1, 0, 0, 32),
            Parent = root,
        })

        local title = Components.Label(header, item.title or _p5helb(216), 17, Theme.Colors.Text, true)
        title.Size = UDim2.new(1, -100, 1, 0)

        local clear = New(_p5helb(217), {
            AnchorPoint = Vector2.new(1, 0.5),
            BackgroundColor3 = Theme.Colors.Control,
            Position = UDim2.new(1, 0, 0.5, 0),
            Size = UDim2.fromOffset(84, 26),
            Text = _p5helb(218),
            TextSize = 14,
            TextColor3 = Theme.Colors.TextMuted,
            Parent = header,
        })
        AddCorner(clear, Theme.Radius.Control)
        AddStroke(clear)
        Components.Interaction(clear, Theme.Colors.Control, Theme.Colors.ControlHover, Theme.Colors.AccentDim)

        _G.BFH.Registry.Ensure(item.clearKey or _p5helb(219), {
            Type = _p5helb(220),
            Title = _p5helb(221),
            Page = item.page,
            Internal = true,
        })

        clear.MouseButton1Click:Connect(function()
            _G.BFH.State:ClearLogs()
            _G.BFH.State:AddLog(_p5helb(222), _p5helb(223), item.clearKey or _p5helb(224))
        end)

        local scroller = New(_p5helb(225), {
            BackgroundColor3 = Theme.Colors.PanelDeep,
            Position = UDim2.fromOffset(0, 38),
            Size = UDim2.new(1, 0, 1, -38),
            CanvasSize = UDim2.fromOffset(0, 0),
            Parent = root,
        })
        AddCorner(scroller, Theme.Radius.Control)
        AddStroke(scroller)
        AddPadding(scroller, 8, 8, 8, 8)

        local layout = New(_p5helb(226), {
            Padding = UDim.new(0, 5),
            Parent = scroller,
        })
        SetScrollCanvas(scroller, layout, 16, _p5helb(227))

        UI.LogList = scroller
        UI.RefreshLogs()
        return root
    end

    function Components.SearchBox(parent)
        local box = New(_p5helb(228), {
            BackgroundColor3 = Theme.Colors.PanelDeep,
            PlaceholderText = _p5helb(229),
            Size = UDim2.fromOffset(250, 30),
            Text = _G.BFH.State.SearchText,
            TextXAlignment = Enum.TextXAlignment.Left,
            Parent = parent,
        })
        AddCorner(box, Theme.Radius.Control)
        AddStroke(box)
        AddPadding(box, 9, 9, 0, 0)

        box:GetPropertyChangedSignal(_p5helb(230)):Connect(function()
            local previousText = _G.BFH.State.SearchText or ""
            _G.BFH.State.SearchText = box.Text
            if _G.BFH.State.SearchScope == _p5helb(231) and box.Text ~= "" then
                if _G.BFH.State.CurrentPage ~= _p5helb(232) then
                    _G.BFH.State.SearchReturnPage = _G.BFH.State.CurrentPage
                end
                _G.BFH.State.CurrentPage = _p5helb(233)
                UI.UpdateSidebar()
            elseif _G.BFH.State.SearchScope == _p5helb(234) and previousText ~= "" and box.Text == "" and _G.BFH.State.CurrentPage == _p5helb(235) then
                local returnPage = _G.BFH.State.SearchReturnPage or _G.BFH.AppConfig.DefaultPage
                if _G.BFH.Pages.ById[returnPage] then
                    _G.BFH.State.CurrentPage = returnPage
                    UI.UpdateSidebar()
                end
            end
            if UI.RenderPage then
                UI.RenderPage(_G.BFH.State.CurrentPage)
            end
        end)

        return box
    end

    function Components.Marquee(parent, text)
        local root = New(_p5helb(236), {
            BackgroundColor3 = Theme.Colors.PanelDeep,
            ClipsDescendants = true,
            Size = UDim2.fromOffset(250, 30),
            Parent = parent,
        })
        AddCorner(root, Theme.Radius.Control)

        local label = Components.Label(root, text or "", 14, Theme.Colors.TextMuted, false)
        label.Name = _p5helb(237)
        label.AnchorPoint = Vector2.new(0, 0.5)
        label.Position = UDim2.new(0, 0, 0.5, 0)
        label.Size = UDim2.new(0, 0, 0, root.Size.Y.Offset)
        label.TextXAlignment = Enum.TextXAlignment.Left
        label.TextYAlignment = Enum.TextYAlignment.Center
        label.TextTruncate = Enum.TextTruncate.None

        local function start()
            UI.MarqueeToken += 1
            local token = UI.MarqueeToken
            task.defer(function()
                task.wait()
                while root and root.Parent and token == UI.MarqueeToken do
                    local rootWidth = math.max(root.AbsoluteSize.X, 1)
                    local textWidth = Services.TextService:GetTextSize(label.Text, label.TextSize, label.Font, Vector2.new(math.huge, root.AbsoluteSize.Y)).X
                    label.Size = UDim2.fromOffset(textWidth, root.AbsoluteSize.Y)
                    label.Position = UDim2.new(0, rootWidth + 100, 0.5, 0)
                    task.wait()

                    local distance = rootWidth + textWidth + 100
                    local duration = math.max(distance / 72, 1.2) / 1.2
                    local tween = Tween(label, {
                        Position = UDim2.new(0, -textWidth, 0.5, 0),
                    }, duration, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
                    if tween then
                        tween.Completed:Wait()
                    else
                        task.wait(duration)
                    end
                end
            end)
        end

        start()
        return root
    end


    function Components.LockOverlay(parent, text)
        local overlay = Instance.new(_p5helb(238))
        overlay.BackgroundColor3 = Theme.Colors.Card
        overlay.BackgroundTransparency = 0.9
        overlay.Size = UDim2.fromScale(1, 1)
        overlay.Position = UDim2.fromOffset(0, 0)
        overlay.Text = ""
        overlay.AutoButtonColor = false
        overlay.BorderSizePixel = 0
        overlay.Parent = parent
        overlay.ZIndex = 50
        local corner = Instance.new(_p5helb(239))
        corner.CornerRadius = UDim.new(0, Theme.Radius.Panel)
        corner.Parent = overlay
        local stroke = Instance.new(_p5helb(240))
        stroke.Color = Theme.Colors.Stroke
        stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        stroke.Parent = overlay
        -- Lock icon
        local icon = Instance.new(_p5helb(241))
        icon.Image = _p5helb(242)
        icon.BackgroundTransparency = 1
        icon.Size = UDim2.new(0, 28, 0, 28)
        icon.Position = UDim2.new(0.5, -14, 0.32, -14)
        icon.ImageColor3 = Theme.Colors.TextMuted
        icon.ImageTransparency = 0.25
        icon.ZIndex = 51
        icon.Parent = overlay
        -- Hint text
        local hint = Instance.new(_p5helb(243))
        hint.Text = text or _p5helb(244)
        hint.BackgroundTransparency = 1
        hint.Size = UDim2.new(1, -24, 0, 24)
        hint.Position = UDim2.new(0, 12, 0.58, 0)
        hint.TextSize = 15
        hint.TextColor3 = Theme.Colors.TextDim
        hint.TextXAlignment = Enum.TextXAlignment.Center
        hint.TextYAlignment = Enum.TextYAlignment.Top
        hint.Font = Theme.Font
        hint.ZIndex = 51
        hint.Parent = overlay
        return overlay
    end

    function UI.GetScreenParent()
        local candidates = {}

        local okHui, hui = pcall(function()
            if gethui then
                return gethui()
            end
            return nil
        end)

        if okHui and hui then
            table.insert(candidates, hui)
        end

        table.insert(candidates, Services.CoreGui)

        local localPlayer = Services.Players.LocalPlayer
        if localPlayer then
            table.insert(candidates, localPlayer:WaitForChild(_p5helb(245)))
        end

        for _, candidate in ipairs(candidates) do
            local testGui = Instance.new(_p5helb(246))
            local ok = pcall(function()
                testGui.Parent = candidate
            end)
            testGui:Destroy()

            if ok then
                return candidate
            end
        end

        return Services.Players.LocalPlayer:WaitForChild(_p5helb(247))
    end

    function UI.GetWindowPresetSize()
        for _, preset in ipairs(_G.BFH.AppConfig.WindowPresets) do
            if preset.value == _G.BFH.State.WindowPreset then
                return preset.size
            end
        end

        return _G.BFH.AppConfig.WindowSize
    end

    function UI.GetBoundedWindowSize(targetSize)
        targetSize = targetSize or UI.GetWindowPresetSize()
        if not UI.RootGui then
            return targetSize
        end

        local rootSize = UI.RootGui.AbsoluteSize
        if rootSize.X <= 0 or rootSize.Y <= 0 then
            return targetSize
        end

        local scale = math.max(_G.BFH.State.DpiScale or 1, 0.01)
        local maxWidth = math.max(1, math.floor((rootSize.X - 24) / scale))
        local maxHeight = math.max(1, math.floor((rootSize.Y - 24) / scale))

        return Vector2.new(math.min(targetSize.X, maxWidth), math.min(targetSize.Y, maxHeight))
    end

    function UI.ApplyWindowBounds()
        if UI.Main then
            local targetSize = UI.GetBoundedWindowSize(UI.GetWindowPresetSize())
            UI.Main.Size = UDim2.fromOffset(targetSize.X, targetSize.Y)
            UI.Main.Position = ClampFrameToScreen(UI.Main, UI.Main.Position)
        end

        if UI.ShowButton then
            UI.ShowButton.Position = ClampFrameToScreen(UI.ShowButton, UI.ShowButton.Position)
        end
    end

    function UI.SetDpi(scale)
        _G.BFH.State.DpiScale = math.clamp(scale or 1, _G.BFH.AppConfig.MinimumDpi / 100, _G.BFH.AppConfig.MaximumDpi / 100)
        local percent = math.floor(_G.BFH.State.DpiScale * 100 + 0.5)
        local presetValue = tostring(percent)
        _G.BFH.State.Sliders[_p5helb(248)] = percent
        _G.BFH.State.Segments[_p5helb(249)] = presetValue

        local dpiControl = _G.BFH.State.Controls[_p5helb(250)]
        if dpiControl and dpiControl.SetValue then
            dpiControl.SetValue(percent, true, true)
        end

        local presetControl = _G.BFH.State.Controls[_p5helb(251)]
        if presetControl and presetControl.SetValue then
            presetControl.SetValue(presetValue, true, true)
        end

        if UI.Scale then
            UI.Scale.Scale = _G.BFH.State.DpiScale
        end
        if UI.ToastScale then
            UI.ToastScale.Scale = _G.BFH.State.DpiScale
        end
        if UI.TooltipScale then
            UI.TooltipScale.Scale = _G.BFH.State.DpiScale
        end
        if UI.ModalScale then
            UI.ModalScale.Scale = _G.BFH.State.DpiScale
        end
        if UI.ShowScale then
            UI.ShowScale.Scale = _G.BFH.State.DpiScale
        end
        UI.ApplyWindowBounds()
    end

    function UI.SetWindowPreset(presetId)
        _G.BFH.State.WindowPreset = presetId or _G.BFH.State.WindowPreset
        _G.BFH.State.Dropdowns[_p5helb(252)] = _G.BFH.State.WindowPreset

        local targetSize = UI.GetBoundedWindowSize(UI.GetWindowPresetSize())

        if UI.Main then
            Tween(UI.Main, {
                Size = UDim2.fromOffset(targetSize.X, targetSize.Y),
            }, Theme.Animation.Slow)
            task.delay(Theme.Animation.Slow + 0.02, function()
                if UI.Main then
                    UI.Main.Position = ClampFrameToScreen(UI.Main, UI.Main.Position)
                end
            end)
        end
    end

    function UI.SetWindowTransparency(value)
        _G.BFH.State.WindowTransparency = math.clamp(value or 0, 0, 45)
        local transparency = _G.BFH.State.WindowTransparency / 100

        if UI.Main then
            UI.Main.BackgroundTransparency = transparency
        end
        if UI.Sidebar then
            UI.Sidebar.BackgroundTransparency = 0
        end
        if UI.Content then
            UI.Content.BackgroundTransparency = 0
        end
    end

    function UI.SetVisible(visible)
        UI.VisibleToken = (UI.VisibleToken or 0) + 1
        local token = UI.VisibleToken
        local MinimizeDuration = 0.06

        if visible then
            if UI.Main then
                UI.Main.Visible = true
                UI.Main.Size = UDim2.fromOffset(1, 1)
                task.defer(function()
                    if token ~= UI.VisibleToken then return end
                    Tween(UI.Main, {
                        Size = UI._savedWindowSize or UDim2.fromOffset(760, 500),
                    }, Theme.Animation.Slow, Enum.EasingStyle.Back)
                end)
            end
            if UI.ShowButton then
                Tween(UI.ShowButton, { BackgroundTransparency = 1, ImageTransparency = 1 }, MinimizeDuration)
                if UI.ShowButtonStroke then Tween(UI.ShowButtonStroke, { Transparency = 1 }, MinimizeDuration) end
                task.delay(MinimizeDuration + 0.02, function()
                    if UI.ShowButton and token == UI.VisibleToken and visible then
                        UI.ShowButton.Visible = false
                        UI.ShowButton.ImageTransparency = 0
                    end
                end)
            end
        else
            if UI.Main then
                UI._savedWindowSize = UI.Main.Size
                Tween(UI.Main, {
                    Size = UDim2.fromOffset(1, 1),
                }, Theme.Animation.Normal)
                task.delay(Theme.Animation.Normal + 0.04, function()
                    if token == UI.VisibleToken and not visible then
                        UI.Main.Visible = false
                        UI.Main.Size = UI._savedWindowSize
                    end
                end)
            end
            if UI.ShowButton then
                UI.ShowButton.Visible = true
                UI.ShowButton.BackgroundTransparency = 1
                UI.ShowButton.ImageTransparency = 1
                Tween(UI.ShowButton, { BackgroundTransparency = 1, ImageTransparency = 0 }, MinimizeDuration)
                if UI.ShowButtonStroke then Tween(UI.ShowButtonStroke, { Transparency = 0 }, MinimizeDuration) end
            end
        end
        _G.BFH.State:AddLog(_p5helb(253), visible and _p5helb(254) or _p5helb(255), _p5helb(256))
    end

    function UI.ToggleSidebar()
        UI.SidebarCollapsed = not UI.SidebarCollapsed
        local width = UI.SidebarCollapsed and 56 or 150

        if UI.Sidebar then
            Tween(UI.Sidebar, { Size = UDim2.new(0, width - 1, 1, -43) }, Theme.Animation.Normal)
        end

        if UI.Content then
            Tween(UI.Content, {
                Position = UDim2.fromOffset(width, 42),
                Size = UDim2.new(1, -width, 1, -42),
            }, Theme.Animation.Normal)
        end

        for _, button in pairs(UI.SidebarButtons) do
            local label = button:FindFirstChild(_p5helb(257))
            if label then
                label.Visible = not UI.SidebarCollapsed
            end
        end

        _G.BFH.State:AddLog(_p5helb(258), UI.SidebarCollapsed and _p5helb(259) or _p5helb(260), _p5helb(261))
    end

    function UI.Track(connection, scope)
        if not connection then
            return nil
        end

        if scope == _p5helb(262) then
            table.insert(UI.PageConnections, connection)
        elseif scope == _p5helb(263) then
            table.insert(UI.LogConnections, connection)
        else
            table.insert(UI.Connections, connection)
        end
        return connection
    end

    function UI.ClearPageConnections()
        DisconnectConnections(UI.PageConnections)
    end

    function UI.ClearLogConnections()
        DisconnectConnections(UI.LogConnections)
    end

    function UI.Destroy()
        UI.ClearPageConnections()
        UI.ClearLogConnections()
        DisconnectConnections(UI.Connections)
        _G.BFH.State:ClearVisibleControls()

        if UI.RootGui then
            UI.RootGui:Destroy()
        end
        UI.RootGui = nil
        UI.Main = nil
        UI.ShowButton = nil
        UI.Content = nil
        UI.ContentLayout = nil
        UI.Sidebar = nil
        UI.LogList = nil
        UI.ToastRoot = nil
        UI.ToastThrottle = {}
        UI.ToastScale = nil
        UI.TooltipScale = nil
        UI.TooltipSource = nil
        UI.ModalScale = nil
        UI.ShowScale = nil
        UI.Livestream = nil
        UI.ShowButtonStroke = nil
        UI.Tooltip = nil
        UI.TooltipToken += 1
        UI.VisibleToken += 1
        UI.ModalRoot = nil
        UI.SidebarButtons = {}
        UI.Connections = {}
        UI.PageConnections = {}
        UI.LogConnections = {}
    end

    function UI.RefreshLogs()
        if not UI.LogList then
            return
        end

        UI.ClearLogConnections()
        for _, child in ipairs(UI.LogList:GetChildren()) do
            if not child:IsA(_p5helb(264)) and not child:IsA(_p5helb(265)) and not child:IsA(_p5helb(266)) then
                child:Destroy()
            end
        end

        if not UI.LogList:FindFirstChildOfClass(_p5helb(267)) then
            AddPadding(UI.LogList, 8, 8, 8, 8)
        end

        local layout = New(_p5helb(268), {
            Padding = UDim.new(0, 5),
            Parent = UI.LogList,
        })
        SetScrollCanvas(UI.LogList, layout, 16, _p5helb(269))

        if #_G.BFH.State.Logs == 0 then
            local empty = New(_p5helb(270), {
                BackgroundTransparency = 1,
                Size = UDim2.new(1, 0, 0, 34),
                Text = _p5helb(271),
                TextColor3 = Theme.Colors.TextDim,
                TextXAlignment = Enum.TextXAlignment.Left,
                Parent = UI.LogList,
            })
            return empty
        end

        for _, log in ipairs(_G.BFH.State.Logs) do
            local row = New(_p5helb(272), {
                BackgroundColor3 = Theme.Colors.Control,
                Size = UDim2.new(1, 0, 0, 30),
                Parent = UI.LogList,
            })
            AddCorner(row, Theme.Radius.Control)

            local level = Components.Label(row, log.Level, 12, Theme.Colors.Accent, true)
            level.Position = UDim2.fromOffset(8, 0)
            level.Size = UDim2.fromOffset(58, 30)

            local msgText = type(log.Message) == _p5helb(273) and log.Message or tostring(log.Message or ""); local message = Components.Label(row, log.Time .. _p5helb(274) .. msgText, 13, Theme.Colors.TextMuted, false)
            message.Position = UDim2.fromOffset(70, 0)
            message.Size = UDim2.new(1, -210, 1, 0)
            message.TextTruncate = Enum.TextTruncate.AtEnd

            local key = Components.Label(row, log.Key, 12, Theme.Colors.TextDim, false)
            key.AnchorPoint = Vector2.new(1, 0)
            key.Position = UDim2.new(1, -8, 0, 0)
            key.Size = UDim2.fromOffset(130, 30)
            key.TextXAlignment = Enum.TextXAlignment.Right
            key.TextTruncate = Enum.TextTruncate.AtEnd
        end
    end

    function UI.BuildToastRoot(parent)
        UI.ToastRoot = New(_p5helb(275), {
            AnchorPoint = Vector2.new(1, 0),
            BackgroundTransparency = 1,
            Position = UDim2.new(1, -math.floor(8 * _G.BFH.State.DpiScale), 0, math.floor(10 * _G.BFH.State.DpiScale)),
            Size = UDim2.fromOffset(460, 420),
            Parent = parent,
            ZIndex = 80,
        })
        UI.ToastScale = New(_p5helb(276), {
            Scale = _G.BFH.State.DpiScale,
            Parent = UI.ToastRoot,
        })

        New(_p5helb(277), {
            FillDirection = Enum.FillDirection.Vertical,
            HorizontalAlignment = Enum.HorizontalAlignment.Right,
            SortOrder = Enum.SortOrder.LayoutOrder,
            Padding = UDim.new(0, 6),
            Parent = UI.ToastRoot,
        })
    end

    function UI.Notify(level, message, key)
        if not UI.ToastRoot then
            return
        end

        key = tostring(key or "")
        message = tostring(message or "")

        local now = os.clock()
        local throttleKey = key ~= "" and key or message
        if throttleKey ~= "" and UI.ToastThrottle[throttleKey] and now - UI.ToastThrottle[throttleKey] < 0.1 then
            return
        end
        UI.ToastThrottle[throttleKey] = now

        UI.ToastId += 1
        local toastId = UI.ToastId
        local accent = level == _p5helb(278) and Color3.fromRGB(255, 96, 96) or Theme.Colors.Accent
        local textW = Services.TextService:GetTextSize(message, 16, Theme.Font, Vector2.new(math.huge, 22)).X
        local toastWidth = math.max(math.min(textW + 44, 420), 160)
        local toastHeight = 50
        local progressStart = Color3.fromRGB(70, 180, 255)
        local progressEnd = Color3.fromRGB(255, 80, 80)

        local wrapper = New(_p5helb(279), {
            BackgroundTransparency = 1,
            LayoutOrder = -toastId,
            Size = UDim2.fromOffset(toastWidth, toastHeight),
            Parent = UI.ToastRoot,
            ZIndex = 81,
        })

        local maskContainer = New(_p5helb(280), {
            BackgroundTransparency = 1,
            ClipsDescendants = true,
            Size = UDim2.new(0.98, 0, 1, 0),
            Parent = wrapper,
            ZIndex = 81,
        })
        AddCorner(maskContainer, Theme.Radius.Panel)

        local toast = New(_p5helb(281), {
            BackgroundColor3 = Theme.Colors.Window,
            BackgroundTransparency = 1,
            Position = UDim2.new(1, 0, 0, 1),
            Size = UDim2.new(1, -2, 1, -2),
            Parent = maskContainer,
            ZIndex = 81,
        })
        AddCorner(toast, Theme.Radius.Panel)
        local stroke = AddStroke(toast, Color3.fromRGB(235, 235, 235))
        stroke.Transparency = 1

        local bar = New(_p5helb(282), {
            BackgroundColor3 = accent,
            BackgroundTransparency = 1,
            Size = UDim2.new(0, 4, 1, -12),
            Position = UDim2.fromOffset(8, 6),
            Parent = toast,
            ZIndex = 82,
        })
        AddCorner(bar, Theme.Radius.Pill)

        local title = Components.Label(toast, tostring(level or _p5helb(283)), 13, accent, true)
        title.Position = UDim2.fromOffset(18, 4)
        title.Size = UDim2.fromOffset(74, 14)
        title.TextTruncate = Enum.TextTruncate.AtEnd
        title.TextTransparency = 1
        title.ZIndex = 82

        local text = Components.Label(toast, message, 16, Theme.Colors.Text, false)
        text.Position = UDim2.fromOffset(18, 18)
        text.Size = UDim2.new(1, -28, 0, 22)
        text.TextTruncate = Enum.TextTruncate.AtEnd
        text.TextTransparency = 1
        text.ZIndex = 82

        local progressBg = New(_p5helb(284), {
            BackgroundColor3 = Theme.Colors.StrokeStrong,
            BackgroundTransparency = 1,
            Position = UDim2.new(0, 18, 1, -8),
            Size = UDim2.new(1, -28, 0, 3),
            Parent = toast,
            ZIndex = 82,
        })
        AddCorner(progressBg, Theme.Radius.Pill)

        local progressClip = New(_p5helb(285), {
            BackgroundTransparency = 1,
            ClipsDescendants = true,
            Size = UDim2.new(1, 0, 1, 0),
            Parent = progressBg,
            ZIndex = 83,
        })
        AddCorner(progressClip, Theme.Radius.Pill)

        local progressBar = New(_p5helb(286), {
            AnchorPoint = Vector2.new(1, 0),
            BackgroundColor3 = progressStart,
            BackgroundTransparency = 1,
            Position = UDim2.new(1, 0, 0, 0),
            Size = UDim2.new(1, 0, 1, 0),
            Parent = progressClip,
            ZIndex = 84,
        })
        AddCorner(progressBar, Theme.Radius.Pill)

        Tween(toast, {
            BackgroundTransparency = 0,
            Position = UDim2.new(0, 1, 0, 1),
        }, 0.5)
        Tween(bar, { BackgroundTransparency = 0 }, 0.22)
        Tween(title, { TextTransparency = 0 }, 0.22)
        Tween(text, { TextTransparency = 0 }, 0.22)
        Tween(progressBg, { BackgroundTransparency = 0.35 }, 0.22)
        Tween(progressBar, { BackgroundTransparency = 0 }, 0.22)
        Tween(stroke, { Transparency = 0.38 }, 0.22)
        Tween(progressBar, {
            Size = UDim2.new(0, 0, 1, 0),
        }, Theme.Animation.ToastDuration, Enum.EasingStyle.Linear)
        task.delay(math.max(Theme.Animation.ToastDuration - 0.5, 0), function()
            if progressBar and progressBar.Parent then
                Tween(progressBar, { BackgroundColor3 = progressEnd }, 0.5)
            end
        end)

        task.delay(Theme.Animation.ToastDuration, function()
            if not wrapper or not wrapper.Parent or not toast or not toast.Parent then
                return
            end

            for _, child in ipairs(toast:GetDescendants()) do
                if child:IsA(_p5helb(287)) or child:IsA(_p5helb(288)) or child:IsA(_p5helb(289)) then
                    Tween(child, {
                        TextTransparency = 1,
                        BackgroundTransparency = 1,
                    }, Theme.Animation.Slow)
                elseif child:IsA(_p5helb(290)) then
                    Tween(child, { BackgroundTransparency = 1 }, Theme.Animation.Slow)
                elseif child:IsA(_p5helb(291)) then
                    Tween(child, { Transparency = 1 }, Theme.Animation.Slow)
                end
            end

            Tween(toast, {
                BackgroundTransparency = 1,
                Position = UDim2.new(0, 0, 1.5, 0),
            }, 0.3)
            Tween(stroke, { Transparency = 1 }, 0.3)

            task.delay(0.3, function()
                if wrapper and wrapper.Parent then
                    wrapper:Destroy()
                end
            end)
        end)
    end

    function UI.ShowAnnouncement()
        if not UI.Main then return end
        if UI.Announcement and UI.Announcement.Parent then
            UI.Announcement:Destroy()
        end
        local WHITE = Color3.fromRGB(255, 255, 255)
        local STROKE_T = 0.8
        local mainSize = UI.Main.AbsoluteSize
        local width = math.max(math.floor(mainSize.X * 0.92), 550)
        local height = math.max(math.floor(mainSize.Y * 0.85), 350)
        local panel = New(_p5helb(292), {
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundColor3 = Theme.Colors.Window,
            Position = UDim2.fromScale(0.5, 0.5),
            Size = UDim2.fromOffset(width, height),
            Parent = UI.Main, ZIndex = 70,
        })
        UI.Announcement = panel
        AddCorner(panel, Theme.Radius.Window)
        do local s = AddStroke(panel, WHITE); s.Transparency = STROKE_T end -- ① 公告外边框
        local header = New(_p5helb(293), {
            BackgroundColor3 = Theme.Colors.PanelDeep,
            Position = UDim2.fromOffset(1, 1),
            Size = UDim2.new(1, -2, 0, 40),
            Parent = panel, ZIndex = 71,
        })
        AddCorner(header, Theme.Radius.Window)

        local title = New(_p5helb(294), {
            BackgroundTransparency = 1,
            Position = UDim2.fromOffset(0, 0),
            Size = UDim2.new(0.98, 0, 1.25, 0),
            Text = _G.BFH.AppConfig.AnnouncementTitle or _p5helb(295),
            TextColor3 = Theme.Colors.Text,
            TextSize = 18,
            TextXAlignment = Enum.TextXAlignment.Center,
            TextYAlignment = Enum.TextYAlignment.Center,
            Font = Enum.Font.SourceSansBold,
            Parent = header, ZIndex = 72,
        })
        local close = Components.IconButton(header, _p5helb(296), "X", "", function()
            if panel and panel.Parent then panel:Destroy() end
            if UI.Announcement == panel then UI.Announcement = nil end
        end)
        close.AnchorPoint = Vector2.new(1, 0.5)
        close.Position = UDim2.new(1, -8, 0.5, 0)
        close.Size = UDim2.fromOffset(28, 28)
        close.ZIndex = 72
        close.Visible = false  -- 初始隐藏，3秒后显示
        task.spawn(function() task.wait(3) close.Visible = true end)
        do local s = AddStroke(close, WHITE); s.Transparency = STROKE_T end -- ④ 关闭按钮
        local body = New(_p5helb(297), {
            BackgroundColor3 = Theme.Colors.Background,
            Position = UDim2.fromOffset(12, 52),
            Size = UDim2.new(1, -24, 1, -64),
            CanvasSize = UDim2.fromOffset(0, 0),
            ScrollBarThickness = 3,
            ScrollBarImageColor3 = Theme.Colors.StrokeStrong,
            ScrollingDirection = Enum.ScrollingDirection.Y,
            Parent = panel, ZIndex = 71,
        })
        AddCorner(body, Theme.Radius.Panel)
        do local s = AddStroke(body, WHITE); s.Transparency = STROKE_T end -- ⑤ 内容区域外边框
        local text = New(_p5helb(298), {
            BackgroundTransparency = 1,
            Size = UDim2.new(1, -30, 0, 0),
            Position = UDim2.fromOffset(14, 10),
            Text = _G.BFH.AppConfig.AnnouncementText or "",
            TextColor3 = Theme.Colors.TextMuted,
            TextSize = 15,
            TextWrapped = true,
            TextXAlignment = Enum.TextXAlignment.Center,
            TextYAlignment = Enum.TextYAlignment.Top,
            Font = Theme.Font,
            Parent = body, ZIndex = 72,
        })
        local function updateCanvas()
            task.wait()
            if text and text.Parent then
                local h = Services.TextService:GetTextSize(text.Text, text.TextSize, text.Font, Vector2.new(text.AbsoluteSize.X, math.huge)).Y
                text.Size = UDim2.new(1, -30, 0, h)
                body.CanvasSize = UDim2.fromOffset(0, h + 24)
            end
        end
        task.spawn(updateCanvas)
        UI.Track(body:GetPropertyChangedSignal(_p5helb(299)):Connect(updateCanvas))
        UI.MakeDraggable(panel, header)
    end

    function UI.ShowCenterToast(text)
        if not UI.RootGui then return end
        text = text or _p5helb(300)

        local root = New(_p5helb(301), {
            AnchorPoint = Vector2.new(0.5, 0),
            BackgroundColor3 = Color3.fromRGB(0, 0, 0),
            BackgroundTransparency = 1,
            Position = UDim2.new(0.5, 0, 0, -28),
            Size = UDim2.fromOffset(200, 28),
            Parent = UI.RootGui,
            ZIndex = 200,
        })
        root.Visible = false
        AddCorner(root, Theme.Radius.Panel)
        local stroke = AddStroke(root, Color3.fromRGB(255, 255, 255))
        stroke.Transparency = 0.8

        root.ClipsDescendants = false
        local label = Components.Label(root, text, 16, Color3.fromRGB(255, 255, 255), false)
        label.Size = UDim2.new(1, -8, 1, 0)
        label.Position = UDim2.fromOffset(4, 0)
        label.TextXAlignment = Enum.TextXAlignment.Center
        label.ZIndex = 201

        -- slide down from off-screen
        root.Visible = true
        Tween(root, { BackgroundTransparency = 0, Position = UDim2.new(0.5, 0, 0, 16) }, 0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

        task.delay(5, function()
            if not root or not root.Parent then return end
            Tween(root, { BackgroundTransparency = 1, Position = UDim2.new(0.5, 0, 0, -28) }, 0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
            task.delay(0.4, function()
                if root and root.Parent then root:Destroy() end
            end)
        end)
    end

    function UI.PositionTooltip(object)
        if not UI.Tooltip or not UI.RootGui then
            return
        end

        object = object or UI.TooltipSource
        if not object then
            return
        end

        local rootPosition = UI.RootGui.AbsolutePosition
        local objectPosition = object.AbsolutePosition
        local objectSize = object.AbsoluteSize
        local gap = 8
        local x = objectPosition.X - rootPosition.X + objectSize.X + gap
        local y = objectPosition.Y - rootPosition.Y + objectSize.Y + gap

        UI.Tooltip.Position = UDim2.fromOffset(math.floor(x + 0.5), math.floor(y + 0.5))
    end

    function UI.ShowTooltip(text, object)
        if not UI.RootGui then
            return
        end

        UI.TooltipToken += 1
        local token = UI.TooltipToken
        UI.TooltipSource = object
        UI.HideTooltip(nil, true)

        local function createTooltip()
            if token ~= UI.TooltipToken or UI.TooltipSource ~= object or not UI.RootGui then
                return
            end

            local textSize = Services.TextService:GetTextSize(tostring(text), 12, Theme.Font, Vector2.new(300, 120))
            local width = math.clamp(textSize.X + 22, 180, 320)
            local height = math.clamp(textSize.Y + 18, 38, 104)

            local tooltip = New(_p5helb(302), {
                BackgroundColor3 = Theme.Colors.PanelDeep,
                BackgroundTransparency = 1,
                Size = UDim2.fromOffset(width, math.max(1, height - 6)),
                Parent = UI.RootGui,
                ZIndex = 120,
            })
            UI.TooltipScale = New(_p5helb(303), {
                Scale = _G.BFH.State.DpiScale,
                Parent = tooltip,
            })
            AddCorner(tooltip, Theme.Radius.Control)
            AddStroke(tooltip, Theme.Colors.StrokeStrong)
            AddPadding(tooltip, 10, 10, 7, 7)

            local label = Components.Label(tooltip, text, 12, Theme.Colors.TextMuted, false)
            label.Size = UDim2.fromScale(1, 1)
            label.TextWrapped = true
            label.TextYAlignment = Enum.TextYAlignment.Top
            label.TextTransparency = 1
            label.ZIndex = 121

            UI.Tooltip = tooltip
            UI.PositionTooltip(object)

            Tween(tooltip, {
                BackgroundTransparency = 0,
                Size = UDim2.fromOffset(width, height),
            }, Theme.Animation.Fast, Theme.Animation.EmphasisStyle)
            Tween(label, { TextTransparency = 0 }, Theme.Animation.Fast)
            local stroke = tooltip:FindFirstChildOfClass(_p5helb(304))
            if stroke then
                stroke.Transparency = 1
                Tween(stroke, { Transparency = 0 }, Theme.Animation.Fast)
            end
        end

        if Theme.Animation.TooltipDelay > 0 then
            task.delay(Theme.Animation.TooltipDelay, createTooltip)
        else
            createTooltip()
        end
    end

    function UI.HideTooltip(source, keepToken)
        if source and UI.TooltipSource and source ~= UI.TooltipSource then
            return
        end

        if not keepToken then
            UI.TooltipToken += 1
            UI.TooltipSource = nil
        end

        if UI.Tooltip then
            local tooltip = UI.Tooltip
            UI.Tooltip = nil
            local stroke = tooltip:FindFirstChildOfClass(_p5helb(305))
            for _, child in ipairs(tooltip:GetDescendants()) do
                if child:IsA(_p5helb(306)) or child:IsA(_p5helb(307)) or child:IsA(_p5helb(308)) then
                    Tween(child, { TextTransparency = 1 }, Theme.Animation.Fast)
                end
            end
            if stroke then
                Tween(stroke, { Transparency = 1 }, Theme.Animation.Fast)
            end
            Tween(tooltip, { BackgroundTransparency = 1 }, Theme.Animation.Fast)
            task.delay(Theme.Animation.Fast + 0.03, function()
                if tooltip and tooltip.Parent then
                    tooltip:Destroy()
                end
            end)
        end
    end

    function UI.Confirm(title, text, onConfirm)
        if not UI.RootGui then
            return
        end

        if not _G.BFH.State.ConfirmEnabled then
            if onConfirm then
                onConfirm()
            end
            return
        end

        if UI.ModalRoot then
            UI.ModalRoot:Destroy()
        end

        local overlay = New(_p5helb(309), {
            BackgroundColor3 = Theme.Colors.Overlay,
            BackgroundTransparency = 1,
            Size = UDim2.fromScale(1, 1),
            Text = "",
            Parent = UI.Main,
            ZIndex = 100,
        })
        UI.ModalRoot = overlay
        AddCorner(overlay, Theme.Radius.Window)

        local modal = New(_p5helb(310), {
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundColor3 = Theme.Colors.Window,
            BackgroundTransparency = 1,
            Position = UDim2.fromScale(0.5, 0.5),
            Size = UDim2.fromOffset(447, 205),
            Parent = overlay,
            ZIndex = 101,
        })
        UI.ModalScale = New(_p5helb(311), {
            Scale = _G.BFH.State.DpiScale,
            Parent = modal,
        })
        AddCorner(modal, Theme.Radius.Window)
        local modalStroke = AddStroke(modal, Theme.Colors.StrokeStrong)
        modalStroke.Transparency = 1

        local titleLabel = Components.Label(modal, title or _p5helb(312), 22, Theme.Colors.Text, true)
        titleLabel.Position = UDim2.fromOffset(0, 20)
        titleLabel.Size = UDim2.new(1, 0, 0, 32)
        titleLabel.TextXAlignment = Enum.TextXAlignment.Center
        titleLabel.TextTransparency = 1
        titleLabel.ZIndex = 102

        local desc = Components.Label(modal, text or _p5helb(313), 18, Theme.Colors.TextMuted, false)
        desc.TextXAlignment = Enum.TextXAlignment.Center
        desc.Position = UDim2.fromOffset(24, 56)
        desc.Size = UDim2.new(1, -48, 0, 64)
        desc.TextWrapped = true
        desc.TextTransparency = 1
        desc.ZIndex = 102

        local cancel = New(_p5helb(314), {
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundColor3 = Theme.Colors.Control,
            Position = UDim2.new(0.5, -65, 1, -48),
            Size = UDim2.fromOffset(90, 36),
            Text = _p5helb(315),
            TextSize = 16,
            TextColor3 = Theme.Colors.TextMuted,
            TextTransparency = 1,
            Parent = modal,
            ZIndex = 102,
        })
        AddCorner(cancel, Theme.Radius.Control)
        AddStroke(cancel)
        Components.Interaction(cancel, Theme.Colors.Control, Theme.Colors.ControlHover, Theme.Colors.AccentDim)

        local confirm = New(_p5helb(316), {
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundColor3 = Theme.Colors.AccentDim,
            Position = UDim2.new(0.5, 65, 1, -48),
            Size = UDim2.fromOffset(90, 36),
            Text = _p5helb(317),
            TextSize = 16,
            TextColor3 = Theme.Colors.Text,
            TextTransparency = 1,
            Parent = modal,
            ZIndex = 102,
        })
        AddCorner(confirm, Theme.Radius.Control)
        AddStroke(confirm, Theme.Colors.AccentSoft)
        Components.Interaction(confirm, Theme.Colors.AccentDim, Theme.Colors.AccentSoft, Theme.Colors.Accent)

        local function close()
            local root = UI.ModalRoot
            if not root then
                return
            end
            UI.ModalRoot = nil
            Tween(overlay, { BackgroundTransparency = 1 }, Theme.Animation.Fast)
            Tween(modal, {
                BackgroundTransparency = 1,
                Size = UDim2.fromOffset(447, 205),
            }, Theme.Animation.Fast)
            Tween(modalStroke, { Transparency = 1 }, Theme.Animation.Fast)
            Tween(titleLabel, { TextTransparency = 1 }, Theme.Animation.Fast)
            Tween(desc, { TextTransparency = 1 }, Theme.Animation.Fast)
            Tween(cancel, { TextTransparency = 1, BackgroundTransparency = 1 }, Theme.Animation.Fast)
            Tween(confirm, { TextTransparency = 1, BackgroundTransparency = 1 }, Theme.Animation.Fast)
            task.delay(Theme.Animation.Fast + 0.03, function()
                if root and root.Parent then
                    root:Destroy()
                end
            end)
        end

        cancel.Activated:Connect(close)
        overlay.Activated:Connect(close)
        confirm.Activated:Connect(function()
            close()
            if onConfirm then
                onConfirm()
            end
        end)

        Tween(overlay, { BackgroundTransparency = 0.45 }, Theme.Animation.Normal)
        Tween(modal, {
            BackgroundTransparency = 0,
            Size = UDim2.fromOffset(468, 221),
        }, Theme.Animation.Normal, Theme.Animation.EmphasisStyle)
        Tween(modalStroke, { Transparency = 0 }, Theme.Animation.Normal)
        Tween(titleLabel, { TextTransparency = 0 }, Theme.Animation.Normal)
        Tween(desc, { TextTransparency = 0 }, Theme.Animation.Normal)
        Tween(cancel, { TextTransparency = 0 }, Theme.Animation.Normal)
        Tween(confirm, { TextTransparency = 0 }, Theme.Animation.Normal)
    end

    function UI.MakeDraggable(frame, handle)
        local dragging = false
        local startMouse = nil
        local startPosition = nil
        local moved = false
        local dragInputType = nil

        handle.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                if frame == UI.ShowButton and UI.ShowButtonDragLock then return end
                dragging = true
                moved = false
                startMouse = input.Position
                startPosition = frame.Position
                dragInputType = input.UserInputType
            end
        end)

        UI.Track(Services.UserInputService.InputChanged:Connect(function(input)
            if not dragging then
                return
            end

            if dragInputType == Enum.UserInputType.Touch then
                if input.UserInputType ~= Enum.UserInputType.Touch then
                    return
                end
            elseif input.UserInputType ~= Enum.UserInputType.MouseMovement then
                return
            end

            local delta = input.Position - startMouse
            if math.abs(delta.X) > 8 or math.abs(delta.Y) > 8 then
                moved = true
                if frame == UI.ShowButton then
                    UI.ShowButtonDragged = true
                end
            end
            local nextPosition = UDim2.new(
                startPosition.X.Scale,
                startPosition.X.Offset + delta.X,
                startPosition.Y.Scale,
                startPosition.Y.Offset + delta.Y
            )
            frame.Position = ClampFrameToScreen(frame, nextPosition)
        end))

        UI.Track(Services.UserInputService.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                if frame == UI.ShowButton and not moved and startMouse then
                    local totalDelta = input.Position - startMouse
                    if math.abs(totalDelta.X) > 8 or math.abs(totalDelta.Y) > 8 then
                        moved = true
                        UI.ShowButtonDragged = true
                    end
                end
                if frame == UI.ShowButton and moved then
                    task.delay(0.08, function()
                        UI.ShowButtonDragged = false
                    end)
                end
                dragging = false
                dragInputType = nil
            end
        end))
    end

    function UI.BuildSidebar(parent)
        UI.Sidebar = New(_p5helb(318), {
            BackgroundColor3 = Theme.Colors.Window,
            Position = UDim2.fromOffset(1, 42),
            Size = UDim2.new(0, 149, 1, -43),
            CanvasSize = UDim2.fromOffset(0, 0),
            ScrollBarThickness = 3,
            Parent = parent,
        })
        AddCorner(UI.Sidebar, Theme.Radius.Window)

        local layout = New(_p5helb(319), {
            Padding = UDim.new(0, 7),
            Parent = UI.Sidebar,
        })
        SetScrollCanvas(UI.Sidebar, layout, 28, _p5helb(320))

        for _, page in ipairs(_G.BFH.Pages.List) do
            local button = New(_p5helb(321), {
                BackgroundColor3 = Theme.Colors.Window,
                Size = UDim2.new(1, 0, 0, 36),
                Text = "",
                Parent = UI.Sidebar,
            })
            AddCorner(button, Theme.Radius.Panel)
            Components.Interaction(
                button,
                function()
                    return page.id == _G.BFH.State.CurrentPage and Theme.Colors.AccentDim or Theme.Colors.Window
                end,
                function()
                    return page.id == _G.BFH.State.CurrentPage and Theme.Colors.AccentDim or Theme.Colors.Control
                end,
                Theme.Colors.AccentDim
            )
            local sideScale = New(_p5helb(322), { Scale = 1, Parent = button })

            local name = Components.Label(button, page.title, 13, Theme.Colors.TextMuted, true)
            name.Name = _p5helb(323)
            name.Position = UDim2.fromOffset(0, 0)
            name.Size = UDim2.new(1, 0, 1, 0)
            name.TextXAlignment = Enum.TextXAlignment.Center
            name.Visible = not UI.SidebarCollapsed

            button.MouseButton1Click:Connect(function()
                Tween(sideScale, { Scale = 0.95 }, Theme.Animation.Press)
                task.delay(Theme.Animation.Press + 0.04, function()
                    Tween(sideScale, { Scale = 1 }, Theme.Animation.Fast)
                end)
                UI.SetPage(page.id)
                _G.BFH.State:AddLog(_p5helb(324), _p5helb(325) .. page.title, _p5helb(326) .. page.id)
            end)

            UI.SidebarButtons[page.id] = button
        end

        return layout
    end

    function UI.UpdateBtnPos()
        if not UI.ShowButton then return end
        if _G.BFH.State.Toggles[_p5helb(327)] then
            local x = _G.BFH.State.Sliders[_p5helb(328)] or 90
            local y = _G.BFH.State.Sliders[_p5helb(329)] or 50
            UI.ShowButton.Position = UDim2.new(1, -x, 0, y)
            UI.ShowButton.Visible = true
            UI.ShowButtonDragLock = true
        else
            if UI.Main and UI.Main.Visible then
                UI.ShowButton.Visible = false
            end
            UI.ShowButton.Position = UDim2.new(1, -90, 0, 50)
            UI.ShowButtonDragLock = false
        end
    end
    
    function UI.UpdateBtnSize()
        if not UI.ShowButton then return end
        local sz = _G.BFH.State.Sliders[_p5helb(330)] or 80
        UI.ShowButton.Size = UDim2.fromOffset(sz, math.floor(sz * 0.5))
    end

    function UI.Build()
        UI.Destroy()
        _G.BFH.RegisterPageKeys()

        local root = New(_p5helb(331), {
            Name = _G.BFH.AppConfig.GuiName,
            ResetOnSpawn = false,
            IgnoreGuiInset = true,
            Parent = UI.GetScreenParent(),
        })
        UI.RootGui = root
        UI.BuildToastRoot(root)

        local initialWindowSize = UI.GetBoundedWindowSize()
        local main = New(_p5helb(332), {
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundColor3 = Theme.Colors.Window,
            Position = UDim2.fromScale(0.5, 0.5),
            Size = UDim2.fromOffset(initialWindowSize.X, initialWindowSize.Y),
            Parent = root,
        })
        AddCorner(main, Theme.Radius.Window)
        AddStroke(main, Theme.Colors.StrokeStrong)
        main.ClipsDescendants = true
        UI.Main = main

        UI.Scale = New(_p5helb(333), {
            Scale = _G.BFH.State.DpiScale,
            Parent = main,
        })

        local topbar = New(_p5helb(334), {
            BackgroundColor3 = Theme.Colors.PanelDeep,
            Position = UDim2.fromOffset(1, 1),
            Size = UDim2.new(1, -2, 0, 41),
            Parent = main,
        })
        AddCorner(topbar, Theme.Radius.Window)

        local logo = New(_p5helb(335), {
            BackgroundTransparency = 1,
            Image = _p5helb(336),
            ScaleType = Enum.ScaleType.Fit,
            Position = UDim2.fromOffset(10, 8),
            Size = UDim2.fromOffset(125, 26),
            Parent = topbar,
        })

        local topRight = New(_p5helb(337), {
            AnchorPoint = Vector2.new(1, 0.5),
            BackgroundTransparency = 1,
            Position = UDim2.new(1, -10, 0.5, 0),
            Size = UDim2.new(1, -150, 0, 30),
            Parent = topbar,
        })

        -- Top-right controls: buttons anchored to right edge
        local topRightLayout = {
            MarqueePosition = UDim2.fromOffset(0, 0),
            MarqueeSize = UDim2.new(1, -75, 0, 30),
            MinimizePosition = UDim2.new(1, -70, 0, -2.5),
            MinimizeSize = UDim2.fromOffset(35, 35),
            ClosePosition = UDim2.new(1, -30, 0, -2.5),
            CloseSize = UDim2.fromOffset(35, 35),
        }

        local closeButton = Components.IconButton(topRight, _p5helb(338), "X", _p5helb(339), function()
            UI.Confirm(_p5helb(340), _p5helb(341), function()
                _G.BFH.State:AddLog(_p5helb(342), _p5helb(343), _p5helb(344))
                UI.Destroy()
            end)
        end)
        closeButton.Position = topRightLayout.ClosePosition
        closeButton.Size = topRightLayout.CloseSize

        local minimizeButton = Components.IconButton(topRight, _p5helb(345), "-", _p5helb(346), function()
            UI.SetVisible(false)
        end)
        minimizeButton.Position = topRightLayout.MinimizePosition
        minimizeButton.Size = topRightLayout.MinimizeSize

        local marquee = Components.Marquee(topRight, _G.BFH.AppConfig.MarqueeText)
        marquee.Position = topRightLayout.MarqueePosition
        marquee.Size = topRightLayout.MarqueeSize

        UI.BuildSidebar(main)

        UI.Content = New(_p5helb(347), {
            BackgroundColor3 = Theme.Colors.Background,
            Position = UDim2.fromOffset(150, 42),
            Size = UDim2.new(1, -150, 1, -42),
            CanvasSize = UDim2.fromOffset(0, 0),
            ScrollBarThickness = 3,
            Parent = main,
        })


        UI.ShowButton = New(_p5helb(348), {
            AnchorPoint = Vector2.new(1, 0),
            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
            Position = UDim2.new(1, -90, 0, 50),
            Size = UDim2.fromOffset(80, 40),
            Image = _p5helb(349),
            BackgroundTransparency = 1,
            ZIndex = 999,
            Visible = false,
            Parent = root,
        })
        AddCorner(UI.ShowButton, 8)
        UI.ShowButtonStroke = AddStroke(UI.ShowButton, Color3.fromRGB(255, 255, 255))
        UI.ShowScale = New(_p5helb(350), {
            Scale = _G.BFH.State.DpiScale,
            Parent = UI.ShowButton,
        })

        UI._showDragStart = nil
        UI.ShowButton.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                UI._showDragStart = input.Position
            end
        end)
        UI.ShowButton.InputEnded:Connect(function(input)
            if UI._showDragStart and (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
                local dx = math.abs(input.Position.X - UI._showDragStart.X)
                local dy = math.abs(input.Position.Y - UI._showDragStart.Y)
                if dx > 8 or dy > 8 then
                    UI.ShowButton.Active = false
                    task.delay(0.15, function() UI.ShowButton.Active = true end)
                end
                UI._showDragStart = nil
            end
        end)
        UI.ShowButton.Activated:Connect(function()
            Tween(UI.ShowButton, { Size = UDim2.fromOffset(72, 36) }, Theme.Animation.Press)
            task.delay(Theme.Animation.Press + 0.04, function()
                Tween(UI.ShowButton, { Size = UDim2.fromOffset(80, 40) }, Theme.Animation.Fast)
            end)
            UI.SetVisible(true)
        end)

        UI.MakeDraggable(main, topbar)
        UI.MakeDraggable(UI.ShowButton, UI.ShowButton)
        UI.Track(Services.UserInputService.InputBegan:Connect(function(input, processed)
            if processed or input.UserInputType ~= Enum.UserInputType.Keyboard then
                return
            end

            local toggleKeyName = _G.BFH.State.Keybinds[_p5helb(351)] or _p5helb(352)
            if input.KeyCode.Name == toggleKeyName then
                UI.SetVisible(not (UI.Main and UI.Main.Visible))
            end
        end))
        UI.Track(root:GetPropertyChangedSignal(_p5helb(353)):Connect(function()
            UI.ApplyWindowBounds()
        end))

        UI.SetPage(_G.BFH.AppConfig.DefaultPage)
        task.defer(function()
            UI.ShowAnnouncement()
        end)
        UI.UpdateBtnPos()
        _G.BFH.State:AddLog(_p5helb(354), _p5helb(355), _p5helb(356))
        UI.ShowCenterToast(_p5helb(357))
    end

_G.BFH.Theme = Theme
_G.BFH.Components = Components
_G.BFH.Services = Services
_G.BFH.UI = UI
_G.BFH.Tween = Tween
_G.BFH.New = New
_G.BFH.AddCorner = AddCorner
_G.BFH.AddStroke = AddStroke
_G.BFH.AddPadding = AddPadding
_G.BFH.SetScrollCanvas = SetScrollCanvas
_G.BFH.UpdateScrollCanvas = UpdateScrollCanvas
_G.BFH.ContainsText = ContainsText
_G.BFH.DisconnectConnections = DisconnectConnections
_G.BFH.RefreshContentCanvas = RefreshContentCanvas
_G.BFH.ShallowCopy = ShallowCopy
_G.BFH.ClampFrameToScreen = ClampFrameToScreen
end