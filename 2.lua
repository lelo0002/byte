print('fuck you nigga')
local S = setmetatable({}, {__index = function(t, k) local s = game:GetService(k); t[k] = s; return s end})
local repo = 'https://raw.githubusercontent.com/mstudio45/LinoriaLib/main/'
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/lelo0002/hai../refs/heads/main/roxylinoria.lua'))()
local ThemeManager = loadstring(game:HttpGet('https://raw.githubusercontent.com/lelo0002/hai../refs/heads/main/theme.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. "addons/SaveManager.lua"))()
local Options = Library.Options
local Toggles = Library.Toggles
local Window = Library:CreateWindow({
Title = "                                          $$ roxy.win $$",
Center = true,
AutoShow = true,
MenuFadeTime = 0.1,
Resizable = true,
ShowCustomCursor = false,
NotifySide = "Bottom",
Size = UDim2.new(0, 800, 0, 600)
})
for _, v in ipairs(Window.Holder:GetDescendants()) do
if v:IsA("TextLabel") and v.Text:find("roxy.win") then
v.RichText = true
break
end
end
local Tabs = {
A = Window:AddTab("Combat"),
B = Window:AddTab("Visuals"),
C = Window:AddTab("Misc"),
["UI Settings"] = Window:AddTab("Configs")
}



local P, RS, WS, CG, RSto, UIS = S.Players, S.RunService, S.Workspace, S.CoreGui, S.ReplicatedStorage, S.UserInputService
local C, LP = WS.CurrentCamera, P.LocalPlayer
local EF = WS:WaitForChild("Entities", 10) or WS:WaitForChild("Players", 10)
local L={}
L.DMax=2000 L.FIn=0.15 L.FOut=0.15 L.Font=2 L.CType="Highlight" L.CB="AlwaysOnTop" L.CShrink=1.2 L.BThick=0.5 L.BOThick=3 L.HGE=true
L.BC=Color3.fromRGB(255,255,255) L.BFC=Color3.fromRGB(84,132,171) L.NTC=Color3.fromRGB(255,255,255) L.WTC=Color3.fromRGB(255,255,255)
L.DTC=Color3.fromRGB(255,255,255) L.HHC=Color3.fromRGB(0,255,0) L.HLC=Color3.fromRGB(255,0,0) L.HTC=Color3.fromRGB(255,255,255) L.ATC=Color3.fromRGB(255,255,255)
L.CC=Color3.fromRGB(84,132,171) L.CTrans=0.5 L.ID={} L.CD={} L.AD={} L.DD={} L.WD={} L.ND={} L.BD={} L.BOD={} L.BFD={} L.HD={} L.HOD={} L.HTD={}
L.AC=setmetatable({},{__mode="k"}) L.CH=setmetatable({},{__mode="k"}) L.VH=setmetatable({},{__mode="k"}) L.FC=setmetatable({},{__mode="k"})
L.HTFC=setmetatable({},{__mode="k"}) L.IFC=setmetatable({},{__mode="k"}) L.CFC=setmetatable({},{__mode="k"})
local espCache, itemCache, crateCache, gunPartCache, xtCache = {}, {}, {}, {}, {}
L.Cache = {ESP = espCache, Item = itemCache, Crate = crateCache, Gun = gunPartCache, XT = xtCache, Target = {}}
L.State = {ACT_TRC = {}, HBOC = setmetatable({}, {__mode = "k"}), lastVK = 0, vkCooldown = 0, PriorityTargets = setmetatable({}, {__mode = "k"}), lastGunCheck = 0, lastXtCheck = 0, xtPoints = {}}
L.Connections = {}
L.BTE=false L.BTC=Color3.fromRGB(83,132,171) L.BTS=0.1 L.BTA=3 L.BTD=1.5 L.BTSt="1"
L.XHE=false L.XHC=Color3.fromRGB(255,255,255) L.XHS=false L.XHL=false L.XHR=false L.XRR=false L.XS=20 L.XSp=150 L.XT=1 L.XG=2 L.XSt="1" L.XP="Center Of Screen" L.XEF=2 L.XEC=Color3.new(1,1,1)
L.SA_E=false L.SA_HC=100 L.SA_P="Head" L.SA_SF=false L.SA_DF=false L.SA_FR=120 L.SA_FC=Color3.fromRGB(255,255,255) L.SA_MD=500 L.SA_T=nil L.SA_FT=false L.SA_ST=25
L.W_AC=Color3.fromRGB(150,150,150) L.W_CAE=false L.W_SE=false L.W_SS="ElegantMorning" L.W_CTE=false L.W_CV=12 L.W_OCT=S.Lighting.ClockTime
L.W_BE=false L.W_BC=Color3.fromRGB(255,255,255) L.W_BS=24 L.W_BT=2 L.W_BI=1
L.W_HSE=false L.W_HSV=1 L.W_HSS="Neverlose"
L.W_KSE=false L.W_KSV=1 L.W_KSS="Neverlose"
L.CE_E=false L.CEC=Color3.new(1,1,1) L.CRC=false L.CDMax=5000 L.CSort={Common=true,Uncommon=true,Rare=true,Epic=true,Legendary=true,Mythic=true,Divine=true} L.CFont=2
L.FlyE=false L.FlyS=20 L.FE=false L.PE=false L.WFE=false L.FCOC=Color3.fromRGB(0,255,100) L.PCOC=Color3.fromRGB(255,100,0) L.Friendlies={} L.Priorities={}
L.KM = {
"Roxy just frame mogged %s",
"Roxy gave %s high cortisol",
"%s got mogged by Roxy",
"%s couldn’t compete with Roxy’s bone structure",
}
L.SoundMap = {
["Minecraft experience"] = "rbxassetid://7151570575",
Neverlose = "rbxassetid://8726881116",
Gamesense = "rbxassetid://4817809188",
One = "rbxassetid://7380502345",
Bell = "rbxassetid://6534947240",
Rust = "rbxassetid://1255040462",
TF2 = "rbxassetid://2868331684",
Slime = "rbxassetid://6916371803",
["Among Us"] = "rbxassetid://5700183626",
Minecraft = "rbxassetid://4018616850",
["CS:GO"] = "rbxassetid://6937353691",
Saber = "rbxassetid://8415678813",
Baimware = "rbxassetid://3124331820",
Osu = "rbxassetid://7149255551",
["TF2 Critical"] = "rbxassetid://296102734",
Bat = "rbxassetid://3333907347",
["Call of Duty"] = "rbxassetid://5952120301",
Bubble = "rbxassetid://6534947588",
Pick = "rbxassetid://1347140027",
Pop = "rbxassetid://198598793",
Bruh = "rbxassetid://4275842574",
["[Bamboo]"] = "rbxassetid://3769434519",
Crowbar = "rbxassetid://546410481",
Weeb = "rbxassetid://6442965016",
Beep = "rbxassetid://8177256015",
Bambi = "rbxassetid://8437203821",
Stone = "rbxassetid://3581383408",
["Old Fatality"] = "rbxassetid://6607142036",
Click = "rbxassetid://8053704437",
Ding = "rbxassetid://7149516994",
Snow = "rbxassetid://6455527632",
Laser = "rbxassetid://7837461331",
Mario = "rbxassetid://2815207981",
Steve = "rbxassetid://4965083997",
Snowdrake = "rbxassetid://7834724809",
Default = "rbxassetid://4581728529"
}
L.Skyboxes = {
Space = { Bk = "rbxassetid://159454299", Dn = "rbxassetid://159454296", Ft = "rbxassetid://159454293", Lf = "rbxassetid://159454286", Rt = "rbxassetid://159454300", Up = "rbxassetid://159454288" },
Dark = { Bk = "rbxassetid://12064107", Dn = "rbxassetid://12064152", Ft = "rbxassetid://12064121", Lf = "rbxassetid://12063984", Rt = "rbxassetid://12064115", Up = "rbxassetid://12064131" },
Pink = { Bk = "rbxassetid://11427769401", Dn = "rbxassetid://11427770685", Ft = "rbxassetid://11427769401", Lf = "rbxassetid://11427769401", Rt = "rbxassetid://11427769401", Up = "rbxassetid://11427771954" },
PurpleNebula = { Bk = "rbxassetid://129876530632297", Dn = "rbxassetid://108406529909981", Ft = "rbxassetid://104400530594543", Lf = "rbxassetid://73372229972523", Rt = "rbxassetid://87408857415924", Up = "rbxassetid://137817405681365" },
Red = { Bk = "rbxassetid://401664839", Dn = "rbxassetid://401664862", Ft = "rbxassetid://401664960", Lf = "rbxassetid://401664881", Rt = "rbxassetid://401664901", Up = "rbxassetid://401664936" },
White = { Bk = "rbxassetid://6213159304", Dn = "rbxassetid://6213218651", Ft = "rbxassetid://6213159304", Lf = "rbxassetid://6213159304", Rt = "rbxassetid://6213159304", Up = "rbxassetid://6213176544" },
Cartoon1 = { Bk = "rbxassetid://15114954171", Dn = "rbxassetid://15114958869", Ft = "rbxassetid://15114963740", Lf = "rbxassetid://15114957947", Rt = "rbxassetid://15114955238", Up = "rbxassetid://15114948718" },
Cartoon2 = { Bk = "rbxassetid://6295671271", Dn = "rbxassetid://6295671382", Ft = "rbxassetid://6295671136", Lf = "rbxassetid://6295670996", Rt = "rbxassetid://6295671509", Up = "rbxassetid://6295671667" },
PurpleClouds = { Bk = "rbxassetid://151165214", Dn = "rbxassetid://151165197", Ft = "rbxassetid://151165224", Lf = "rbxassetid://151165191", Rt = "rbxassetid://151165206", Up = "rbxassetid://151165227" },
CloudySkies = { Bk = "rbxassetid://151165214", Dn = "rbxassetid://151165197", Ft = "rbxassetid://151165224", Lf = "rbxassetid://151165191", Rt = "rbxassetid://151165206", Up = "rbxassetid://151165227" },
PurpleAndBlue = { Bk = "rbxassetid://149397692", Dn = "rbxassetid://149397686", Ft = "rbxassetid://149397697", Lf = "rbxassetid://149397684", Rt = "rbxassetid://149397688", Up = "rbxassetid://149397702" },
VividSkies = { Bk = "rbxassetid://271042516", Dn = "rbxassetid://271077243", Ft = "rbxassetid://271042556", Lf = "rbxassetid://271042310", Rt = "rbxassetid://271042467", Up = "rbxassetid://271077958" },
Twighlight = { Bk = "rbxassetid://264908339", Dn = "rbxassetid://264907909", Ft = "rbxassetid://264909420", Lf = "rbxassetid://264909758", Rt = "rbxassetid://264908886", Up = "rbxassetid://264907379" },
Vaporwave = { Bk = "rbxassetid://1417494030", Dn = "rbxassetid://1417494146", Ft = "rbxassetid://1417494253", Lf = "rbxassetid://1417494402", Rt = "rbxassetid://1417494499", Up = "rbxassetid://1417494643" },
Clouds = { Bk = "rbxassetid://570557514", Dn = "rbxassetid://570557775", Ft = "rbxassetid://570557559", Lf = "rbxassetid://570557620", Rt = "rbxassetid://570557672", Up = "rbxassetid://570557727" },
NightSky = { Bk = "rbxassetid://12064107", Dn = "rbxassetid://12064152", Ft = "rbxassetid://12064121", Lf = "rbxassetid://12063984", Rt = "rbxassetid://12064115", Up = "rbxassetid://12064131" },
SettingSun = { Bk = "rbxassetid://626460377", Dn = "rbxassetid://626460216", Ft = "rbxassetid://626460513", Lf = "rbxassetid://626473032", Rt = "rbxassetid://626458639", Up = "rbxassetid://626460625" },
FadeBlue = { Bk = "rbxassetid://153695414", Dn = "rbxassetid://153695352", Ft = "rbxassetid://153695452", Lf = "rbxassetid://153695320", Rt = "rbxassetid://153695383", Up = "rbxassetid://153695471" },
ElegantMorning = { Bk = "rbxassetid://153767241", Dn = "rbxassetid://153767216", Ft = "rbxassetid://153767266", Lf = "rbxassetid://153767200", Rt = "rbxassetid://153767231", Up = "rbxassetid://153767288" },
Neptune = { Bk = "rbxassetid://218955819", Dn = "rbxassetid://218953419", Ft = "rbxassetid://218954524", Lf = "rbxassetid://218958493", Rt = "rbxassetid://218957134", Up = "rbxassetid://218950090" },
Redshift = { Bk = "rbxassetid://401664839", Dn = "rbxassetid://401664862", Ft = "rbxassetid://401664960", Lf = "rbxassetid://401664881", Rt = "rbxassetid://401664901", Up = "rbxassetid://401664936" },
}
local OSky = S.Lighting:FindFirstChildOfClass("Sky") and S.Lighting:FindFirstChildOfClass("Sky"):Clone()
if OSky then OSky.Name = "OSkyBackup" end
local function ASky(n)
local d = L.Skyboxes[n] if not d then return end
local s = S.Lighting:FindFirstChildOfClass("Sky") or Instance.new("Sky", S.Lighting)
s.SkyboxBk, s.SkyboxDn, s.SkyboxFt, s.SkyboxLf, s.SkyboxRt, s.SkyboxUp = d.Bk, d.Dn, d.Ft, d.Lf, d.Rt, d.Up
end
local function RSky()
local s = S.Lighting:FindFirstChildOfClass("Sky") if s then s:Destroy() end
if OSky then OSky:Clone().Parent = S.Lighting end
end
local function sH()
local success, result = pcall(function()
local url = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Desc&limit=100"
local data = game:GetService("HttpService"):JSONDecode(game:HttpGet(url))
if data and data.data then
for _, s in ipairs(data.data) do
if s.id ~= game.JobId and s.playing >= 12 and s.playing < s.maxPlayers then
return s.id
end
end
end
end)
if success and result then
S.TeleportService:TeleportToPlaceInstance(game.PlaceId, result, LP)
else
S.TeleportService:Teleport(game.PlaceId, LP)
end
end
local function cVK(g)
if not (g and g.Enabled) then return end
if not (Toggles and Toggles.ServerhopOnVotekick and Toggles.ServerhopOnVotekick.Value) then return end
local t = g:FindFirstChild("Frame") and g.Frame:FindFirstChild("Target") and g.Frame.Target.Text
if t and (t:find(LP.Name) or t:find(LP.DisplayName)) then
Library:Notify("Votekick Detected\nServerhopping In 5 Seconds", 5)
task.wait(5) sH()
end
end
local function aHS(s)
if not (s and s:IsA("Sound") and L.W_HSE) then return end
local id = L.SoundMap[L.W_HSS]
if id then s.SoundId = id end
s.Volume = L.W_HSV
end
S.SoundService.ChildAdded:Connect(function(c) if c.Name == "Headshot" then aHS(c) end end)
for _, s in ipairs(S.SoundService:GetChildren()) do if s.Name == "Headshot" then aHS(s) end end
local function sCM(m)
local c = S.TextChatService:FindFirstChild("TextChannels") and S.TextChatService.TextChannels:FindFirstChild("RBXGeneral")
if c then c:SendAsync(m) end
end
local function pS(id, vol)
local s = Instance.new("Sound")
s.SoundId = id s.Volume = vol s.Parent = S.SoundService
s:Play() s.Ended:Connect(function() s:Destroy() end)
task.delay(5, function() if s and s.Parent then s:Destroy() end end)
end
local function pKF(t)
local tc = t:gsub("<[^>]+>", "")
local clean = tc:gsub("^%s*%b[]%s*", "")
local k, w, v, d = clean:match("^%s*(.-)%s*%[(.-)%]%s*(.-)%s*%((.-)%)")
if not k then k, w, v = clean:match("^%s*(.-)%s*%[(.-)%]%s*(.-)%s*$") end
if k then
local kn = k:gsub("%b[]", ""):gsub("%s+$", "")
if kn:find(LP.Name) or kn:find(LP.DisplayName) then
local vn = v:gsub("%b[]", ""):gsub("^%s+", ""):gsub("%s+$", "")
if Toggles.KillSoundToggle and Toggles.KillSoundToggle.Value then
local id = L.SoundMap[L.W_KSS]
if id then pS(id, L.W_KSV) end
end
if Toggles.NotifyOnKill and Toggles.NotifyOnKill.Value then
Library:Notify("Killed " .. vn .. (d and " [ " .. d .. " ]" or ""), 3)
end
if Toggles.MessageOnKill and Toggles.MessageOnKill.Value then
local m = L.KM[math.random(1, #L.KM)]
sCM(string.format(m, vn))
end
end
end
end
local kf = LP.PlayerGui:FindFirstChild("Killfeed")
if kf and kf:FindFirstChild("Frame") then
kf.Frame.ChildAdded:Connect(function(c)
if c.Name == "Message" then
local l = c:WaitForChild("TextLabel", 2)
if l then pKF(l.Text) end
end
end)
end
LP.PlayerGui.DescendantAdded:Connect(function(d) if d.Name == "VotekickUI" then d:GetPropertyChangedSignal("Enabled"):Connect(function() cVK(d) end) cVK(d) end end)
if LP.PlayerGui:FindFirstChild("VotekickUI") then local d = LP.PlayerGui.VotekickUI d:GetPropertyChangedSignal("Enabled"):Connect(function() cVK(d) end) cVK(d) end
L.State.lastVK = 0
L.State.vkCooldown = 0
L.State.PriorityTargets = setmetatable({}, {__mode = "k"})
S.TextChatService.MessageReceived:Connect(function(msg)
if not (Toggles and Toggles.SpamVotekick and Toggles.SpamVotekick.Value) then return end
local text = msg.Text:lower()
if text:find("wait 15 minutes") and text:find("votekick") then
L.State.vkCooldown = os.clock() + 900
Library:Notify("Votekick Cooldown Detected\nWaiting 15 minutes", 5)
return
end
local sender = msg.TextSource and P:GetPlayerByUserId(msg.TextSource.UserId)
if not sender or sender == LP then return end
local text = msg.Text:lower()
local name = LP.Name:lower()
local dName = LP.DisplayName:lower()
if text:find(name) or text:find(dName) then
L.State.PriorityTargets[sender] = 2
elseif text:find("cheat") or text:find("hack") or text:find("votekick") then
if not (L.State.PriorityTargets[sender] and L.State.PriorityTargets[sender] > 1) then
L.State.PriorityTargets[sender] = 1
end
end
end)
task.spawn(function()
while task.wait(0.5) do
if Toggles.SpamVotekick and Toggles.SpamVotekick.Value and os.clock() >= L.State.vkCooldown then
if os.clock() - L.State.lastVK >= 32 then
local ui = LP.PlayerGui:FindFirstChild("VotekickUI")
if ui and ui.Enabled then
repeat task.wait(0.5) until not ui.Enabled or not Toggles.SpamVotekick.Value
if not Toggles.SpamVotekick.Value then continue end
task.wait(2)
end
local plrs = P:GetPlayers()
local targets = {}
local currentPrio = 0
for _, p in ipairs(plrs) do
if p ~= LP and not LP:IsFriendsWith(p.UserId) then
local pPrio = L.State.PriorityTargets[p] or 0
if pPrio > currentPrio then
currentPrio = pPrio
targets = {p}
elseif pPrio == currentPrio then
table.insert(targets, p)
end
end
end
if #targets > 0 then
local target = targets[math.random(1, #targets)]
sCM("/Votekick " .. target.Name .. " Cheating")
L.State.PriorityTargets[target] = nil
L.State.lastVK = os.clock()
end
end
end
end
end)
local FM={["UI"]=0,["System"]=1,["Plex"]=2,["Monospace"]=3} local SF={0,1,2,3}
local function aFC(t)
if not t or typeof(t) ~= "string" then return tostring(t or "") end
local c=L.FCase or "Normal"
if c=="Lowercase" then return string.lower(t)elseif c=="Uppercase" then return string.upper(t)end
return (string.lower(t):gsub("^%l",string.upper):gsub("[%s%p]%l",string.upper))
end
local function uAF(id)
L.Font=id
for _,t in pairs(L.ND)do t.Font=id end for _,t in pairs(L.DD)do t.Font=id end
for _,t in pairs(L.WD)do t.Font=id end for _,t in pairs(L.HTD)do t.Font=id end for _,t in pairs(L.AD)do t.Font=id end for _,t in pairs(L.ID)do t.Font=id end
end
local function gT(m)return m:FindFirstChild("HumanoidRootPart")or m:FindFirstChild("Torso")or m:FindFirstChild("UpperTorso")end
local function iOS(p)local _,o=C:WorldToViewportPoint(p.Position)return o end
local VL={"head","torso","arm","leg","hand","foot"}
local function iVL(p)if not p or not p:IsA("BasePart")then return false end local n=string.lower(p.Name)for _,l in ipairs(VL)do if string.find(n,l)then return true end end return false end
local vP=RaycastParams.new()vP.FilterType=Enum.RaycastFilterType.Exclude vP.IgnoreWater=true
local function iV(o,t,pt)if not t then return false end local tp=pt or t:FindFirstChild(L.SA_P or "Head")if not tp then return false end vP.FilterDescendantsInstances={LP.Character,t}local r=WS:Raycast(o,tp.Position-o,vP)return r==nil end
local tc_last = 0
local tc_cnt = 0
function gCTM()
    local cT,cPrt=nil,nil
    local cP=C.CFrame.Position
    local cD=(L.SA_DF and (L.SA_CFR or L.SA_FR) or L.SA_FR)
    local mP=UIS:GetMouseLocation()
    for m,cA in pairs(espCache) do
        if L.WFE and L.Friendlies[m.Name] then continue end
        if cA.sS and m.Parent then
            local pts = cA.pts
            if pts then
                for j=1,#pts do
                    local to=pts[j]
                    if to and to.Parent then
                        local p,o=C:WorldToViewportPoint(to.Position)
                        if o then
                            local d=(Vector2.new(p.X,p.Y)-mP).Magnitude
                            if d<cD and (cP-to.Position).Magnitude<(L.SA_MD or 500)then
                                if not L.SA_VO or iV(cP,m,to)then cD,cT,cPrt=d,m,to end
                            end
                        end
                    end
                end
            end
        end
    end
    return cT,cPrt
end
local function cC(m)
local bs=L.AC[m] if not bs then return end
for i=1,#bs do if bs[i]and bs[i].Parent then bs[i]:Destroy()end end L.AC[m]=nil
end
local function cB(m,p,s)
local bs=L.AC[m] if not bs then bs={}L.AC[m]=bs end
for i=1,#bs do if bs[i].Adornee==p then return bs[i]end end
local b=Instance.new("BoxHandleAdornment") b.Adornee=p b.AlwaysOnTop=(L.CB=="AlwaysOnTop") b.ZIndex=b.AlwaysOnTop and 10 or 0 b.Size=p.Size/s b.Color3=L.CC b.Transparency=L.CTrans b.Parent=p table.insert(bs,b) return b
end
local function aC(m)
cC(m) local bs={} L.AC[m]=bs local c=L.CC
if L.CType=="Highlight"then
local hl=Instance.new("Highlight") hl.Adornee=m hl.FillColor=c hl.OutlineColor=c hl.FillTransparency=L.CTrans hl.OutlineTransparency=L.CTrans hl.DepthMode=(L.CB=="AlwaysOnTop")and Enum.HighlightDepthMode.AlwaysOnTop or Enum.HighlightDepthMode.Occluded
hl.Parent=m table.insert(bs,hl)
else
local s=(L.CB=="Occluded")and(L.CShrink/1.2)or L.CShrink
for _,p in ipairs(m:GetDescendants())do if iVL(p)then cB(m,p,s).Color3=c end end
end
end
local function uAC()
local c=L.CC local t=L.CTrans local s=(L.CB=="Occluded")and(L.CShrink/1.2)or L.CShrink local ao=(L.CB=="AlwaysOnTop") local z=ao and 10 or 0 local dm=ao and Enum.HighlightDepthMode.AlwaysOnTop or Enum.HighlightDepthMode.Occluded
for m,bs in pairs(L.AC)do
for i=1,#bs do
local b=bs[i] if b then
if b:IsA("Highlight")then b.FillColor=c b.OutlineColor=c b.FillTransparency=t b.OutlineTransparency=t b.DepthMode=dm
else b.Color3=c b.Transparency=t b.AlwaysOnTop=ao b.ZIndex=z if b.Adornee then b.Size=b.Adornee.Size/s end end
end
end
end
end
local function pC(m)
if not m or not m:IsA("Model")or (not not m and m.Name == LP.Name)then return end if L.CH[m]then return end
local cs={} L.CH[m]=cs local function r()if L.CE then aC(m)else cC(m)end end r()
table.insert(cs,m.DescendantAdded:Connect(function(d)
if not L.CE or L.CType=="Highlight" or not iVL(d)then return end
local s=(L.CB=="Occluded")and(L.CShrink/1.2)or L.CShrink local b=cB(m,d,s)b.Color3=L.CC b.Transparency=L.CTrans b.AlwaysOnTop=(L.CB=="AlwaysOnTop")b.ZIndex=b.AlwaysOnTop and 10 or 0
end))
table.insert(cs,m.DescendantRemoving:Connect(function(d)
if L.CType=="Highlight"or not d:IsA("BasePart")then return end
local bs=L.AC[m]if bs then for i=#bs,1,-1 do local b=bs[i]if not b or b.Adornee==d or not b.Parent then if b then b:Destroy()end table.remove(bs,i)end end end
end))
end
local function cD(m)
if L.DD[m]then return end
local d=Drawing.new("Text") d.Center=true d.Outline=true d.Size=13 if table.find(SF,L.Font)then d.Font=L.Font end d.Color=L.DTC d.Visible=false L.DD[m]=d
end
local function cW(m)
if L.WD[m]then return end
local d=Drawing.new("Text") d.Center=true d.Outline=true d.Size=13 if table.find(SF,L.Font)then d.Font=L.Font end d.Color=L.WTC d.Visible=false L.WD[m]=d
end
local function cN(m)
if L.ND[m]then return end
local d=Drawing.new("Text") d.Center=true d.Outline=true d.Size=13 if table.find(SF,L.Font)then d.Font=L.Font end d.Color=L.NTC d.Visible=false L.ND[m]=d
end
local function cB1(m)
if L.BD[m]then return end
local o=Drawing.new("Square") o.Color=Color3.new(0,0,0)o.Thickness=L.BOThick o.Filled=false o.Visible=false
local b=Drawing.new("Square") b.Color=L.BC b.Thickness=L.BThick b.Filled=false b.Visible=false
local f=Drawing.new("Square") f.Color=L.BFC f.Thickness=0 f.Filled=true f.Visible=false
L.BFD[m]=f L.BOD[m]=o L.BD[m]=b
end
local function cA(m)
if L.AD[m]then return end
local d=Drawing.new("Text") d.Center=false d.Outline=true d.Size=13 if table.find(SF,L.Font)then d.Font=L.Font end d.Color=L.ATC or Color3.new(1,1,1)d.Visible=false L.AD[m]=d
end
local function cH(m)
if L.HD[m]then return end
local o=Drawing.new("Square") o.Color=Color3.new(0,0,0)o.Thickness=1 o.Filled=true o.ZIndex=10 o.Visible=false
local ss={} for i=1,40 do local b=Drawing.new("Square") b.Thickness=0 b.Filled=true b.ZIndex=11 b.Visible=false ss[i]=b end
local t=Drawing.new("Text") t.Size=13 t.Outline=true t.Center=true t.ZIndex=12 if table.find(SF,L.Font)then t.Font=L.Font end t.Visible=false
L.HOD[m]=o L.HD[m]=ss L.HTD[m]=t
end
local function aHE(m) if not m:IsA("Model")or (not not m and m.Name == LP.Name)then return end pC(m)cD(m)cW(m)cA(m)cN(m)cB1(m)cH(m) end
local function rHE(m)
local function rm(d)if d then d:Remove()end end rm(L.DD[m])L.DD[m]=nil rm(L.WD[m])L.WD[m]=nil rm(L.AD[m])L.AD[m]=nil
rm(L.ND[m])L.ND[m]=nil rm(L.BD[m])L.BD[m]=nil rm(L.BOD[m])L.BOD[m]=nil rm(L.BFD[m])L.BFD[m]=nil
if L.HD[m]then for _,b in ipairs(L.HD[m])do b:Remove()end L.HD[m]=nil end rm(L.HOD[m])L.HOD[m]=nil rm(L.HTD[m])L.HTD[m]=nil
cC(m) if L.CH[m]then for _,c in ipairs(L.CH[m])do c:Disconnect()end L.CH[m]=nil end L.VH[m]=nil L.FC[m]=nil L.HTFC[m]=nil
end
local function cI(p)if L.ID[p]then return end local d=Drawing.new("Text")d.Center=true d.Outline=true d.Size=13 if table.find(SF,L.IFont or L.Font)then d.Font=(L.IFont or L.Font)end d.Visible=false L.ID[p]=d end
local function rI(p)if L.ID[p]then L.ID[p]:Remove()L.ID[p]=nil end L.IFC[p]=nil end
local SI=WS:FindFirstChild("SpawnedItems")
if SI then for _,p in ipairs(SI:GetChildren())do cI(p)end SI.ChildAdded:Connect(cI)SI.ChildRemoved:Connect(rI)end
local function cCrate(p)if L.CD[p]then return end local d=Drawing.new("Text")d.Center=true d.Outline=true d.Size=13 if table.find(SF,L.CFont or L.Font)then d.Font=(L.CFont or L.Font)end d.Visible=false L.CD[p]=d end
local function rCrate(p)if L.CD[p]then L.CD[p]:Remove()L.CD[p]=nil end L.CFC[p]=nil end
local SCR=WS:FindFirstChild("SpawnedCrates")
if SCR then for _,p in ipairs(SCR:GetChildren())do cCrate(p)end SCR.ChildAdded:Connect(cCrate)SCR.ChildRemoved:Connect(rCrate)end
for _,m in ipairs(EF:GetChildren())do aHE(m)end
EF.ChildAdded:Connect(aHE) EF.ChildRemoved:Connect(rHE)
local lEU=0 local cWepM=nil local wOrig=setmetatable({},{__mode="k"})
local OriginalStats = setmetatable({}, {__mode = "k"})
local WeaponStatsModule = nil
for _, v in ipairs(RSto:GetDescendants()) do
if v:IsA("ModuleScript") and (v.Name == "WeaponStats" or v.Name == "weaponstats") then
WeaponStatsModule = v
break
end
end
local function UpdateWeaponStats()
if not WeaponStatsModule then return end
local success, Stats = pcall(require, WeaponStatsModule)
if not success or type(Stats) ~= "table" then return end
for WeaponName, WeaponTable in pairs(Stats) do
if type(WeaponTable) == "table" and WeaponName ~= "StimKit" then
if not OriginalStats[WeaponTable] then
OriginalStats[WeaponTable] = {
CamRecoil = WeaponTable.CamRecoil,
IKRecoil = WeaponTable.IKRecoil,
RecoilForce = WeaponTable.RecoilForce,
ADSRecoilForce = WeaponTable.ADSRecoilForce,
MinSpread = WeaponTable.MinSpread,
MaxSpread = WeaponTable.MaxSpread,
SpreadStep = WeaponTable.SpreadStep,
ReloadTime = WeaponTable.ReloadTime,
EquipTime = WeaponTable.EquipTime,
UnequipTime = WeaponTable.UnequipTime,
Behavior = WeaponTable.Behavior,
FireRate = WeaponTable.FireRate,
}
if WeaponTable.ProjectileParams then
OriginalStats[WeaponTable].ProjectileSpeed = WeaponTable.ProjectileParams.ProjectileSpeed
OriginalStats[WeaponTable].Drop = WeaponTable.ProjectileParams.Drop
OriginalStats[WeaponTable].Range = WeaponTable.ProjectileParams.Range or 3000
end
end
local Originals = OriginalStats[WeaponTable]
if L.NR_E then
WeaponTable.CamRecoil = 0
WeaponTable.IKRecoil = 0
WeaponTable.RecoilForce = 0
WeaponTable.ADSRecoilForce = 0
else
WeaponTable.CamRecoil = Originals.CamRecoil
WeaponTable.IKRecoil = Originals.IKRecoil
WeaponTable.RecoilForce = Originals.RecoilForce
WeaponTable.ADSRecoilForce = Originals.ADSRecoilForce
end
if L.NS_E then
WeaponTable.MinSpread = 0
WeaponTable.MaxSpread = 0
WeaponTable.SpreadStep = 0
else
WeaponTable.MinSpread = Originals.MinSpread
WeaponTable.MaxSpread = Originals.MaxSpread
WeaponTable.SpreadStep = Originals.SpreadStep
end
if L.IR_E then
WeaponTable.ReloadTime = 0
else
WeaponTable.ReloadTime = Originals.ReloadTime
end
if L.IE_E then
WeaponTable.EquipTime = 0
WeaponTable.UnequipTime = 0
else
WeaponTable.EquipTime = Originals.EquipTime
WeaponTable.UnequipTime = Originals.UnequipTime
end

if L.AFA_E then
WeaponTable.Behavior = "AutomaticProjectileWeapon"
else
WeaponTable.Behavior = Originals.Behavior
end
if L.CFR_E then
WeaponTable.FireRate = L.CFRA or 0.1
else
WeaponTable.FireRate = Originals.FireRate
end
if WeaponTable.ProjectileParams then
if L.HV_E then
WeaponTable.ProjectileParams.ProjectileSpeed = 10000
WeaponTable.ProjectileParams.Drop = 0
else
WeaponTable.ProjectileParams.ProjectileSpeed = Originals.ProjectileSpeed
WeaponTable.ProjectileParams.Drop = Originals.Drop
end
if L.INF_R_E then
WeaponTable.ProjectileParams.Range = 99999
else
WeaponTable.ProjectileParams.Range = Originals.Range
end
end
end
end
end
L.State.xtPoints = {}
L.State.lastGunCheck, L.State.lastXtCheck = 0, 0
local function cProp(d,k,v) if d[k]~=v then d[k]=v end end
local function cPropV2(d,k,x,y) local c=d[k] if c.X~=x or c.Y~=y then d[k]=Vector2.new(x,y) end end
local function c2r(c)
    if not c then return "Common" end
    local m={{c=Color3.fromRGB(128,128,128),n="Common"},{c=Color3.fromRGB(0,177,0),n="Uncommon"},{c=Color3.fromRGB(0,166,255),n="Rare"},{c=Color3.fromRGB(222,37,255),n="Epic"},{c=Color3.fromRGB(252,255,49),n="Legendary"},{c=Color3.fromRGB(255,0,0),n="Mythic"},{c=Color3.fromRGB(255,255,255),n="Divine"}}
    local bD,bN=10,"Common"
    for _,v in ipairs(m)do local d=(Vector3.new(c.R,c.G,c.B)-Vector3.new(v.c.R,v.c.G,v.c.B)).Magnitude if d<bD then bD,bN=d,v.n end end
    return bN
end
local rCls={Common=Color3.fromRGB(128,128,128),Uncommon=Color3.fromRGB(0,177,0),Rare=Color3.fromRGB(0,166,255),Epic=Color3.fromRGB(222,37,255),Legendary=Color3.fromRGB(252,255,49),Mythic=Color3.fromRGB(255,0,0),Divine=Color3.fromRGB(255,255,255)}
RS.Heartbeat:Connect(function()
    local cP=C.CFrame.Position local mD=L.DMax local n=os.clock()
    for _,m in ipairs(EF:GetChildren())do if m.Name==LP.Name then continue end
        local cA=espCache[m] if not cA then cA={}; espCache[m]=cA end
        local to=cA.to if not to or not to.Parent then to=gT(m); cA.to=to end
        local hu=cA.hu if not hu or not hu.Parent then hu=m:FindFirstChildOfClass("Humanoid"); cA.hu=hu end
        local sS=true if not to or not hu or hu.Health<=0 then sS=false end
        if sS and L.ArenaOnly then local ad=cA.ad if not ad or not ad.Parent then ad=m:FindFirstChild("AuraDisplay"); cA.ad=ad end if ad and ad.Enabled then sS=false end end
        if sS and L.VisOnly then local v=L.VH[m] or {v=false,t=0} if n-v.t>0.1 then v.v=iV(cP,m,to); v.t=n; L.VH[m]=v end if not v.v then sS=false end end
        local d=0 if sS then d=(cP-to.Position).Magnitude if d>mD or not iOS(to)then sS=false end end
        cA.sS=sS cA.d=d
        if sS then if L.HE and n-(cA.ht or 0)>0.1 then local mh=hu.MaxHealth cA.hs=mh>0 and math.clamp(hu.Health/mh,0,1)or 0 cA.ht=n end
            if L.WE and n-(cA.wt or 0)>0.2 then local wC=cA.wC if not wC or not wC.Parent then wC=m:FindFirstChild("WeaponContainer"); cA.wC=wC end local tl=wC and wC:FindFirstChildOfClass("Model") cA.wN=tl and tl.Name or "None" cA.wt=n end
            if L.AE and n-(cA.at or 0)>0.2 then local ad=cA.ad if not ad or not ad.Parent then ad=m:FindFirstChild("AuraDisplay"); cA.ad=ad end local aT="None" if ad then local tl=ad:FindFirstChild("TextLabel") if tl then aT=tl.Text:gsub("Aura:%s*","") end end cA.aT=aT cA.at=n end
            if n-(cA.pt or 0) > 0.5 then
                local pts = {} if L.SA_CP then for _,p in ipairs(m:GetChildren()) do if p:IsA("BasePart") and p.Name~="HumanoidRootPart" then table.insert(pts,p) end end else local hp=m:FindFirstChild(L.SA_P or "Head") if hp then pts[1]=hp end end
                cA.pts=pts cA.pt=n
            end
        end
    end
    local iGe,iDe,iMD=L.IGE,L.IDE,L.IDMax or 5000
    for p,t in pairs(L.ID)do
        local cA=itemCache[p] if not cA then cA={}; itemCache[p]=cA end
        local sS=true local md=cA.md if not md or not md.Parent then md=p:FindFirstChildOfClass("Model"); cA.md=md end
        if not p.Parent or not md then sS=false end
        local cR=cA.cR if sS and (cR==nil or not md.Parent) then cR=md:FindFirstChild("CardRoot"); cA.cR=cR end
        if sS then if cR then if not iDe then sS=false end else if not iGe then sS=false end end end
        if sS then local d=(cP-p.Position).Magnitude if d>iMD then sS=false end end
        cA.sS=sS
        if sS and n-(cA.lt or 0)>0.5 then
            local ic=p.Name=="ItemColliderPrefab" and p or p:FindFirstChild("ItemColliderPrefab",true)
            local gC if ic then local s,c=pcall(function()return ic.OutlineColor end)if s and typeof(c)=="Color3"then gC=c else gC=ic:GetAttribute("OutlineColor")if typeof(gC)~="Color3"then gC=nil local hl=ic:FindFirstChildOfClass("Highlight")if hl then pcall(function()gC=hl.OutlineColor end)end end end end
            local rar=c2r(gC) cA.rar=rar cA.rC=(L.IRC and rCls[rar]) or gC or (cR and (L.IDC or Color3.new(1,1,1)) or (L.IGC or Color3.new(1,1,1))) cA.lt=n
        end
    end
    local cEe,cMD=L.CE_E,L.CDMax or 5000
    for p,t in pairs(L.CD)do
        local cA=crateCache[p] if not cA then cA={}; crateCache[p]=cA end
        local sS=true if not p.Parent or not cEe then sS=false end
        if sS then local d=(cP-p:GetPivot().Position).Magnitude if d>cMD then sS=false end end
        cA.sS=sS
        if sS and n-(cA.lt or 0)>0.2 then
            local lid=p:FindFirstChild("Lid")
            local mesh=lid and lid:FindFirstChild("Meshes/updated_Cube.037")
            if mesh then
                local gC=mesh.Color
                local rar=c2r(gC) cA.rar=rar cA.rC=(L.CRC and rCls[rar]) or (L.CEC or Color3.new(1,1,1))
            else
                cA.sS=false
            end
            cA.lt=n
        end
    end
    if L.LGM_E and n-L.State.lastGunCheck>0.5 then
        L.State.lastGunCheck=n local lpE=EF:FindFirstChild(LP.Name) local mods,mc={},0
        if lpE then local wc,em=lpE:FindFirstChild("WeaponContainer"),lpE:FindFirstChild("EquipModels") local wm=wc and wc:FindFirstChildOfClass("Model") if wm then mc=mc+1 mods[mc]=wm end
            if em then local p,s=em:FindFirstChild("Primary"),em:FindFirstChild("Secondary") if p then mc=mc+1 mods[mc]=p end if s then mc=mc+1 mods[mc]=s end end end
        local fpr=C:FindFirstChild("FirstPersonRig") or WS:FindFirstChild("FirstPersonRig") if fpr then for _,v in ipairs(fpr:GetChildren())do if v:IsA("Model")then mc=mc+1 mods[mc]=v end end end
        if mc>0 then local parts={} for i=1,mc do for _,p in ipairs(mods[i]:GetDescendants())do if p:IsA("BasePart")then table.insert(parts,p) end end end gunPartCache=parts else gunPartCache={} end
    end
    if n-L.State.lastXtCheck>2 then
        L.State.lastXtCheck=n local pts,int={},workspace:FindFirstChild("Interactible")
        if int then for _,v in ipairs(int:GetChildren())do if v.Name:find("Extraction Point")then table.insert(pts,v)end end end
        L.State.xtPoints=pts
    end
    if L.XEE then
        local mX=L.XED or 2500
        for _,v in ipairs(L.State.xtPoints)do
            local cA=xtCache[v]if not cA then cA={}xtCache[v]=cA end
            local d=(cP-v:GetPivot().Position).Magnitude cA.sS=d<mX cA.d=d
        end
    end
    if L.SA_E and n-tc_last>0.1 then tc_last=n local a,b=gCTM() L.SA_T=a L.SA_TP=b end
end)
local function hAll(m)
    local tN=L.ND[m] local tWp=L.WD[m] local tAu=L.AD[m] local tD=L.DD[m] local bx=L.BD[m] local ou=L.BOD[m] local fl=L.BFD[m] local hB=L.HD[m] local hO=L.HOD[m] local hT=L.HTD[m] local aC=L.AC[m]
    if tN then cProp(tN,"Visible",false) end if tWp then cProp(tWp,"Visible",false) end if tAu then cProp(tAu,"Visible",false) end if tD then cProp(tD,"Visible",false) end if bx then cProp(bx,"Visible",false) end if ou then cProp(ou,"Visible",false) end if fl then cProp(fl,"Visible",false) end if hO then cProp(hO,"Visible",false) end if hT then cProp(hT,"Visible",false) L.HTFC[m]=nil end
    if hB then for i=1,40 do if hB[i]then cProp(hB[i],"Visible",false) end end end
    if aC then for i=1,#aC do local b=aC[i]if b:IsA("Highlight")then if b.Enabled then b.Enabled=false b.FillTransparency=1 b.OutlineTransparency=1 end elseif b.Visible then b.Visible=false b.Transparency=1 end end end
    L.FC[m]=nil
end
local v3_T=Vector3.new(0,3,0) local v3_B=Vector3.new(0,3.5,0)
local function onRenderSteppedESP(dt)
    for m,d in pairs(L.DD)do if not m.Parent then rHE(m) end end
    for p,d in pairs(L.ID)do if not p.Parent then rI(p) end end
    for p,d in pairs(L.CD)do if not p.Parent then rCrate(p) end end
    local n=os.clock()
    local dE,wE,aE,nE,bE,hE,cE=L.DE,L.WE,L.AE,L.NE,L.BE,L.HE,L.CE and not L.HBE_E
    local iGe=L.IGE local iDe=L.IDE local iMD=L.IDMax or 5000
    if not(dE or wE or aE or nE or bE or hE or cE or iGe or iDe or L.XEE or L.CE_E)then
        if ESP_V then
            for m,_ in pairs(L.DD)do hAll(m) end
            for _,t in pairs(L.ID)do cProp(t,"Visible",false) end
            for _,t in pairs(L.CD)do cProp(t,"Visible",false) end
            for _,cA in pairs(xtCache)do if cA.im then cProp(cA.im,"Visible",false) end if cA.tx then cProp(cA.tx,"Visible",false) end end
            ESP_V=false
        end
        return
    end
    ESP_V=true
    for m,cA in pairs(espCache)do
        local sS,d=cA.sS,cA.d or 0
        local fA=cA.fA or 0 if sS then fA=math.min(fA+dt/(L.FIn or 0.15),1)else fA=math.max(fA-dt/(L.FOut or 0.15),0)end cA.fA=fA
        if fA<=0 then hAll(m)continue end
        local to=cA.to if sS and to and to.Parent then cA.lastW=to.Position else sS=false end
        local tP,bP,tV,bV if cA.lastW then local tW=cA.lastW+v3_T local bW=cA.lastW-v3_B tP,tV=C:WorldToViewportPoint(tW) bP,bV=C:WorldToViewportPoint(bW) end
        local tN=L.ND[m]local tWp=L.WD[m]local tAu=L.AD[m]local tD=L.DD[m]local bx=L.BD[m]local ou=L.BOD[m]local fl=L.BFD[m]local hB=L.HD[m]local hO=L.HOD[m]local hT=L.HTD[m]local aC=L.AC[m]
        if not tP or not tV or not bV then hAll(m)continue end
        local h=math.floor(math.abs(tP.Y-bP.Y))local w=math.floor(h*0.55)local x=math.floor(tP.X-w/2)local y=math.floor(tP.Y)
        if tN then if nE then cPropV2(tN,"Position",x+w/2,y-15) cProp(tN,"Text",aFC(m.Name)) cProp(tN,"Color",L.NTC) cProp(tN,"Transparency",fA) cProp(tN,"Visible",true) else cProp(tN,"Visible",false) end end
        if tWp then if wE then cPropV2(tWp,"Position",x+w/2,y+h) cProp(tWp,"Text",aFC(cA.wN or"None")) cProp(tWp,"Color",L.WTC) cProp(tWp,"Transparency",fA) cProp(tWp,"Visible",true) else cProp(tWp,"Visible",false) end end
        if tAu then if aE then cPropV2(tAu,"Position",x+w+2,y-4) cProp(tAu,"Text",aFC(cA.aT or"None")) cProp(tAu,"Color",L.ATC) cProp(tAu,"Transparency",fA) cProp(tAu,"Visible",true) else cProp(tAu,"Visible",false) end end
        if tD then if dE then cPropV2(tD,"Position",x+w/2,y+h+(wE and 13 or 0)) cProp(tD,"Text",math.floor(d).."s") cProp(tD,"Color",L.DTC) cProp(tD,"Transparency",fA) cProp(tD,"Visible",true) else cProp(tD,"Visible",false) end end
        if bx and ou then if bE then cProp(bx,"Visible",true) cProp(ou,"Visible",true) cProp(bx,"Color",L.BC) cProp(ou,"Color",Color3.new(0,0,0)) cProp(bx,"Transparency",fA) cProp(ou,"Transparency",fA) cPropV2(bx,"Size",w,h) cPropV2(bx,"Position",x,y) cPropV2(ou,"Size",w,h) cPropV2(ou,"Position",x,y) if fl then if L.BFE then cProp(fl,"Visible",true) cProp(fl,"Color",L.BFC) local tTrans=Options and Options["BoxFillColorPicker"]and Options["BoxFillColorPicker"].Transparency or 0.5 cProp(fl,"Transparency",(1-tTrans)*fA) cPropV2(fl,"Size",w,h) cPropV2(fl,"Position",x,y) else cProp(fl,"Visible",false) end end else cProp(bx,"Visible",false) cProp(ou,"Visible",false) if fl then cProp(fl,"Visible",false) end end end
        local hHigh, hLow = L.HHC, L.HLC
        if (L.PE and L.Priorities[m.Name]) or (L.FE and L.Friendlies[m.Name]) then
            hHigh, hLow = Color3.fromRGB(0, 255, 0), Color3.fromRGB(255, 0, 0)
        end

        if hB and hO then if hE then local hs=cA.hs or 0 local vs=L.VH[m]or hs vs=vs+(hs-vs)*math.clamp(dt*10,0,1)L.VH[m]=vs local bX=math.floor(x-5)local bY=math.floor(y) cPropV2(hO,"Size",4,math.floor(h)+2) cPropV2(hO,"Position",bX-1,bY-1) cProp(hO,"Transparency",fA) cProp(hO,"Visible",true)
        if L.HGE then local sC=40 local sH=h/sC local tF=h*vs for i=1,sC do local sg=hB[i]if sg then local sP=(i-1)/(sC-1)if L.HGR then sP=(math.sin(i/7.5+tick()*(L.HGRS or 4))+1)/2 end local sb=(i-1)*sH if sb<tF then local sf=math.min(sH,tF-sb)local stP=math.floor(bY+h-sb-sf)local sbP=math.floor(bY+h-sb) cPropV2(sg,"Size",2,sbP-stP) cPropV2(sg,"Position",bX,stP) cProp(sg,"Color",hLow:Lerp(hHigh,sP)) cProp(sg,"Transparency",fA) cProp(sg,"Visible",true) else cProp(sg,"Visible",false) end end end else local bh=math.ceil(h*vs)local byP=math.floor(bY+(h-bh)) if hB[1]then cPropV2(hB[1],"Size",2,bh) cPropV2(hB[1],"Position",bX,byP) cProp(hB[1],"Color",hLow:Lerp(hHigh,vs)) cProp(hB[1],"Transparency",fA) cProp(hB[1],"Visible",true) end for i=2,40 do if hB[i]then cProp(hB[i],"Visible",false) end end end
        if hT then local fP=L.HTFC[m]or 0 if L.HTE and hs<1 then fP=math.min(fP+(dt/(L.FIn or 0.15)),1)else fP=math.max(fP-(dt/(L.FOut or 0.15)),0)end L.HTFC[m]=fP if fP>0 then local tY=bY+h-(h*vs) cProp(hT,"Text",tostring(math.floor(hs*100))) cPropV2(hT,"Position",x+w+7,tY-8) cProp(hT,"Color",L.HTC) cProp(hT,"Transparency",fP*fA) cProp(hT,"Visible",true) else cProp(hT,"Visible",false) end end
        else cProp(hO,"Visible",false) for i=1,40 do if hB[i]then cProp(hB[i],"Visible",false) end end if hT then cProp(hT,"Visible",false) end end end
        
        local oC = nil
        if L.PE and L.Priorities[m.Name] then oC = L.PCOC
        elseif L.FE and L.Friendlies[m.Name] then oC = L.FCOC end
        if oC then
            if tN then tN.Color = oC end
            if tWp then tWp.Color = oC end
            if tAu then tAu.Color = oC end
            if tD then tD.Color = oC end
            if bx then bx.Color = oC end
            if hT then hT.Color = oC end
        end

        if aC then if cE then if n-(cA.lt or 0)>0.2 then cA.lt=n local cbT=L.CTrans or 0.5 local cfA=1-(fA*(1-cbT)) for i=1,#aC do local b=aC[i]if b:IsA("Highlight")then b.FillTransparency=cfA b.OutlineTransparency=cfA b.Enabled=true b.FillColor = oC or L.CC b.OutlineColor = oC or L.CC else b.Transparency=cfA b.Visible=true b.Color3 = oC or L.CC end end end else if not cA.hOf then cA.hOf=true for i=1,#aC do local b=aC[i]if b:IsA("Highlight")then b.Enabled=false b.FillTransparency=1 b.OutlineTransparency=1 else b.Visible=false b.Transparency=1 end end end end else cA.hOf=false end
    end
    for p,t in pairs(L.ID)do
        local cA=itemCache[p] local sS=cA and cA.sS local tP,tV if sS then tP,tV=C:WorldToViewportPoint(p.Position) if not tV then sS=false end else sS=false end
        local fP=L.IFC[p]or 0 if sS then fP=math.min(fP+(dt/(L.FIn or 0.15)),1)else fP=math.max(fP-(dt/(L.FOut or 0.15)),0)end L.IFC[p]=fP
        if fP>0 and tV then if L.IS and not L.IS[cA.rar]then cProp(t,"Visible",false)continue end
            cPropV2(t,"Position",tP.X,tP.Y) cProp(t,"Text","[ "..aFC(cA.md.Name).." ]") cProp(t,"Color",cA.rC) cProp(t,"Transparency",fP) cProp(t,"Visible",true)
        else cProp(t,"Visible",false) end
    end
    for p,t in pairs(L.CD)do
        local cA=crateCache[p] local sS=cA and cA.sS local tP,tV if sS then tP,tV=C:WorldToViewportPoint(p:GetPivot().Position) if not tV then sS=false end else sS=false end
        local fP=L.CFC[p]or 0 if sS then fP=math.min(fP+(dt/(L.FIn or 0.15)),1)else fP=math.max(fP-(dt/(L.FOut or 0.15)),0)end L.CFC[p]=fP
        if fP>0 and tV then if L.CSort and not L.CSort[cA.rar]then cProp(t,"Visible",false)continue end
            local col = cA.rC or L.CEC or Color3.new(1,1,1)
            cPropV2(t,"Position",tP.X,tP.Y) cProp(t,"Text","[ Crate ]") cProp(t,"Color",col) cProp(t,"Transparency",fP) cProp(t,"Visible",true)
        else cProp(t,"Visible",false) end
    end
    if L.XEE then
        for v,cA in pairs(xtCache)do
            local sS=cA.sS local tP,tV if sS then tP,tV=C:WorldToViewportPoint(v:GetPivot().Position) if not tV then sS=false end else sS=false end
            local fP=cA.fP or 0 if sS then fP=math.min(fP+(dt/(L.FIn or 0.15)),1)else fP=math.max(fP-(dt/(L.FOut or 0.15)),0)end cA.fP=fP
            if fP>0 then
                if L.XEM=="Icon"then
                    if cA.tx then cProp(cA.tx,"Visible",false)end
                    local bg=cA.bg if not bg then
                        bg=Instance.new("BillboardGui")bg.Size=UDim2.new(0,40,0,40)bg.AlwaysOnTop=true bg.Parent=CG
                        local outs={} for i=1,4 do
                            local o=Instance.new("ImageLabel",bg)o.Size=UDim2.new(1,0,1,0)o.BackgroundTransparency=1 o.Image="rbxassetid://86104776769027" o.ImageColor3=Color3.new(0,0,0)
                            if i==1 then o.Position=UDim2.new(0,1,0,0)elseif i==2 then o.Position=UDim2.new(0,-1,0,0)elseif i==3 then o.Position=UDim2.new(0,0,0,1)else o.Position=UDim2.new(0,0,0,-1)end
                            outs[i]=o
                        end
                        local im=Instance.new("ImageLabel",bg)im.Size=UDim2.new(1,0,1,0)im.BackgroundTransparency=1 im.Image="rbxassetid://86104776769027" cA.bg=bg cA.im=im cA.outs=outs
                    end
                    bg.Adornee=v bg.Enabled=true cA.im.ImageTransparency=1-fP cA.im.ImageColor3=L.XEC
                    for _,o in ipairs(cA.outs)do o.ImageTransparency=1-fP end
                    if cA.bolds then for _,b in ipairs(cA.bolds)do b:Destroy()end cA.bolds=nil end
                elseif tV then
                    if cA.bg then cA.bg.Enabled=false end
                    local tx=cA.tx if not tx then tx=Drawing.new("Text")tx.Center=true tx.Outline=true tx.Size=13 cA.tx=tx end
                    cPropV2(tx,"Position",tP.X,tP.Y)cProp(tx,"Text","[ Extraction ]")cProp(tx,"Color",L.XEC)cProp(tx,"Font",L.XEF or 2)cProp(tx,"Transparency",fP)cProp(tx,"Visible",true)
                else if cA.bg then cA.bg.Enabled=false end if cA.tx then cProp(cA.tx,"Visible",false)end end
            else if cA.bg then cA.bg.Enabled=false end if cA.tx then cProp(cA.tx,"Visible",false)end end
        end
    else for _,cA in pairs(xtCache)do if cA.bg then cA.bg.Enabled=false end if cA.tx then cProp(cA.tx,"Visible",false)end end end
    if L.LGM_E and #gunPartCache>0 then
        local mt,cl,tr,an,t=Enum.Material[L.LGM_M or "ForceField"]or Enum.Material.ForceField,L.LGM_C or Color3.new(1,1,1),L.LGM_T or 0.5,L.LGM_A or "None",os.clock()
        if an=="Rainbow"then cl=Color3.fromHSV((t%2)/2,1,1)elseif an=="Pulse"then cl=cl:Lerp(Color3.new(0,0,0),(math.sin(t*3)+1)/2)elseif an=="Fade"then tr=tr+(1-tr)*((math.sin(t*3)+1)/2)end
        for _,p in ipairs(gunPartCache)do if p.Parent then
            local og=wOrig[p]if not og then if p.Transparency>=1 then continue end og={M=p.Material,C=p.Color,T=p.Transparency}wOrig[p]=og local sa=p:FindFirstChildOfClass("SurfaceAppearance")if sa then og.SA=sa sa.Parent=nil end end
            if p.Material~=mt then p.Material=mt end if p.Color~=cl then p.Color=cl end if p.Transparency~=tr then p.Transparency=tr end
        end end
    elseif next(wOrig)then for p,v in pairs(wOrig)do if p.Parent then p.Material=v.M p.Color=v.C p.Transparency=v.T if v.SA then v.SA.Parent=p end end end wOrig=setmetatable({},{__mode="k"}) end
end
do
local E1Box=Tabs.B:AddLeftTabbox() local E1=E1Box:AddTab('Player ESP') local ET=E1Box:AddTab('Extra')
local CE1=E1:AddToggle('ChamsESP',{Text='Player Chams',Default=false,Callback=function(v)L.CE=v if v then for _,m in ipairs(EF:GetChildren())do if not (not not m and m.Name == LP.Name)then aC(m)end end else for m in pairs(L.AC)do cC(m)end end end})
CE1:AddColorPicker("ChamsESPCP",{Default=L.CC,Title="Chams Color",Transparency=0.5,Callback=function(v)L.CC=v L.CTrans=(Options and Options["ChamsESPCP"]and Options["ChamsESPCP"].Transparency or 0.5)uAC()end})
local NV=E1:AddToggle('ShowPlayerTags',{Text='Player Name',Default=false,Callback=function(v)L.NE=v end})
NV:AddColorPicker('NameTagColor',{Default=L.NTC,Title='Name Text Color',Transparency=0,Callback=function(c)L.NTC=c for _,t in pairs(L.ND)do t.Color=c end end})
local BV=E1:AddToggle("BoxESP",{Text="Player Box",Default=false,Callback=function(v)L.BE=v end})
BV:AddColorPicker("BoxESPColor",{Default=L.BC,Title="Box Color",Transparency=0,Callback=function(c)L.BC=c for _,b in pairs(L.BD)do b.Color=c end end})
L.BDB=E1:AddDependencyBox()
L.BDB:AddToggle("BoxFillToggle",{Text="Box Fill",Default=false,Callback=function(v)L.BFE=v end}):AddColorPicker("BoxFillColorPicker",{Default=L.BFC,Title="Box Fill Color",Transparency=0.5,Callback=function(c)L.BFC=c end})
L.BDB:SetupDependencies({{BV,true}})
local HV=E1:AddToggle("HealthESP",{Text="Player Health",Default=false,Callback=function(v)L.HE=v end})
HV:AddColorPicker("HealthESPHigh",{Default=L.HHC,Title="Health Color ( High )",Callback=function(c)L.HHC=c end})
HV:AddColorPicker("HealthESPLow",{Default=L.HLC,Title="Health Color ( Low )",Callback=function(c)L.HLC=c end})
local HDB=E1:AddDependencyBox()
local HTT=HDB:AddToggle("HealthTextToggle",{Text="Player Health Text",Default=false,Callback=function(v)L.HTE=v end})
HTT:AddColorPicker("HealthTextColor",{Default=L.HTC,Title="Health Text Color",Callback=function(c)L.HTC=c end})
HDB:SetupDependencies({{HV,true}})
local HDB2=E1:AddDependencyBox()
local HGRT=HDB2:AddToggle("HealthGradientRotationToggle",{Text="Gradient Rotation",Default=false,Callback=function(v)L.HGR=v end})
HDB2:SetupDependencies({{HV,true}})
local HDB3=E1:AddDependencyBox()
HDB3:AddSlider("HealthGradientRotationSpeed",{Text="Gradient Rotation Speed",Default=1,Min=0.1,Max=10,Rounding=1,Compact=true,Callback=function(v)L.HGRS=v end})
HDB3:SetupDependencies({{HGRT,true}})
local CE2=E1:AddToggle('DistanceESP',{Text='Player Distance',Default=false,Callback=function(v)L.DE=v end})
CE2:AddColorPicker("DistanceESPCP",{Default=L.DTC,Title="Text Color",Callback=function(v)L.DTC=v end})
E1:AddSlider('PDistMax',{Text='Max ESP Distance',Default=2000,Min=0,Max=10000,Rounding=0,Compact=true,Callback=function(v)L.DMax=v end})
local CE3=E1:AddToggle('WeaponESP',{Text='Player Weapon',Default=false,Callback=function(v)L.WE=v end})
CE3:AddColorPicker("WeaponESPCP",{Default=L.WTC,Title="Text Color",Callback=function(v)L.WTC=v end})
local CE4=E1:AddToggle('AuraESP',{Text='Player Aura',Default=false,Callback=function(v)L.AE=v end})
CE4:AddColorPicker("AuraESPCP",{Default=Color3.new(1,1,1),Title="Text Color",Callback=function(v)L.ATC=v end})
E1:AddDropdown('FontTypeDropdown',{Values={'UI','System','Plex','Monospace'},Default=3,Multi=false,Text='Font Type',Callback=function(v)local f=FM[v]if f~=nil then uAF(f)end end})
E1:AddDropdown('FontCaseDropdown',{Values={'Normal','Lowercase','Uppercase'},Default=1,Multi=false,Text='Font Case',Callback=function(v)L.FCase=v end})
ET:AddToggle('ArenaOnly',{Text='Only Show Players In Arena',Default=false,Callback=function(v)L.ArenaOnly=v end})
ET:AddToggle('VisOnly',{Text='Only Show Visible Players',Default=false,Callback=function(v)L.VisOnly=v end})
local FET=ET:AddToggle('FriendlyOverwrite',{Text='Friendly Color Overwrite',Default=false,Callback=function(v)L.FE=v end})
FET:AddColorPicker('FriendlyOverwriteCP',{Default=L.FCOC,Title='Friendly Color',Callback=function(c)L.FCOC=c end})
local PET=ET:AddToggle('PriorityOverwrite',{Text='Priority Color Overwrite',Default=false,Callback=function(v)L.PE=v end})
PET:AddColorPicker('PriorityOverwriteCP',{Default=L.PCOC,Title='Priority Color',Callback=function(c)L.PCOC=c end})
ET:AddDivider()
ET:AddLabel("Fade Settings")
ET:AddSlider('FadeInSpeed',{Text='Fade In',Default=0.15,Min=0.1,Max=1,Rounding=2,Suffix='s',Compact=true,Callback=function(v)L.FIn=v end})
ET:AddSlider('FadeOutSpeed',{Text='Fade Out',Default=0.15,Min=0.1,Max=1,Rounding=2,Suffix='s',Compact=true,Callback=function(v)L.FOut=v end})
local I_TB = Tabs.B:AddRightTabbox()
local I1 = I_TB:AddTab("Items")
local X_TAB = I_TB:AddTab("Extractions")
local C_TAB = I_TB:AddTab("Crates")
local CE_E = C_TAB:AddToggle('CratesToggle', {Text='Crates', Default=false, Callback=function(v) L.CE_E=v end})
CE_E:AddColorPicker('CratesColor', {Default=Color3.new(1,1,1), Title='Crates Color', Callback=function(v) L.CEC=v end})
C_TAB:AddToggle('CrateRarityColor', {Text='Rarity Colors', Default=false, Callback=function(v) L.CRC=v end})
C_TAB:AddSlider('CrateDistance', {Text='Max Distance', Default=5000, Min=0, Max=10000, Rounding=0, Compact=true, Callback=function(v) L.CDMax=v end})
C_TAB:AddDropdown('CrateSort', {Values={'Common','Uncommon','Rare','Epic','Legendary','Mythic','Divine'}, Default={'Common','Uncommon','Rare','Epic','Legendary','Mythic','Divine'}, Multi=true, Text='Item Sort', Callback=function(v) L.CSort=v end})
C_TAB:AddDropdown('CrateFontType', {Values={'UI','System','Plex','Monospace'}, Default=3, Multi=false, Text='Font Type', Callback=function(v) local f=FM[v] if f~=nil then L.CFont=f for _,d in pairs(L.CD) do d.Font=f end end end})
local IE2=I1:AddToggle('ItemGuns',{Text='Dropped Guns',Default=false,Callback=function(v)L.IGE=v end})
IE2:AddColorPicker("ItemGunsCP",{Default=Color3.new(1,1,1),Title="Guns Color",Callback=function(v)L.IGC=v end})
local IE3=I1:AddToggle('ItemGear',{Text='Dropped Gear',Default=false,Callback=function(v)L.IDE=v end})
IE3:AddColorPicker("ItemGearCP",{Default=Color3.new(1,1,1),Title="Gear Color",Callback=function(v)L.IDC=v end})
I1:AddToggle('ItemRarityColor',{Text='Rarity Colors',Default=false,Callback=function(v)L.IRC=v end})
I1:AddSlider('ItemDistance',{Text='Max Distance',Default=5000,Min=0,Max=10000,Rounding=0,Compact=true,Callback=function(v)L.IDMax=v end})
I1:AddDropdown('ItemSort',{Values={'Common','Uncommon','Rare','Epic','Legendary','Mythic','Divine'},Default={'Common','Uncommon','Rare','Epic','Legendary','Mythic','Divine'},Multi=true,Text='Item Sort',Callback=function(v)L.IS=v end})
I1:AddDropdown('ItemFontType',{Values={'UI','System','Plex','Monospace'},Default=3,Multi=false,Text='Font Type',Callback=function(v)local f=FM[v]if f~=nil then L.IFont=f for _,d in pairs(L.ID)do d.Font=f end end end})
local XT_T = X_TAB:AddToggle('ExtractionsToggle',{Text='Extraction Points',Default=false,Callback=function(v)L.XEE=v end})
XT_T:AddColorPicker("ExtractionCP",{Default=L.XEC,Title="Extraction Color",Callback=function(v)L.XEC=v end})
local XT_DB = X_TAB:AddDependencyBox()
XT_DB:AddDropdown('ExtractionType',{Values={'Text','Icon'},Default=1,Multi=false,Text='ESP Type',Callback=function(v)L.XEM=v end})
XT_DB:SetupDependencies({{XT_T,true}})
X_TAB:AddSlider('ExtractionMaxDist',{Text='Max Distance',Default=2500,Min=0,Max=10000,Rounding=0,Compact=true,Callback=function(v)L.XED=v end})
X_TAB:AddDropdown('ExtractionFont',{Values={'UI','System','Plex','Monospace'},Default=3,Multi=false,Text='Font Type',Callback=function(v)L.XEF=FM[v] or 3 end})
local BT = Tabs.B:AddLeftGroupbox("Bullets")
local BTT=BT:AddToggle("BulletTracers",{Text="Bullet Tracers",Default=false,Callback=function(v)L.BTE=v end})
BTT:AddColorPicker("TracerColor",{Default=L.BTC,Title="Tracer Color",Callback=function(v)L.BTC=v end})
BT:AddSlider("TracerSize",{Text="Size",Default=0.1,Min=0.05,Max=3,Rounding=2,Compact=true,Suffix=" Studs",Callback=function(v)L.BTS=v end})
BT:AddSlider("TracerAnimSpeed",{Text="Animation Speed",Default=3,Min=0,Max=10,Rounding=1,Compact=true,Callback=function(v)L.BTA=v end})
BT:AddSlider("TracerDuration",{Text="Duration",Default=1.5,Min=0.1,Max=3.5,Rounding=1,Compact=true,Suffix="s",Callback=function(v)L.BTD=v end})
BT:AddDropdown("TracerStyle",{Values={'1','2','3','4','5','6'},Default='1',Multi=false,Text='Tracer Style',Callback=function(v)L.BTSt=v end})
local WV = Tabs.B:AddLeftGroupbox("World")
local O_AC = S.Lighting.Ambient
WV:AddToggle("CustomAmbientToggle",{Text="Custom Ambient",Default=false,Callback=function(v) L.W_CAE=v if not v then S.Lighting.Ambient=O_AC end end}):AddColorPicker("AmbientColor",{Default=Color3.fromRGB(150,150,150),Title="Ambient Color",Callback=function(v) L.W_AC=v end})
WV:AddToggle("CustomSkyboxToggle",{Text="Custom Skybox",Default=false,Callback=function(v) L.W_SE=v if v then ASky(L.W_SS) else RSky() end end})
WV:AddToggle("CustomClockTimeToggle",{Text="Custom ClockTime",Default=false,Callback=function(v) L.W_CTE=v if v then L.W_OCT=S.Lighting.ClockTime S.Lighting.ClockTime=L.W_CV else S.Lighting.ClockTime=L.W_OCT end end})
WV:AddSlider("ClockTimeSlider",{Text="ClockTime",Default=12,Min=0,Max=24,Rounding=0,Compact=true,Callback=function(v) L.W_CV=v if L.W_CTE then S.Lighting.ClockTime=v end end})
WV:AddDropdown("SkyboxSelection",{Values=(function() local k={} for s,_ in pairs(L.Skyboxes) do table.insert(k,s) end table.sort(k) return k end)(),Default="ElegantMorning",Multi=false,Text="Skybox Selection",Callback=function(v) L.W_SS=v if L.W_SE then ASky(v) end end})
WV:AddDivider()
WV:AddToggle("BloomToggle",{Text="Bloom",Default=false,Callback=function(v) L.W_BE=v end}):AddColorPicker("BloomColor",{Default=Color3.fromRGB(255,255,255),Title="Bloom Color",Callback=function(v) L.W_BC=v end})
WV:AddSlider("BloomSizeSlider",{Text="Bloom Size",Default=24,Min=0,Max=56,Rounding=0,Compact=true,Callback=function(v) L.W_BS=v end})
WV:AddSlider("BloomThresholdSlider",{Text="Bloom Threshold",Default=2,Min=0,Max=10,Rounding=1,Compact=true,Callback=function(v) L.W_BT=v end})
WV:AddSlider("BloomIntensitySlider",{Text="Bloom Intensity",Default=1,Min=0,Max=10,Rounding=1,Compact=true,Callback=function(v) L.W_BI=v end})
local LL = Tabs.B:AddRightGroupbox("Local")
local LG=LL:AddToggle("CustomGunMat",{Text="Custom Gun Material",Default=false,Callback=function(v)L.LGM_E=v end})
LG:AddColorPicker("CustomGunCP",{Default=Color3.new(1,1,1),Title="Material Color",Transparency=0.5,Callback=function(v)L.LGM_C=v L.LGM_T=(Options and Options["CustomGunCP"] and Options["CustomGunCP"].Transparency or 0.5)end})
LL:AddDropdown("CustomGunMatList",{Values={"ForceField","Neon","Plastic","SmoothPlastic","Glass","Foil","Wood","Slate"},Default=1,Multi=false,Text="Material List",Callback=function(v)L.LGM_M=v end})
LL:AddDropdown("CustomGunFFAnim",{Values={"None","Rainbow","Pulse","Fade"},Default=1,Multi=false,Text="Forcefield Animation",Callback=function(v)L.LGM_A=v end})
local CT = Tabs.B:AddRightGroupbox("Crosshair")
local CXH=CT:AddToggle("CrosshairEnabled",{Text="Toggle Crosshair",Default=false,Callback=function(v)L.XHE=v end})
CXH:AddColorPicker("CrosshairColor",{Default=L.XHC,Title="Crosshair Color",Callback=function(v)L.XHC=v end})
CT:AddToggle("CrosshairSpin",{Text="Spin",Default=false,Callback=function(v)L.XHS=v end})
CT:AddToggle("CrosshairLockOnTarget",{Text="Lock On Target",Default=false,Callback=function(v)L.XHL=v end})
CT:AddToggle("NoCrosshair",{Text="No Crosshair",Default=false,Callback=function(v)L.XRR=v if v then for _,g in ipairs(LP.PlayerGui:GetChildren())do if g.Name=="Crosshair"and g:IsA("ScreenGui")then g.Enabled=false end end end end})
CT:AddSlider("CrosshairSize",{Text="Crosshair Size",Default=20,Min=2,Max=100,Rounding=0,Compact=true,Callback=function(v)L.XS=v end})
CT:AddSlider("CrosshairSpinSpeed",{Text="Spin Speed",Default=150,Min=1,Max=200,Rounding=0,Compact=true,Callback=function(v)L.XSp=v end})
CT:AddSlider("CrosshairThickness",{Text="Crosshair Thickness",Default=1,Min=1,Max=10,Rounding=1,Compact=true,Callback=function(v)L.XT=v end})
CT:AddSlider("CrosshairGap",{Text="Crosshair Gap",Default=2,Min=0,Max=50,Rounding=0,Compact=true,Callback=function(v)L.XG=v end})
CT:AddDropdown("CrosshairStyle",{Values={'1','2','3','4','5','6'},Default='1',Multi=false,Text='Crosshair Style',Callback=function(v)L.XSt=v end})
CT:AddDropdown("CrosshairPosition",{Values={'Center Of Screen','Mouse'},Default='Center Of Screen',Multi=false,Text='Crosshair Position',Callback=function(v)L.XP=v end})
L.State.ACT_TRC = {}
local function spawnTracer(p)
if not L.BTE or not p:IsA("BasePart") then return end
local r = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
if not r or (p.Position - r.Position).Magnitude > 10 then return end
local sPos = p.Position
local a0, a1 = Instance.new("Attachment", WS.Terrain), Instance.new("Attachment", WS.Terrain)
a0.WorldPosition = sPos a1.WorldPosition = sPos
local b = Instance.new("Beam", WS.Terrain) b.Attachment0 = a0 b.Attachment1 = a1
b.Color = ColorSequence.new(L.BTC) b.Width0 = L.BTS b.Width1 = L.BTS
b.LightEmission = 1 b.LightInfluence = 0 b.Enabled = true
local style = L.BTSt
local tid = "rbxthumb://type=Asset&id=7151778311&w=420&h=420"
if style == "2" then tid = "rbxthumb://type=Asset&id=446111271&w=420&h=420"
elseif style == "3" then tid = "rbxthumb://type=Asset&id=86406621856457&w=420&h=420"
elseif style == "4" then tid = "rbxthumb://type=Asset&id=7151842833&w=420&h=420"
elseif style == "5" then tid = "rbxthumb://type=Asset&id=15000399181&w=420&h=420"
elseif style == "6" then tid = "rbxthumb://type=Asset&id=73663492833517&w=420&h=420" end
b.Texture = tid b.TextureMode = Enum.TextureMode.Wrap b.TextureSpeed = L.BTA
if style == "6" then b.Width0 = L.BTS * 2 b.Width1 = L.BTS * 2 end
table.insert(L.State.ACT_TRC, {p=p, a0=a0, a1=a1, b=b, st=os.clock(), d=L.BTD, style=style})
end
local proj = WS:WaitForChild("Projectiles", 5) if proj then proj.ChildAdded:Connect(spawnTracer) end
local RB_Bloom, RB_CC
task.spawn(function()
while task.wait(0.25) do
if L.W_CAE then if S.Lighting.Ambient ~= L.W_AC then S.Lighting.Ambient = L.W_AC end end
if L.W_BE then
if not RB_Bloom then RB_Bloom = S.Lighting:FindFirstChild("RoxyBloom") or Instance.new("BloomEffect", S.Lighting) RB_Bloom.Name = "RoxyBloom" end
if not RB_CC then RB_CC = S.Lighting:FindFirstChild("RoxyBloomCC") or Instance.new("ColorCorrectionEffect", S.Lighting) RB_CC.Name = "RoxyBloomCC" end
RB_Bloom.Enabled = true RB_Bloom.Intensity = L.W_BI RB_Bloom.Size = L.W_BS RB_Bloom.Threshold = L.W_BT
RB_CC.Enabled = true RB_CC.TintColor = L.W_BC
else
if RB_Bloom then RB_Bloom.Enabled = false end
if RB_CC then RB_CC.Enabled = false end
end
end
end)
local M1 = Tabs.C:AddLeftGroupbox("Votekick")
M1:AddToggle("ServerhopOnVotekick",{Text="Serverhop On Votekick",Default=false})
M1:AddToggle("SpamVotekick",{Text="Spam Votekick Random People",Default=false})
local M1_Sound = Tabs.C:AddRightGroupbox("Sound")
M1_Sound:AddToggle("HitSoundToggle",{Text="Custom Hit Sound",Default=false,Callback=function(v) L.W_HSE=v end})
M1_Sound:AddSlider("HitSoundVolume",{Text="Hit Sound Volume",Default=1,Min=0,Max=10,Rounding=1,Compact=true,Callback=function(v) L.W_HSV=v end})
M1_Sound:AddDropdown("HitSoundSelection",{Values=(function() local k={} for s,_ in pairs(L.SoundMap) do table.insert(k,s) end table.sort(k) return k end)(),Default="Neverlose",Multi=false,Text="Hit Sound",Callback=function(v) L.W_HSS=v end})
M1_Sound:AddDivider()
M1_Sound:AddToggle("KillSoundToggle",{Text="Custom Kill Sound",Default=false,Callback=function(v) L.W_KSE=v end})
M1_Sound:AddSlider("KillSoundVolume",{Text="Kill Sound Volume",Default=1,Min=0,Max=10,Rounding=1,Compact=true,Callback=function(v) L.W_KSV=v end})
M1_Sound:AddDropdown("KillSoundSelection",{Values=(function() local k={} for s,_ in pairs(L.SoundMap) do table.insert(k,s) end table.sort(k) return k end)(),Default="Neverlose",Multi=false,Text="Kill Sound",Callback=function(v) L.W_KSS=v end})
local M3 = Tabs.C:AddLeftGroupbox("Chat")
M3:AddToggle("MessageOnKill",{Text="Message On Kill",Default=false})
local M4 = Tabs.C:AddRightGroupbox("Notifications")
M4:AddToggle("NotifyOnKill",{Text="Notify On Kill",Default=false})
local M5 = Tabs.C:AddLeftGroupbox("Misc")
M5:AddToggle('AutoExtract', {Text='Auto Extraction', Tooltip='automatically extracts whenever near an excration point', Default=false, Callback=function(v) L.AutoExtract=v end})
M5:AddDropdown('AutoExtractLoc', {Values={'SZ1', 'SZ2'}, Default=1, Multi=false, Text='Extraction Hatch', Callback=function(v) L.AutoExtractLoc=v end})
local M1_Combat = Tabs.A:AddRightGroupbox("Local Mods")
M1_Combat:AddToggle('CWS',{Text='Custom Walkspeed',Default=false,Callback=function(v)L.CWS=v L.CWSTime=os.clock()local c=LP.Character local h=c and c:FindFirstChildOfClass("Humanoid")if v then L.CWSStart=h and h.WalkSpeed or 16 end end}):AddKeyPicker('CWSKey',{Default='None',SyncToggleState=true,Mode='Toggle',Text='Custom Walkspeed',NoUI=false})
M1_Combat:AddToggle('CJP',{Text='Custom JumpPower',Default=false,Callback=function(v)L.CJP=v L.CJPTime=os.clock()local c=LP.Character local h=c and c:FindFirstChildOfClass("Humanoid")if v then L.CJPStart=h and h.JumpPower or 50 end end}):AddKeyPicker('CJPKey',{Default='None',SyncToggleState=true,Mode='Toggle',Text='Custom JumpPower',NoUI=false})
M1_Combat:AddToggle('Noclip',{Text='Noclip',Default=false,Callback=function(v)L.Noclip=v end}):AddKeyPicker('NoclipKey',{Default='None',SyncToggleState=true,Mode='Toggle',Text='Noclip',NoUI=false})
M1_Combat:AddToggle('FlyE',{Text='Fly',Default=false,Callback=function(v)L.FlyE=v end}):AddKeyPicker('FlyKey',{Default='None',SyncToggleState=true,Mode='Toggle',Text='Fly',NoUI=false})
M1_Combat:AddSlider('FlySpeed',{Text='Fly Speed',Default=20,Min=0,Max=34,Rounding=1,Compact=true,Callback=function(v)L.FlyS=v end})
M1_Combat:AddSlider('CWSAmount',{Text='Walkspeed Amount',Default=25,Min=16,Max=33,Rounding=0,Compact=true,Callback=function(v)L.CWSA=v end})
M1_Combat:AddSlider('CJPAmount',{Text='JumpPower Amount',Default=50,Min=50,Max=225,Rounding=0,Compact=true,Callback=function(v)L.CJPA=v end})
local SA_G = Tabs.A:AddLeftGroupbox("Silent Aim")
SA_G:AddToggle('SA_E', {Text='Silent Aim', Default=false, Callback=function(v) L.SA_E=v end}):AddKeyPicker('SA_K', {Default='None', SyncToggleState=true, Mode='Toggle', Text='Silent Aim', NoUI=false})
SA_G:AddToggle('SA_MB', {Text='Magic Bullet', Tooltip='only works for thin walls / some angles', Default=false, Callback=function(v) L.SA_MB=v end})
SA_G:AddToggle('SA_VO', {Text='Wall Check', Default=false, Callback=function(v) L.SA_VO=v end})
SA_G:AddToggle('SA_CP', {Text='Closest Part', Default=false, Callback=function(v) L.SA_CP=v end})
SA_G:AddSlider('SA_HC', {Text='Hit Chance', Default=100, Min=0, Max=100, Rounding=0, Compact=true, Suffix='%', Callback=function(v) L.SA_HC=v end})
SA_G:AddSlider('SA_MD', {Text='Max Distance', Default=500, Min=0, Max=2000, Rounding=0, Compact=true, Callback=function(v) L.SA_MD=v end})
SA_G:AddDropdown('SA_P', {Values={'Head','Torso'}, Default=1, Multi=false, Text='HitPart', Callback=function(v) L.SA_P=v end})
SA_G:AddDivider()
SA_G:AddToggle('SA_SF', {Text='FOV Visible', Default=false, Callback=function(v) L.SA_SF=v end}):AddColorPicker('SA_FC', {Default=L.SA_FC or Color3.new(1,1,1), Title='FOV Color', Callback=function(v) L.SA_FC=v end})
SA_G:AddToggle('SA_SE', {Text='Snapline', Default=false, Callback=function(v) L.SA_SE=v end}):AddColorPicker('SA_SC', {Default=Color3.new(1,1,1), Title='Snapline Color', Callback=function(v) L.SA_SC=v end})
SA_G:AddToggle('SA_FT', {Text='Follow Target', Default=false, Callback=function(v) L.SA_FT=v end})
SA_G:AddSlider('SA_FR', {Text='FOV Radius', Default=120, Min=0, Max=800, Rounding=0, Compact=true, Callback=function(v) L.SA_FR=v end})
SA_G:AddDropdown('SA_SP', {Values={'Mouse','Center Of Screen','Bottom'}, Default=1, Multi=false, Text='Snap Origin', Callback=function(v) L.SA_SP=v end})
local HBE = Tabs.A:AddLeftGroupbox("Hitbox Expander")
HBE:AddToggle('HBE_E',{Text='Hitbox Expander',Default=false,Callback=function(v)L.HBE_E=v if v then if Toggles.ChamsESP then L.pCE=Toggles.ChamsESP.Value Toggles.ChamsESP:SetValue(false)end else if L.pCE~=nil and Toggles.ChamsESP then Toggles.ChamsESP:SetValue(L.pCE)L.pCE=nil end end end}):AddColorPicker('HBE_C',{Default=Color3.new(1,1,1),Title='Expansion Color',Callback=function(v)L.HBE_C=v end}):AddKeyPicker('HBE_K',{Default='None',SyncToggleState=true,Mode='Toggle',Text='Hitbox Expander',NoUI=false})
HBE:AddSlider('HBE_S',{Text='Hitbox Size',Default=10,Min=1,Max=12,Rounding=1,Compact=true,Callback=function(v)L.HBE_S=v end})
HBE:AddSlider('HBE_T',{Text='Hitbox Transparency',Default=0.5,Min=0,Max=1,Rounding=2,Compact=true,Callback=function(v)L.HBE_T=v end})
HBE:AddDropdown('HBE_P',{Values={'Head','Torso'},Default=1,Multi=false,Text='Target Part',Callback=function(v)L.HBE_P=v end})
HBE:AddDropdown('HBE_M',{Values={'Plastic','ForceField','Neon'},Default=2,Multi=false,Text='Material',Callback=function(v)L.HBE_M=v end})
local GMODS = Tabs.A:AddRightGroupbox("Gun Mods")
GMODS:AddToggle('NR_E', {Text='No Recoil', Default=false, Callback=function(v) L.NR_E=v UpdateWeaponStats() end})
GMODS:AddToggle('NS_E', {Text='No Spread', Default=false, Callback=function(v) L.NS_E=v UpdateWeaponStats() end})
GMODS:AddToggle('IR_E', {Text='Instant Reload', Default=false, Callback=function(v) L.IR_E=v UpdateWeaponStats() end})
GMODS:AddToggle('IE_E', {Text='Instant Equip', Default=false, Callback=function(v) L.IE_E=v UpdateWeaponStats() end})
GMODS:AddToggle('INF_R_E', {Text='Infinite Range', Default=false, Callback=function(v) L.INF_R_E=v UpdateWeaponStats() end})
GMODS:AddToggle('AFA_E', {Text='Always Full Auto', Default=false, Callback=function(v) L.AFA_E=v UpdateWeaponStats() end})
local CFR_T = GMODS:AddToggle('CFR_E', {Text='Custom Fire Rate', Default=false, Callback=function(v) L.CFR_E=v UpdateWeaponStats() end})
local CFR_DB = GMODS:AddDependencyBox()
CFR_DB:AddSlider('CFR_A', {Text='Fire Rate Amount', Default=0.1, Min=0.01, Max=1, Rounding=4, Compact=true, Callback=function(v) L.CFRA=v if L.CFR_E then UpdateWeaponStats() end end})
CFR_DB:SetupDependencies({{CFR_T, true}})
GMODS:AddToggle('HV_E', {Text='Instant Bullet', Default=false, Callback=function(v) L.HV_E=v UpdateWeaponStats() end})
L.State.HBOC=setmetatable({},{__mode="k"})
local lHBE=0
local cjpR,cwsR=false,false
local lp_h_char, lp_h_hum, lp_h_root
L.Connections.Heartbeat = RS.Heartbeat:Connect(function(dt)
local c=LP.Character
if lp_h_char ~= c then
lp_h_char = c
lp_h_hum = c and c:FindFirstChildOfClass("Humanoid")
lp_h_root = c and c:FindFirstChild("HumanoidRootPart")
end
local h=lp_h_hum
local r=lp_h_root
local isDead=not h or h.Health<=0
if not isDead and (L.CJP or cjpR) then
local t,s=os.clock()-(L.CJPTime or 0),L.CJPStart or 50 local tg=L.CJP and(L.CJPA or 50)or(L.CJPStart or 50)local sl=math.clamp(t/0.25,0,1)
if L.CJP or sl<1 then cjpR=true h.UseJumpPower=true h.JumpPower=s+(tg-s)*sl else cjpR=false end
end
if not isDead and (L.CWS or cwsR) then
    local t,s=os.clock()-(L.CWSTime or 0),L.CWSStart or 16 local tg=L.CWS and(L.CWSA or 25)or 16 local sl=math.clamp(t/0.5,0,1)
    if L.CWS or sl<1 then cwsR=true local v=s+(tg-s)*sl local e=v-h.WalkSpeed if e>0 and h.MoveDirection.Magnitude>0 then if r then r.CFrame=r.CFrame+(h.MoveDirection*(e*dt))end end else cwsR=false end
end
local pN=L.HBE_P or "Head" local mat=(L.HBE_M=="ForceField" or L.HBE_M==2) and Enum.Material.ForceField or (L.HBE_M=="Neon" or L.HBE_M==3) and Enum.Material.Neon or Enum.Material.Plastic local col=L.HBE_C or Color3.new(1,1,1) local tA,sV=L.HBE_T or 0.5,L.HBE_S or 10 local sz=Vector3.new(sV,sV,sV) local n=os.clock()
local hbA=next(L.State.HBOC)
if not L.HBE_E and not L.CJP and not cjpR and not L.CWS and not cwsR and not hbA then return end
if L.HBE_E and not isDead then
    if n-lHBE>0.5 then lHBE=n
    for p,v in pairs(L.State.HBOC)do if not p.Parent or not p.Parent.Parent then L.State.HBOC[p]=nil end end
    for m,cA in pairs(espCache)do if cA.sS and m.Parent then 
        local p=m:FindFirstChild(pN) if p and p:IsA("BasePart") then
            if L.WFE and L.Friendlies[m.Name] then
                local v = L.State.HBOC[p]
                if v then
                    p.Size=v.S p.Material=v.M p.Color=v.C p.Transparency=v.T p.CanCollide=v.CC p.Massless=v.ML
                    L.State.HBOC[p]=nil
                end
                continue
            end
            local og=L.State.HBOC[p]if not og then og={S=p.Size,M=p.Material,C=p.Color,T=p.Transparency,CC=p.CanCollide,ML=p.Massless}L.State.HBOC[p]=og end
            if p.Size~=sz then p.Size=sz end if p.Transparency~=tA then p.Transparency=tA end if p.Material~=mat then p.Material=mat end if p.Color~=col then p.Color=col end if p.CanCollide then p.CanCollide=false end if not p.Massless then p.Massless=true end
        end
    end end end
elseif next(L.State.HBOC)then
    for p,v in pairs(L.State.HBOC)do if p.Parent then p.Size=v.S p.Material=v.M p.Color=v.C p.Transparency=v.T p.CanCollide=v.CC p.Massless=v.ML L.State.HBOC[p]=nil end end
end
end)
local NoclipCache = {}
local lp_nc_char = nil
local function onStepped()
if L.Noclip and LP.Character then
if lp_nc_char ~= LP.Character then
lp_nc_char = LP.Character
for i in pairs(NoclipCache) do NoclipCache[i] = nil end
for _, v in ipairs(lp_nc_char:GetChildren()) do
if v:IsA("BasePart") then table.insert(NoclipCache, v) end
end
lp_nc_char.ChildAdded:Connect(function(c) if c:IsA("BasePart") then table.insert(NoclipCache, c) end end)
end
for i=1,#NoclipCache do
local v = NoclipCache[i]
if v.CanCollide then v.CanCollide=false end
end
else
lp_nc_char = nil
end
end
local flyV, flyG = nil, nil
local function onFly()
    local char = LP.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if L.FlyE and hrp then
        if not flyV or flyV.Parent ~= hrp then
            if flyV then pcall(function() flyV:Destroy() end) end
            flyV = Instance.new("BodyVelocity")
            flyV.MaxForce = Vector3.new(1, 1, 1) * 10^6
            flyV.Velocity = Vector3.new(0, 0, 0)
            flyV.Parent = hrp
        end
        if not flyG or flyG.Parent ~= hrp then
            if flyG then pcall(function() flyG:Destroy() end) end
            flyG = Instance.new("BodyGyro")
            flyG.MaxTorque = Vector3.new(1, 1, 1) * 10^6
            flyG.CFrame = hrp.CFrame
            flyG.D = 100
            flyG.P = 10000
            flyG.Parent = hrp
        end
        local camF = C.CFrame
        local dir = Vector3.new(0, 0, 0)
        if UIS:IsKeyDown(Enum.KeyCode.W) then dir = dir + camF.LookVector end
        if UIS:IsKeyDown(Enum.KeyCode.S) then dir = dir - camF.LookVector end
        if UIS:IsKeyDown(Enum.KeyCode.A) then dir = dir - camF.RightVector end
        if UIS:IsKeyDown(Enum.KeyCode.D) then dir = dir + camF.RightVector end
        if UIS:IsKeyDown(Enum.KeyCode.Space) then dir = dir + Vector3.new(0, 1, 0) end
        if UIS:IsKeyDown(Enum.KeyCode.LeftShift) then dir = dir - Vector3.new(0, 1, 0) end
        
        if dir.Magnitude > 0 then
            flyV.Velocity = dir.Unit * (L.FlyS or 20)
        else
            flyV.Velocity = Vector3.new(0, 0, 0)
        end
        flyG.CFrame = camF
    else
        if flyV then pcall(function() flyV:Destroy() end) flyV = nil end
        if flyG then pcall(function() flyG:Destroy() end) flyG = nil end
    end
end
L.Connections.Stepped = RS.Stepped:Connect(function() 
    onStepped()
    onFly()
end)
local XL,XO,XFL,XFO,XSL,XSO,XD,XDO={},{},{},{},{},{},Drawing.new("Circle"),Drawing.new("Circle")
local XANG=0
local CROSS_sds={["1"]={Top=1,Right=1,Bottom=1,Left=1},["2"]={Top=1,Bottom=1},["3"]={Left=1,Right=1}}
local CROSS_ord,CROSS_ags={"Top","Right","Bottom","Left"},{0,90,180,270}
local CROSS_ta={{90,210,330},{270,30,150}}
for i=1,4 do XL[i]=Drawing.new("Line")XL[i].ZIndex=2 XO[i]=Drawing.new("Line")XO[i].Color=Color3.new(0,0,0)XO[i].ZIndex=1
XFL[i]=Drawing.new("Line")XFL[i].ZIndex=2 XFO[i]=Drawing.new("Line")XFO[i].Color=Color3.new(0,0,0)XFO[i].ZIndex=1 end
for i=1,6 do XSL[i]=Drawing.new("Line")XSL[i].ZIndex=2 XSO[i]=Drawing.new("Line")XSO[i].Color=Color3.new(0,0,0)XSO[i].ZIndex=1 end
XD.Filled=true XDO.Filled=true XD.ZIndex=2 XDO.ZIndex=1 XD.Visible=false XDO.Visible=false XDO.Color=Color3.new(0,0,0)
local XC,LT,WasTargetingXC=Vector2.new(C.ViewportSize.X/2,C.ViewportSize.Y/2),nil,false
local function gXC(dt)
local tP=nil
if L.XHL and L.SA_T and L.SA_T.Parent then
local to=L.SA_TP or L.SA_T:FindFirstChild(L.SA_P or "Head")
if to then
local p,o=C:WorldToViewportPoint(to.Position)
if o then tP=Vector2.new(p.X,p.Y)end
end
end
if tP then
XC=XC:Lerp(tP,math.clamp(dt*30,0,1))
WasTargetingXC=true
else
local mP=(L.XP=="Mouse"and UIS:GetMouseLocation()or Vector2.new(C.ViewportSize.X/2,C.ViewportSize.Y/2))
if WasTargetingXC then
XC=XC:Lerp(mP,math.clamp(dt*30,0,1))
if (XC-mP).Magnitude<1 then WasTargetingXC=false XC=mP end
else
XC=mP
end
end
return XC
end
LP.PlayerGui.ChildAdded:Connect(function(g)if L.XRR and g.Name=="Crosshair"and g:IsA("ScreenGui")then g.Enabled=false end end)
local XH_V=true
local function onRenderSteppedVisuals(dt)
local n=os.clock()
for i=#L.State.ACT_TRC,1,-1 do local v=L.State.ACT_TRC[i] local et=n-v.st 
local a=1 if et<0.15 then a=et/0.15 elseif et>v.d-0.35 then a=1-((et-(v.d-0.35))/0.35)end a=math.clamp(a,0,1)
local b=v.style=="2"and 0.5 or 0 local fT=b+(1-b)*(1-a)
if v.b and v.b.Parent then if v.style=="5"then v.b.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,fT),NumberSequenceKeypoint.new(0.5,math.clamp(0.5+(fT/2),0,1)),NumberSequenceKeypoint.new(1,1)})else v.b.Transparency=NumberSequence.new(fT)end end
if v.p and v.p.Parent then if v.a1 and v.a1.Parent then v.a1.WorldPosition=v.p.Position end else v.p=nil end
if et>=v.d then if v.b then v.b:Destroy()end if v.a0 then v.a0:Destroy()end if v.a1 then v.a1:Destroy()end table.remove(L.State.ACT_TRC,i)end end
if not L.XHE then
if XH_V then
for i=1,4 do XL[i].Visible=false XO[i].Visible=false XFL[i].Visible=false XFO[i].Visible=false end
for i=1,6 do XSL[i].Visible=false XSO[i].Visible=false end
XD.Visible=false XDO.Visible=false XH_V=false
end
return
end
XH_V=true
local cp=gXC(dt) local sz,gp,th,st=L.XS,L.XG,L.XT,L.XSt
if L.XHS then XANG=(XANG+dt*(L.XSp or 150))%360 else XANG=0 end
local cl=Options.CrosshairColor and Options.CrosshairColor.Value or L.XHC or Color3.new(1,1,1)
if st=="4" then
for i=1,4 do XL[i].Visible=false XO[i].Visible=false XFL[i].Visible=false XFO[i].Visible=false end
for i=1,6 do XSL[i].Visible=false XSO[i].Visible=false end
XD.Radius=th*1.5 XD.Position=cp XD.Color=cl XD.Visible=true
XDO.Radius=XD.Radius+1 XDO.Position=cp XDO.Color=Color3.new(0,0,0)XDO.Visible=true return
elseif st=="6" then
XD.Visible=false XDO.Visible=false for i=1,4 do XL[i].Visible=false XO[i].Visible=false XFL[i].Visible=false XFO[i].Visible=false end
local r,li=sz,1
for _,t in ipairs(CROSS_ta)do local vs={}for j=1,3 do local rd=math.rad(XANG+t[j])vs[j]=cp+Vector2.new(math.cos(rd),-math.sin(rd))*r end
for j=1,3 do local a,b=vs[j],vs[(j%3)+1]XSL[li].From=a XSL[li].To=b XSL[li].Thickness=th XSL[li].Color=cl XSL[li].Visible=true
XSO[li].From=a XSO[li].To=b XSO[li].Thickness=th+2 XSO[li].Color=Color3.new(0,0,0)XSO[li].Visible=true li=li+1 end end return
else XD.Visible=false XDO.Visible=false for i=1,6 do XSL[i].Visible=false XSO[i].Visible=false end end
local sd=CROSS_sds[st]or CROSS_sds["1"]
for i=1,4 do local sn=CROSS_ord[i] if sd[sn]then local rd=math.rad(XANG+CROSS_ags[i])local dr=Vector2.new(math.cos(rd),math.sin(rd))
local fr,to=cp+dr*gp,cp+dr*(gp+sz)
if st=="5"then local pp=Vector2.new(-dr.Y,dr.X)local of=math.max(2,sz)fr=cp to=cp+dr*(gp+sz)
XFL[i].From=to XFL[i].To=to+pp*of XFL[i].Color=cl XFL[i].Thickness=th XFL[i].Visible=true
XFO[i].From=to XFO[i].To=to+pp*of XFO[i].Thickness=th+2 XFO[i].Color=Color3.new(0,0,0)XFO[i].Visible=true
else XFL[i].Visible=false XFO[i].Visible=false end
XL[i].From=fr XL[i].To=to XL[i].Color=cl XL[i].Thickness=th XL[i].Visible=true
XO[i].From=fr XO[i].To=to XO[i].Thickness=th+2 XO[i].Color=Color3.new(0,0,0)XO[i].Visible=true
else XL[i].Visible=false XO[i].Visible=false XFL[i].Visible=false XFO[i].Visible=false end end
end
local SA_FOV, SA_FOV_O = Drawing.new("Circle"), Drawing.new("Circle")
SA_FOV.Thickness = 1 SA_FOV.Transparency = 1 SA_FOV.Visible = false SA_FOV.Filled = false SA_FOV.ZIndex = 3
SA_FOV_O.Thickness = 3 SA_FOV_O.Transparency = 1 SA_FOV_O.Visible = false SA_FOV_O.Filled = false SA_FOV_O.Color = Color3.new(0,0,0) SA_FOV_O.ZIndex = 2
local SA_SL, SA_SL_O = Drawing.new("Line"), Drawing.new("Line")
SA_SL.Thickness = 1 SA_SL.Transparency = 1 SA_SL.Visible = false SA_SL.Color = Color3.new(1,1,1) SA_SL.ZIndex = 3
SA_SL_O.Thickness = 3 SA_SL_O.Transparency = 1 SA_SL_O.Visible = false SA_SL_O.Color = Color3.new(0,0,0) SA_SL_O.ZIndex = 2
local SA_S_ALP = 0
local SFC, WasTargetingSFC = Vector2.new(C.ViewportSize.X/2, C.ViewportSize.Y/2), false
local SA_V=true
local function onRenderSteppedSilentAim(dt)
if not L.SA_E and not L.SA_SF and not L.SA_SE then 
if SA_V then SA_FOV.Visible=false SA_FOV_O.Visible=false SA_SL.Visible=false SA_SL_O.Visible=false L.SA_T=nil L.SA_TP=nil SA_V=false SA_S_ALP=0 end return end
SA_V=true
local tP = nil
if L.SA_FT or L.SA_SE then
if L.SA_T and L.SA_T.Parent then
local targetPart = L.SA_TP or L.SA_T:FindFirstChild(L.SA_P or "Head")
if targetPart then
local p, o = C:WorldToViewportPoint(targetPart.Position)
if o then tP = Vector2.new(p.X, p.Y) end
end
end
end
if L.SA_FT then
if tP then SFC = SFC:Lerp(tP, math.clamp(dt * 30, 0, 1)) WasTargetingSFC = true else
local mP = UIS:GetMouseLocation()
if WasTargetingSFC then SFC = SFC:Lerp(mP, math.clamp(dt * 30, 0, 1)) if (SFC-mP).Magnitude < 1 then WasTargetingSFC = false SFC = mP end else SFC = mP end
end
else
SFC = UIS:GetMouseLocation() WasTargetingSFC = false
end
if L.SA_SF and L.SA_E then
SA_FOV.Visible = true SA_FOV_O.Visible = true
SA_FOV.Radius = L.SA_FR SA_FOV_O.Radius = L.SA_FR
SA_FOV.Color = L.SA_FC or Color3.new(1,1,1)
SA_FOV.Position = SFC SA_FOV_O.Position = SFC
else
SA_FOV.Visible = false SA_FOV_O.Visible = false
end
if L.SA_SE and L.SA_E then
if tP then
SA_S_ALP = math.clamp(SA_S_ALP + (dt / 0.1), 0, 1)
local sOrg = UIS:GetMouseLocation()
if L.SA_SP == 'Center Of Screen' then sOrg = Vector2.new(C.ViewportSize.X/2, C.ViewportSize.Y/2)
elseif L.SA_SP == 'Bottom' then sOrg = Vector2.new(C.ViewportSize.X/2, C.ViewportSize.Y) end
SA_SL.Visible = true SA_SL_O.Visible = true
SA_SL.From = sOrg SA_SL.To = tP SA_SL_O.From = sOrg SA_SL_O.To = tP
SA_SL.Color = L.SA_SC or Color3.new(1,1,1)
SA_SL.Transparency = SA_S_ALP SA_SL_O.Transparency = SA_S_ALP
else
SA_SL.Visible = false SA_SL_O.Visible = false SA_S_ALP = 0
end
else
SA_SL.Visible = false SA_SL_O.Visible = false SA_S_ALP = 0
end
if L.SA_E then local a, b = gCTM() L.SA_T = a L.SA_TP = b else L.SA_T = nil L.SA_TP = nil end
end
local oldNC; oldNC = hookmetamethod(game, "__namecall", function(self, ...)
local method = getnamecallmethod()
if not checkcaller() and (method == "FireServer" or method == "InvokeServer") and L.SA_E and L.SA_T then
if typeof(self) == "Instance" and (self.Name == "CastProjectileRequest" or self.Name == "RequestFire") then
local args = {...}
local data = nil
for i = 1, #args do
if typeof(args[i]) == "table" and (args[i].StartCF or args[i].Origin or args[i].FirePos) then
data = args[i]
break
end
end
if data then
if math.random(1, 100) <= (L.SA_HC or 100) then
local targetPart = L.SA_TP or L.SA_T:FindFirstChild(L.SA_P or "Head")
if targetPart then
pcall(function()
local origin = (data.StartCF and data.StartCF.Position) or data.Origin or data.FirePos or data.ShootPos
local targetPos = targetPart.Position
if origin and typeof(origin) == "Vector3" then
local dir = (targetPos - origin)
if dir.Magnitude > 0.01 then
local newDir = dir.Unit
if L.SA_MB then
local projId = (type(args[1]) == "number" and args[1]) or (type(args[2]) == "number" and args[2]) or args[1]
local rep = game:GetService("ReplicatedStorage")
local rem = rep and rep:FindFirstChild("Remotes")
local vp = rem and rem:FindFirstChild("VerifyProjectile")
if vp then pcall(function() vp:FireServer(projId, L.SA_T, false) end) end

if type(data) == "table" then
data.NoRender = true
data.Range = 999999
data.ProjectileSpeed = 999999
data.Velocity = newDir * 999999
data.MaxPenetration = 999999
if typeof(data.ModelsBlacklist) == "table" then
for _, v in ipairs(workspace:GetChildren()) do
if v.Name ~= "Entities" and v.Name ~= "Players" and v.Name ~= "Camera" and v ~= LP.Character then
table.insert(data.ModelsBlacklist, v)
end
end
end
end
end
if data.StartCF then data.StartCF = CFrame.new(origin, targetPos) end
if data.Origin then data.Origin = origin end
if data.FirePos then data.FirePos = origin end
if data.ShootPos then data.ShootPos = origin end
if data.Direction then data.Direction = newDir end
if data.DirectionVector then data.DirectionVector = newDir end
if data.UnitVector then data.UnitVector = newDir end
if data.Velocity then data.Velocity = newDir * (typeof(data.Velocity) == "Vector3" and data.Velocity.Magnitude or 1000) end
if data.Ray then data.Ray = Ray.new(origin, newDir * 1000) end
end
end
end)
end
end
end
end
end
setnamecallmethod(method)
return oldNC(self, ...)
end)
Library:SetWatermarkVisibility(true)
local FrameTimer=tick()
local FrameCounter=0
local FPS=60
local GetPing=(function()
return math.floor(game:GetService('Stats').Network.ServerStatsItem['Data Ping']:GetValue())
end)
local CanDoPing=pcall(function()
return GetPing()
end)
local function onRenderSteppedWatermark()
FrameCounter+=1
if (tick()-FrameTimer)>=1 then
FPS=FrameCounter
FrameTimer=tick()
FrameCounter=0
end
if CanDoPing then
Library:SetWatermark(('roxy.win / dev | %d fps | %d ms'):format(math.floor(FPS),GetPing()))
else
Library:SetWatermark(('roxy.win | %d fps'):format(math.floor(FPS)))
end
end

L.Connections.RenderStepped = RS.RenderStepped:Connect(function(dt)
    onRenderSteppedESP(dt)
    onRenderSteppedVisuals(dt)
    onRenderSteppedSilentAim(dt)
    onRenderSteppedWatermark()
end)

local function Panic()
    L.CE, L.NE, L.BE, L.HE, L.DE, L.WE, L.AE = false, false, false, false, false, false, false
    L.BTE, L.XHE, L.CE_E, L.IGE, L.IDE, L.XEE = false, false, false, false, false, false
    L.LGM_E, L.NR_E, L.NS_E, L.IR_E, L.IE_E, L.INF_R_E, L.AFA_E, L.CFR_E, L.HV_E = false, false, false, false, false, false, false, false, false
    L.CWS, L.CJP, L.Noclip, L.FlyE = false, false, false, false
    if flyV then pcall(function() flyV:Destroy() end) flyV = nil end
    if flyG then pcall(function() flyG:Destroy() end) flyG = nil end
    L.W_CAE, L.W_SE, L.W_CTE, L.W_BE = false, false, false, false
    L.SA_E, L.SA_SF, L.SA_SE = false, false, false
    L.SA_T = nil L.SA_TP = nil
    
    local c = LP.Character
    local h = c and c:FindFirstChildOfClass("Humanoid")
    if h then
        h.WalkSpeed = 16
        h.JumpPower = 50
    end

    if next(wOrig) then 
        for p, v in pairs(wOrig) do if p.Parent then p.Material = v.M p.Color = v.C p.Transparency = v.T if v.SA then v.SA.Parent = p end end end 
        wOrig = setmetatable({}, {__mode = "k"}) 
    end
    
    if next(L.State.HBOC) then
        for p, v in pairs(L.State.HBOC) do if p.Parent then p.Size = v.S p.Material = v.M p.Color = v.C p.Transparency = v.T p.CanCollide = v.CC p.Massless = v.ML end end
        L.State.HBOC = setmetatable({}, {__mode = "k"})
    end

    UpdateWeaponStats()
    if L.W_OCT then S.Lighting.ClockTime = L.W_OCT end
    RSky()
    if S.Lighting:FindFirstChild("RoxyBloom") then S.Lighting.RoxyBloom:Destroy() end
    if S.Lighting:FindFirstChild("RoxyBloomCC") then S.Lighting.RoxyBloomCC:Destroy() end
    task.wait(L.FOut or 0.15)
    for m in pairs(L.AC) do cC(m) end
    for _, caches in ipairs({L.ND, L.DD, L.WD, L.AD, L.BD, L.BOD, L.BFD, L.HOD, L.HTD}) do
        for k, v in pairs(caches) do pcall(function() v:Remove() end) caches[k] = nil end
    end
    for _, b in pairs(L.HD) do for _, s in ipairs(b) do pcall(function() s:Remove() end) end end
    for _, t in pairs(L.Cache.Item) do pcall(function() t:Remove() end) end
    for _, t in pairs(L.Cache.Crate) do pcall(function() t:Remove() end) end
    for _, cA in pairs(L.Cache.XT) do if cA.tx then cA.tx:Remove() end if cA.bg then cA.bg:Destroy() end end
    if SA_FOV then SA_FOV:Remove() end if SA_FOV_O then SA_FOV_O:Remove() end
    if SA_SL then SA_SL:Remove() end if SA_SL_O then SA_SL_O:Remove() end
    if XD then XD:Remove() end if XDO then XDO:Remove() end
    for i=1,4 do if XL[i] then XL[i]:Remove() end if XO[i] then XO[i]:Remove() end if XFL[i] then XFL[i]:Remove() end if XFO[i] then XFO[i]:Remove() end end
    for i=1,6 do if XSL[i] then XSL[i]:Remove() end if XSO[i] then XSO[i]:Remove() end end
    
    Library:Unload()
end

Library:OnUnload(function()
    for _, v in pairs(L.Connections) do v:Disconnect() end
    Library.Unloaded = true
end)
local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox("Menu")
MenuGroup:AddToggle("KeybindMenuOpen",{
Default=Library.KeybindFrame.Visible,
Text="Open Keybind Menu",
Callback=function(v)
Library.KeybindFrame.Visible=v
end
})
MenuGroup:AddToggle("ShowCustomCursor",{
Text="Custom Cursor",
Default=false,
Callback=function(v)
Library.ShowCustomCursor=v
end
})
MenuGroup:AddToggle("HideLogo",{
Text="Hide Logo",
Default=false,
Callback=function(v)
Library.HideImages=v
if Library.BackgroundImage then
Library.BackgroundImage.Visible = not v
end
end
})
MenuGroup:AddDivider()
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind",{Default="RightShift",NoUI=true,Text="Menu keybind"})
MenuGroup:AddButton("Unload", Panic)
MenuGroup:AddDropdown("NotificationPosition", {
Values = {"Left", "Right", "Bottom"},
Default = "Bottom",
Multi = false,
Text = "Notification Position",
Callback = function(v)
Library.NotifySide = v
end
})

end
local baseTitle = "                                                                                       "
local current = "roxy.win"
local flickerChar = "$$"
task.spawn(function()
    local visible = true
    while true do
        local accent = Library.AccentColor
        local color = visible and "FFFFFF" or string.format("%02X%02X%02X", accent.R * 255, accent.G * 255, accent.B * 255)
        local left = '<font color="#' .. color .. '">$$</font>'
        local right = '<font color="#' .. color .. '">$$</font>'
        Window:SetWindowTitle(baseTitle .. left .. " " .. current .. " " .. right)
        visible = not visible
        task.wait(0.5)
    end
end)
task.spawn(function()
    local isExtracting = false
    while task.wait(0.25) do
        if L.AutoExtract and not isExtracting then
            local char = LP.Character
            local root = char and char:FindFirstChild("HumanoidRootPart")
            if root then
                local interactibles = workspace:FindFirstChild("Interactible")
                if interactibles then
                    local closestPoint = nil
                    local closestDist = 20
                    for _, v in ipairs(interactibles:GetChildren()) do
                        if v.Name:find("Extraction Point") then
                            local pos = v:IsA("Model") and (v.PrimaryPart and v.PrimaryPart.Position or v:GetModelCFrame().Position) or (v:IsA("BasePart") and v.Position)
                            if pos then
                                local dist = (root.Position - pos).Magnitude
                                if dist < closestDist then
                                    closestDist = dist
                                    closestPoint = v
                                end
                            end
                        end
                    end
                    if closestPoint then
                        isExtracting = true
                        Library:Notify("Auto Extracting...", 3)
                        local targetHatches = workspace:FindFirstChild("Hatches")
                        local sz = L.AutoExtractLoc or "SZ1"
                        local dest = targetHatches and targetHatches:FindFirstChild(sz) and targetHatches[sz]:FindFirstChild(sz)
                        if dest then
                            pcall(function()
                                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TeleporterRequest"):InvokeServer(closestPoint, dest)
                            end)
                        end
                        task.wait(5)
                        isExtracting = false
                    end
                end
            end
        end
    end
end)
Library.ToggleKeybind=Options.MenuKeybind
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({'MenuKeybind'})
ThemeManager:SetFolder('Roxy.win')
SaveManager:SetFolder('Roxy.win/Phantom-Forces')
SaveManager:SetSubFolder('specific-place')
SaveManager:BuildConfigSection(Tabs['UI Settings'])
local WL = Tabs['UI Settings']:AddRightGroupbox("Whitelists")
WL:AddToggle('WhitelistFriendlies', { Text = 'Whitelist Friendlies', Default = false, Tooltip = 'Excludes all players selected in the Friendlies list from Silent Aim targeting.', Callback = function(v) L.WFE = v end })
WL:AddDropdown('FriendliesDropdown', { SpecialType = 'Player', Text = 'Friendlies', Multi = true, Callback = function(v) L.Friendlies = v end })
WL:AddDropdown('PrioritiesDropdown', { SpecialType = 'Player', Text = 'Priorities', Multi = true, Callback = function(v) L.Priorities = v end })
ThemeManager:ApplyToTab(Tabs['UI Settings'])
SaveManager:LoadAutoloadConfig()
