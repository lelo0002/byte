local RunService = game:GetService("RunService")
local TS = game:GetService("TeleportService")
local LGT = game:GetService("Lighting")
local SS = game:GetService("SoundService")
local TCS = game:GetService("TextChatService")
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



local P=game:GetService("Players")
local RS=game:GetService("RunService")
local WS=game:GetService("Workspace")
local CG=game:GetService("CoreGui")
local RSto=game:GetService("ReplicatedStorage")
local UIS=game:GetService("UserInputService")
local C=WS.CurrentCamera
local LP=P.LocalPlayer
local EF=WS:WaitForChild("Entities", 10) or WS:WaitForChild("Players", 10)
local L={}
L.DMax=5000 L.FTime=0.15 L.Font=2 L.CType="Highlight" L.CB="AlwaysOnTop" L.CShrink=1.2 L.BThick=0.5 L.BOThick=3 L.HGE=true
L.BC=Color3.fromRGB(255,255,255) L.BFC=Color3.fromRGB(84,132,171) L.NTC=Color3.fromRGB(255,255,255) L.WTC=Color3.fromRGB(255,255,255)
L.DTC=Color3.fromRGB(255,255,255) L.HHC=Color3.fromRGB(0,255,0) L.HLC=Color3.fromRGB(255,0,0) L.HTC=Color3.fromRGB(255,255,255) L.ATC=Color3.fromRGB(255,255,255)
L.CC=Color3.fromRGB(84,132,171) L.CTrans=0.5 L.ID={} L.AD={} L.DD={} L.WD={} L.ND={} L.BD={} L.BOD={} L.BFD={} L.HD={} L.HOD={} L.HTD={}
L.AC=setmetatable({},{__mode="k"}) L.CH=setmetatable({},{__mode="k"}) L.VH=setmetatable({},{__mode="k"}) L.FC=setmetatable({},{__mode="k"})
L.HTFC=setmetatable({},{__mode="k"}) L.IFC=setmetatable({},{__mode="k"})
L.BTE=false L.BTC=Color3.fromRGB(83,132,171) L.BTS=0.1 L.BTA=3 L.BTD=1.5 L.BTSt="1"
L.XHE=false L.XHC=Color3.fromRGB(255,255,255) L.XHS=false L.XHL=false L.XHR=false L.XRR=false L.XS=20 L.XSp=150 L.XT=1 L.XG=2 L.XSt="1" L.XP="Center Of Screen"
L.SA_E=false L.SA_HC=100 L.SA_P="Head" L.SA_SF=false L.SA_DF=false L.SA_FR=120 L.SA_FC=Color3.fromRGB(255,255,255) L.SA_MD=500 L.SA_T=nil L.SA_FT=false L.SA_ST=25
L.W_AC=Color3.fromRGB(150,150,150) L.W_CAE=false L.W_SE=false L.W_SS="ElegantMorning" L.W_CTE=false L.W_CV=12 L.W_OCT=LGT.ClockTime
L.W_BE=false L.W_BC=Color3.fromRGB(255,255,255) L.W_BS=24 L.W_BT=2 L.W_BI=1
L.W_HSE=false L.W_HSV=1 L.W_HSS="Neverlose"
L.W_KSE=false L.W_KSV=1 L.W_KSS="Neverlose"
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
local OSky = LGT:FindFirstChildOfClass("Sky") and LGT:FindFirstChildOfClass("Sky"):Clone()
if OSky then OSky.Name = "OSkyBackup" end
local function ASky(n)
local d = L.Skyboxes[n] if not d then return end
local s = LGT:FindFirstChildOfClass("Sky") or Instance.new("Sky", LGT)
s.SkyboxBk, s.SkyboxDn, s.SkyboxFt, s.SkyboxLf, s.SkyboxRt, s.SkyboxUp = d.Bk, d.Dn, d.Ft, d.Lf, d.Rt, d.Up
end
local function RSky()
local s = LGT:FindFirstChildOfClass("Sky") if s then s:Destroy() end
if OSky then OSky:Clone().Parent = LGT end
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
TS:TeleportToPlaceInstance(game.PlaceId, result, LP)
else
TS:Teleport(game.PlaceId, LP)
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
SS.ChildAdded:Connect(function(c) if c.Name == "Headshot" then aHS(c) end end)
for _, s in ipairs(SS:GetChildren()) do if s.Name == "Headshot" then aHS(s) end end
local function sCM(m)
local c = TCS:FindFirstChild("TextChannels") and TCS.TextChannels:FindFirstChild("RBXGeneral")
if c then c:SendAsync(m) end
end
local function pS(id, vol)
local s = Instance.new("Sound")
s.SoundId = id s.Volume = vol s.Parent = SS
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
local lastVK = 0
local vkCooldown = 0
local PriorityTargets = setmetatable({}, {__mode = "k"})
TCS.MessageReceived:Connect(function(msg)
if not (Toggles and Toggles.SpamVotekick and Toggles.SpamVotekick.Value) then return end
local text = msg.Text:lower()
if text:find("wait 15 minutes") and text:find("votekick") then
vkCooldown = os.clock() + 900
Library:Notify("Votekick Cooldown Detected\nWaiting 15 minutes", 5)
return
end
local sender = msg.TextSource and P:GetPlayerByUserId(msg.TextSource.UserId)
if not sender or sender == LP then return end
local text = msg.Text:lower()
local name = LP.Name:lower()
local dName = LP.DisplayName:lower()
if text:find(name) or text:find(dName) then
PriorityTargets[sender] = 2
elseif text:find("cheat") or text:find("hack") or text:find("votekick") then
if not (PriorityTargets[sender] and PriorityTargets[sender] > 1) then
PriorityTargets[sender] = 1
end
end
end)
task.spawn(function()
while task.wait(0.5) do
if Toggles.SpamVotekick and Toggles.SpamVotekick.Value and os.clock() >= vkCooldown then
if os.clock() - lastVK >= 32 then
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
local pPrio = PriorityTargets[p] or 0
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
PriorityTargets[target] = nil
lastVK = os.clock()
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
local TargetCache = {}
local tc_last = 0
local tc_cnt = 0
function gCTM()
local n = os.clock()
if n - tc_last > 0.1 then
tc_last = n
tc_cnt = 0
for _,m in ipairs(EF:GetChildren()) do
if m.Name ~= LP.Name then
local hu = m:FindFirstChildOfClass("Humanoid")
if hu and hu.Health>0 then
tc_cnt = tc_cnt + 1
local entry = TargetCache[tc_cnt]
if not entry then entry = {}; TargetCache[tc_cnt] = entry end
entry.m = m
if L.SA_CP then
local bps=entry.bps if not bps then bps={}; entry.bps=bps end local c=1
for _,p in ipairs(m:GetChildren()) do if p:IsA("BasePart") and p.Name~="HumanoidRootPart" then bps[c]=p c=c+1 end end
for k=c,#bps do bps[k]=nil end entry.pts=bps
else
local to=m:FindFirstChild(L.SA_P or "Head")
entry.pts=to and {to} or {}
end
end
end
end
for i = tc_cnt + 1, #TargetCache do TargetCache[i] = nil end
end

local cT,cPrt=nil,nil
local cD=(L.SA_DF and (L.SA_CFR or L.SA_FR) or L.SA_FR)
local mP=UIS:GetMouseLocation()
local cP=C.CFrame.Position
for i = 1, tc_cnt do
local entry = TargetCache[i]
local m, pts = entry.m, entry.pts
if m.Parent then
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
local ESP_V = true
local espCache = {}
local espT = 0
local v3_T=Vector3.new(0,3,0) local v3_B=Vector3.new(0,3.5,0)
local function onRenderSteppedESP(dt)
for m,d in pairs(L.DD)do if not m.Parent then rHE(m)end end
for p,d in pairs(L.ID)do if not p.Parent then rI(p)end end
local n=os.clock() if n-lEU<1/110 then return end lEU=n
local dLogic = false if n-espT>0.05 then espT=n dLogic=true end
local dE,wE,aE,nE,bE,hE,cE=L.DE,L.WE,L.AE,L.NE,L.BE,L.HE,L.CE and not L.HBE_E
local iGe=L.IGE local iDe=L.IDE local iMD=L.IDMax or 5000
if not(dE or wE or aE or nE or bE or hE or cE or iGe or iDe) then
  if ESP_V then
    for _,t in pairs(L.DD)do t.Visible=false end
    for _,t in pairs(L.WD)do t.Visible=false end
    for _,t in pairs(L.AD)do t.Visible=false end
    for _,t in pairs(L.ND)do t.Visible=false end
    for _,b in pairs(L.BD)do b.Visible=false end
    for _,b in pairs(L.BOD)do b.Visible=false end
    for _,f in pairs(L.BFD)do f.Visible=false end
    for _,hT in pairs(L.HD)do for i=1,40 do if hT[i] then hT[i].Visible=false end end end
    for _,o in pairs(L.HOD)do o.Visible=false end
    for _,t in pairs(L.HTD)do t.Visible=false end
    for _,t in pairs(L.ID)do t.Visible=false end
    for m,aC in pairs(L.AC)do for i=1,#aC do local b=aC[i]if b:IsA("Highlight")then b.Enabled=false b.FillTransparency=1 b.OutlineTransparency=1 else b.Visible=false b.Transparency=1 end end end
    ESP_V = false
  end
  return
end
ESP_V = true
local cP=C.CFrame.Position local mD=L.DMax
for m,_ in pairs(L.DD)do
if (not not m and m.Name == LP.Name)then continue end
local cA=espCache[m] or {}
if dLogic then
local to=gT(m) local hu=m:FindFirstChildOfClass("Humanoid")
local sS=true
if not to or not hu or hu.Health<=0 then sS=false end
if L.ArenaOnly then local ad=m:FindFirstChild("AuraDisplay")if ad and ad.Enabled then sS=false end end
if sS and L.VisOnly then
local v=L.VH[m] or {v=false,t=0}
if n-v.t>0.1 then v.v=iV(cP,m) v.t=n L.VH[m]=v end
if not v.v then sS=false end
end
if sS then d=(cP-to.Position).Magnitude if d>mD or not iOS(to)then sS=false end end
cA.sS=sS cA.to=to cA.hu=hu cA.d=d espCache[m]=cA
end
local sS,to,hu=cA.sS,cA.to,cA.hu d=cA.d or 0
if sS then local tW=to.Position+v3_T local bW=to.Position-v3_B tP,tV=C:WorldToViewportPoint(tW) bP,bV=C:WorldToViewportPoint(bW) if not tV or not bV then sS=false end end
local tN=L.ND[m]local tWp=L.WD[m]local tAu=L.AD[m]local tD=L.DD[m]local bx=L.BD[m]local ou=L.BOD[m]local fl=L.BFD[m]local hB=L.HD[m]local hO=L.HOD[m]local hT=L.HTD[m]local aC=L.AC[m]
if not sS then
L.FC[m]=nil
if tN then tN.Visible=false end if tWp then tWp.Visible=false end if tAu then tAu.Visible=false end if tD then tD.Visible=false end if bx then bx.Visible=false end if ou then ou.Visible=false end if fl then fl.Visible=false end if hB then for i=1,40 do hB[i].Visible=false end end if hO then hO.Visible=false end if hT then hT.Visible=false L.HTFC[m]=nil end
if aC then for i=1,#aC do local b=aC[i]if b:IsA("Highlight")then b.Enabled=false b.FillTransparency=1 b.OutlineTransparency=1 else b.Visible=false b.Transparency=1 end end end
continue
end
local sT=L.FC[m]if not sT then sT=n L.FC[m]=sT end
local fA=math.clamp((n-sT)/L.FTime,0,1) local h=math.floor(math.abs(tP.Y-bP.Y))local w=math.floor(h*0.55)local x=math.floor(tP.X-w/2)local y=math.floor(tP.Y)
if tN then if nE then tN.Position=Vector2.new(x+w/2,y-15)tN.Text=aFC(m.Name)tN.Transparency=fA tN.Visible=true else tN.Visible=false end end
if tWp then if wE then local wC=m:FindFirstChild("WeaponContainer")local tl=wC and wC:FindFirstChildOfClass("Model")local wN=tl and tl.Name or "None" tWp.Position=Vector2.new(x+w/2,y+h)tWp.Text=aFC(wN)tWp.Color=L.WTC tWp.Transparency=fA tWp.Visible=true else tWp.Visible=false end end
if tAu then if aE then local aT="None" local aD=m:FindFirstChild("AuraDisplay")if aD then local tl=aD:FindFirstChild("TextLabel")if tl then aT=tl.Text:gsub("Aura:%s*","")end end tAu.Position=Vector2.new(x+w+2,y-4)tAu.Text=aFC(aT)tAu.Color=L.ATC tAu.Transparency=fA tAu.Visible=true else tAu.Visible=false end end
if tD then if dE then tD.Position=Vector2.new(x+w/2,y+h+(wE and 13 or 0))tD.Text=math.floor(d).."s"tD.Color=L.DTC tD.Transparency=fA tD.Visible=true else tD.Visible=false end end
if bx and ou then if bE then bx.Visible=true ou.Visible=true bx.Color=L.BC ou.Color=Color3.new(0,0,0)bx.Transparency=fA ou.Transparency=fA local tv=Vector2.new(x,y)local sv=Vector2.new(w,h)bx.Size=sv bx.Position=tv ou.Size=sv ou.Position=tv if fl then if L.BFE then fl.Visible=true fl.Color=L.BFC fl.Transparency=(1-(Options and Options["BoxFillColorPicker"]and Options["BoxFillColorPicker"].Transparency or 0.5))*fA fl.Size=sv fl.Position=tv else fl.Visible=false end end else bx.Visible=false ou.Visible=false if fl then fl.Visible=false end end end
if hB and hO then
if hE then
if n-(cA.ht or 0)>0.1 then local mh=hu.MaxHealth cA.hs=mh>0 and math.clamp(hu.Health/mh,0,1)or 0 cA.ht=n end
local hs=cA.hs or 0 local vs=L.VH[m]or hs vs=vs+(hs-vs)*math.clamp(dt*10,0,1)L.VH[m]=vs
local bX=math.floor(x-5)local bY=math.floor(y) hO.Size=Vector2.new(4,math.floor(h)+2)hO.Position=Vector2.new(bX-1,bY-1)hO.Transparency=fA hO.Visible=true
if L.HGE then
local sC=40 local sH=h/sC local tF=h*vs
for i=1,sC do local sg=hB[i]if sg then local sP=(i-1)/(sC-1)if L.HGR then sP=(math.sin(i/7.5+tick()*(L.HGRS or 4))+1)/2 end local sb=(i-1)*sH
if sb<tF then local sf=math.min(sH,tF-sb)local stP=math.floor(bY+h-sb-sf)local sbP=math.floor(bY+h-sb) sg.Size=Vector2.new(2,sbP-stP)sg.Position=Vector2.new(bX,stP)sg.Color=L.HLC:Lerp(L.HHC,sP)sg.Transparency=fA sg.Visible=true else sg.Visible=false end end end
else
local bh=math.ceil(h*vs)local byP=math.floor(bY+(h-bh)) if hB[1]then hB[1].Size=Vector2.new(2,bh)hB[1].Position=Vector2.new(bX,byP)hB[1].Color=L.HLC:Lerp(L.HHC,vs)hB[1].Transparency=fA hB[1].Visible=true end
for i=2,40 do if hB[i]then hB[i].Visible=false end end
end
if hT then
local fP=L.HTFC[m]or 0 if L.HTE and hs<1 then fP=math.min(fP+(dt/0.15),1)else fP=math.max(fP-(dt/0.15),0)end L.HTFC[m]=fP
if fP>0 then local tY=bY+h-(h*vs) hT.Text=tostring(math.floor(hs*100))hT.Position=Vector2.new(bX-10,tY-8)hT.Color=L.HTC hT.Transparency=fP*fA hT.Visible=true else hT.Visible=false end
end
else hO.Visible=false for i=1,40 do if hB[i]then hB[i].Visible=false end end if hT then hT.Visible=false end end
end
if aC then if cE then if n-(cA.lt or 0)>0.2 then cA.lt=n local cbT=L.CTrans or 0.5 local cfA=1-(fA*(1-cbT)) for i=1,#aC do local b=aC[i]if b:IsA("Highlight")then b.FillTransparency=cfA b.OutlineTransparency=cfA b.Enabled=true else b.Transparency=cfA b.Visible=true end end end else if not cA.hOf then cA.hOf=true for i=1,#aC do local b=aC[i]if b:IsA("Highlight")then b.Enabled=false b.FillTransparency=1 b.OutlineTransparency=1 else b.Visible=false b.Transparency=1 end end end end else cA.hOf=false end
end
local function c2r(c)
if not c then return "Common" end
local m={{c=Color3.fromRGB(128,128,128),n="Common"},{c=Color3.fromRGB(0,177,0),n="Uncommon"},{c=Color3.fromRGB(0,166,255),n="Rare"},{c=Color3.fromRGB(222,37,255),n="Epic"},{c=Color3.fromRGB(252,255,49),n="Legendary"},{c=Color3.fromRGB(255,0,0),n="Mythic"},{c=Color3.fromRGB(255,255,255),n="Divine"}}
local bD,bN=10, "Common"
for _,v in ipairs(m)do local d=(Vector3.new(c.R,c.G,c.B)-Vector3.new(v.c.R,v.c.G,v.c.B)).Magnitude if d<bD then bD,bN=d,v.n end end
return bN
end
local rCls={Common=Color3.fromRGB(128,128,128),Uncommon=Color3.fromRGB(0,177,0),Rare=Color3.fromRGB(0,166,255),Epic=Color3.fromRGB(222,37,255),Legendary=Color3.fromRGB(252,255,49),Mythic=Color3.fromRGB(255,0,0),Divine=Color3.fromRGB(255,255,255)}
for p,t in pairs(L.ID)do
local sS=true local md=p:FindFirstChildOfClass("Model")if not p.Parent or not md then sS=false end
local cR if sS then cR=md:FindFirstChild("CardRoot")if cR then if not iDe then sS=false end else if not iGe then sS=false end end end
if sS then local d=(cP-p.Position).Magnitude if d>iMD then sS=false end end
local tP,tV if p.Parent then tP,tV=C:WorldToViewportPoint(p.Position)if not tV then sS=false end else sS=false end
local fP=L.IFC[p]or 0
if sS then fP=math.min(fP+(dt/(L.FTime or 0.15)),1)else fP=math.max(fP-(dt/(L.FTime or 0.15)),0)end
L.IFC[p]=fP
if fP>0 and tV and md then
local rC,rar local ic=p.Name=="ItemColliderPrefab" and p or p:FindFirstChild("ItemColliderPrefab",true)
local gC if ic then local s,c=pcall(function()return ic.OutlineColor end)if s and typeof(c)=="Color3"then gC=c else gC=ic:GetAttribute("OutlineColor")if typeof(gC)~="Color3"then gC=nil local hl=ic:FindFirstChildOfClass("Highlight")if hl then pcall(function()gC=hl.OutlineColor end)end end end end
rar=c2r(gC) if L.IS and not L.IS[rar]then t.Visible=false continue end
if L.IRC and rCls[rar] then rC=rCls[rar] elseif L.IRC then rC=gC end
t.Position=Vector2.new(tP.X,tP.Y)t.Text="[ "..aFC(md.Name).." ]"t.Color=rC or(cR and(L.IDC or Color3.new(1,1,1))or(L.IGC or Color3.new(1,1,1)))
t.Transparency=fP t.Visible=true
else t.Visible=false end
end
local mods,mc={},0
if L.LGM_E then
local lpE=EF:FindFirstChild(LP.Name)if lpE then
local wc,em=lpE:FindFirstChild("WeaponContainer"),lpE:FindFirstChild("EquipModels")
local wm=wc and wc:FindFirstChildOfClass("Model")if wm then mc=mc+1 mods[mc]=wm end
if em then local p,s=em:FindFirstChild("Primary"),em:FindFirstChild("Secondary")if p then mc=mc+1 mods[mc]=p end if s then mc=mc+1 mods[mc]=s end end
end
local fpr=C:FindFirstChild("FirstPersonRig")or WS:FindFirstChild("FirstPersonRig")if fpr then
for _,v in ipairs(fpr:GetChildren())do if v:IsA("Model")then mc=mc+1 mods[mc]=v end end
end
end
if mc>0 then
local mt,cl,tr,an,t=Enum.Material[L.LGM_M or "ForceField"]or Enum.Material.ForceField,L.LGM_C or Color3.new(1,1,1),L.LGM_T or 0.5,L.LGM_A or "None",os.clock()
if an=="Rainbow"then cl=Color3.fromHSV((t%2)/2,1,1)elseif an=="Pulse"then cl=cl:Lerp(Color3.new(0,0,0),(math.sin(t*3)+1)/2)elseif an=="Fade"then tr=tr+(1-tr)*((math.sin(t*3)+1)/2)end
for i=1,mc do for _,p in ipairs(mods[i]:GetDescendants())do if p:IsA("BasePart")then
local og=wOrig[p]if not og then if p.Transparency>=1 then continue end og={M=p.Material,C=p.Color,T=p.Transparency}wOrig[p]=og local sa=p:FindFirstChildOfClass("SurfaceAppearance")if sa then og.SA=sa sa.Parent=nil end end
if p.Material~=mt then p.Material=mt end if p.Color~=cl then p.Color=cl end if p.Transparency~=tr then p.Transparency=tr end
end end end cWepM=mods[1]
elseif cWepM or next(wOrig)then for p,v in pairs(wOrig)do if p.Parent then p.Material=v.M p.Color=v.C p.Transparency=v.T if v.SA then v.SA.Parent=p end end end wOrig=setmetatable({},{__mode="k"})cWepM=nil end
end
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
E1:AddSlider('PDistMax',{Text='Max ESP Distance',Default=5000,Min=0,Max=10000,Rounding=0,Compact=true,Callback=function(v)L.DMax=v end})
local CE3=E1:AddToggle('WeaponESP',{Text='Player Weapon',Default=false,Callback=function(v)L.WE=v end})
CE3:AddColorPicker("WeaponESPCP",{Default=L.WTC,Title="Text Color",Callback=function(v)L.WTC=v end})
local CE4=E1:AddToggle('AuraESP',{Text='Player Aura',Default=false,Callback=function(v)L.AE=v end})
CE4:AddColorPicker("AuraESPCP",{Default=Color3.new(1,1,1),Title="Text Color",Callback=function(v)L.ATC=v end})
ET:AddToggle('ArenaOnly',{Text='Only Show Players In Arena',Default=false,Callback=function(v)L.ArenaOnly=v end})
ET:AddToggle('VisOnly',{Text='Only Show Visible Players',Default=false,Callback=function(v)L.VisOnly=v end})
E1:AddDropdown('FontTypeDropdown',{Values={'UI','System','Plex','Monospace'},Default=3,Multi=false,Text='Font Type',Callback=function(v)local f=FM[v]if f~=nil then uAF(f)end end})
E1:AddDropdown('FontCaseDropdown',{Values={'Normal','Lowercase','Uppercase'},Default=1,Multi=false,Text='Font Case',Callback=function(v)L.FCase=v end})
local I1=Tabs.B:AddRightGroupbox("                         Item ESP")
local IE2=I1:AddToggle('ItemGuns',{Text='Dropped Guns',Default=false,Callback=function(v)L.IGE=v end})
IE2:AddColorPicker("ItemGunsCP",{Default=Color3.new(1,1,1),Title="Guns Color",Callback=function(v)L.IGC=v end})
local IE3=I1:AddToggle('ItemGear',{Text='Dropped Gear',Default=false,Callback=function(v)L.IDE=v end})
IE3:AddColorPicker("ItemGearCP",{Default=Color3.new(1,1,1),Title="Gear Color",Callback=function(v)L.IDC=v end})
I1:AddToggle('ItemRarityColor',{Text='Rarity Colors',Default=false,Callback=function(v)L.IRC=v end})
I1:AddSlider('ItemDistance',{Text='Max Distance',Default=5000,Min=0,Max=10000,Rounding=0,Compact=true,Callback=function(v)L.IDMax=v end})
I1:AddDropdown('ItemSort',{Values={'Common','Uncommon','Rare','Epic','Legendary','Mythic','Divine'},Default={'Common','Uncommon','Rare','Epic','Legendary','Mythic','Divine'},Multi=true,Text='Item Sort',Callback=function(v)L.IS=v end})
I1:AddDropdown('ItemFontType',{Values={'UI','System','Plex','Monospace'},Default=3,Multi=false,Text='Font Type',Callback=function(v)local f=FM[v]if f~=nil then L.IFont=f for _,d in pairs(L.ID)do d.Font=f end end end})
local B1=Tabs.B:AddLeftTabbox() local BT=B1:AddTab("Bullets")
local BTT=BT:AddToggle("BulletTracers",{Text="Bullet Tracers",Default=false,Callback=function(v)L.BTE=v end})
BTT:AddColorPicker("TracerColor",{Default=L.BTC,Title="Tracer Color",Callback=function(v)L.BTC=v end})
BT:AddSlider("TracerSize",{Text="Size",Default=0.1,Min=0.05,Max=3,Rounding=2,Compact=true,Suffix=" Studs",Callback=function(v)L.BTS=v end})
BT:AddSlider("TracerAnimSpeed",{Text="Animation Speed",Default=3,Min=0,Max=10,Rounding=1,Compact=true,Callback=function(v)L.BTA=v end})
BT:AddSlider("TracerDuration",{Text="Duration",Default=1.5,Min=0.1,Max=3.5,Rounding=1,Compact=true,Suffix="s",Callback=function(v)L.BTD=v end})
BT:AddDropdown("TracerStyle",{Values={'1','2','3','4','5','6'},Default='1',Multi=false,Text='Tracer Style',Callback=function(v)L.BTSt=v end})
local WV = Tabs.B:AddLeftGroupbox("                           World")
local O_AC = LGT.Ambient
WV:AddToggle("CustomAmbientToggle",{Text="Custom Ambient",Default=false,Callback=function(v) L.W_CAE=v if not v then LGT.Ambient=O_AC end end}):AddColorPicker("AmbientColor",{Default=Color3.fromRGB(150,150,150),Title="Ambient Color",Callback=function(v) L.W_AC=v end})
WV:AddToggle("CustomSkyboxToggle",{Text="Custom Skybox",Default=false,Callback=function(v) L.W_SE=v if v then ASky(L.W_SS) else RSky() end end})
WV:AddToggle("CustomClockTimeToggle",{Text="Custom ClockTime",Default=false,Callback=function(v) L.W_CTE=v if v then L.W_OCT=LGT.ClockTime LGT.ClockTime=L.W_CV else LGT.ClockTime=L.W_OCT end end})
WV:AddSlider("ClockTimeSlider",{Text="ClockTime",Default=12,Min=0,Max=24,Rounding=0,Compact=true,Callback=function(v) L.W_CV=v if L.W_CTE then LGT.ClockTime=v end end})
WV:AddDropdown("SkyboxSelection",{Values=(function() local k={} for s,_ in pairs(L.Skyboxes) do table.insert(k,s) end table.sort(k) return k end)(),Default="ElegantMorning",Multi=false,Text="Skybox Selection",Callback=function(v) L.W_SS=v if L.W_SE then ASky(v) end end})
WV:AddDivider()
WV:AddToggle("BloomToggle",{Text="Bloom",Default=false,Callback=function(v) L.W_BE=v end}):AddColorPicker("BloomColor",{Default=Color3.fromRGB(255,255,255),Title="Bloom Color",Callback=function(v) L.W_BC=v end})
WV:AddSlider("BloomSizeSlider",{Text="Bloom Size",Default=24,Min=0,Max=56,Rounding=0,Compact=true,Callback=function(v) L.W_BS=v end})
WV:AddSlider("BloomThresholdSlider",{Text="Bloom Threshold",Default=2,Min=0,Max=10,Rounding=1,Compact=true,Callback=function(v) L.W_BT=v end})
WV:AddSlider("BloomIntensitySlider",{Text="Bloom Intensity",Default=1,Min=0,Max=10,Rounding=1,Compact=true,Callback=function(v) L.W_BI=v end})
local LL=Tabs.B:AddRightGroupbox("                           Local")
local LG=LL:AddToggle("CustomGunMat",{Text="Custom Gun Material",Default=false,Callback=function(v)L.LGM_E=v end})
LG:AddColorPicker("CustomGunCP",{Default=Color3.new(1,1,1),Title="Material Color",Transparency=0.5,Callback=function(v)L.LGM_C=v L.LGM_T=(Options and Options["CustomGunCP"] and Options["CustomGunCP"].Transparency or 0.5)end})
LL:AddDropdown("CustomGunMatList",{Values={"ForceField","Neon","Plastic","SmoothPlastic","Glass","Foil","Wood","Slate"},Default=1,Multi=false,Text="Material List",Callback=function(v)L.LGM_M=v end})
LL:AddDropdown("CustomGunFFAnim",{Values={"None","Rainbow","Pulse","Fade"},Default=1,Multi=false,Text="Forcefield Animation",Callback=function(v)L.LGM_A=v end})
local CC=Tabs.B:AddRightTabbox() local CT=CC:AddTab("Crosshair")
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
local ACT_TRC = {}
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
table.insert(ACT_TRC, {p=p, a0=a0, a1=a1, b=b, st=os.clock(), d=L.BTD, style=style})
end
local proj = WS:WaitForChild("Projectiles", 5) if proj then proj.ChildAdded:Connect(spawnTracer) end
local RB_Bloom, RB_CC
task.spawn(function()
while task.wait(0.25) do
if L.W_CAE then if LGT.Ambient ~= L.W_AC then LGT.Ambient = L.W_AC end end
if L.W_BE then
if not RB_Bloom then RB_Bloom = LGT:FindFirstChild("RoxyBloom") or Instance.new("BloomEffect", LGT) RB_Bloom.Name = "RoxyBloom" end
if not RB_CC then RB_CC = LGT:FindFirstChild("RoxyBloomCC") or Instance.new("ColorCorrectionEffect", LGT) RB_CC.Name = "RoxyBloomCC" end
RB_Bloom.Enabled = true RB_Bloom.Intensity = L.W_BI RB_Bloom.Size = L.W_BS RB_Bloom.Threshold = L.W_BT
RB_CC.Enabled = true RB_CC.TintColor = L.W_BC
else
if RB_Bloom then RB_Bloom.Enabled = false end
if RB_CC then RB_CC.Enabled = false end
end
end
end)
local M1=Tabs.C:AddLeftGroupbox("                         Votekick")
M1:AddToggle("ServerhopOnVotekick",{Text="Serverhop On Votekick",Default=false})
M1:AddToggle("SpamVotekick",{Text="Spam Votekick Random People",Default=false})
local M1_Sound=Tabs.C:AddRightGroupbox("                           Sound")
M1_Sound:AddToggle("HitSoundToggle",{Text="Custom Hit Sound",Default=false,Callback=function(v) L.W_HSE=v end})
M1_Sound:AddSlider("HitSoundVolume",{Text="Hit Sound Volume",Default=1,Min=0,Max=10,Rounding=1,Compact=true,Callback=function(v) L.W_HSV=v end})
M1_Sound:AddDropdown("HitSoundSelection",{Values=(function() local k={} for s,_ in pairs(L.SoundMap) do table.insert(k,s) end table.sort(k) return k end)(),Default="Neverlose",Multi=false,Text="Hit Sound",Callback=function(v) L.W_HSS=v end})
M1_Sound:AddDivider()
M1_Sound:AddToggle("KillSoundToggle",{Text="Custom Kill Sound",Default=false,Callback=function(v) L.W_KSE=v end})
M1_Sound:AddSlider("KillSoundVolume",{Text="Kill Sound Volume",Default=1,Min=0,Max=10,Rounding=1,Compact=true,Callback=function(v) L.W_KSV=v end})
M1_Sound:AddDropdown("KillSoundSelection",{Values=(function() local k={} for s,_ in pairs(L.SoundMap) do table.insert(k,s) end table.sort(k) return k end)(),Default="Neverlose",Multi=false,Text="Kill Sound",Callback=function(v) L.W_KSS=v end})
local M3=Tabs.C:AddLeftGroupbox("                            Chat")
M3:AddToggle("MessageOnKill",{Text="Message On Kill",Default=false})
local M4=Tabs.C:AddRightGroupbox("                    Notifications")
M4:AddToggle("NotifyOnKill",{Text="Notify On Kill",Default=false})
local M5=Tabs.C:AddLeftGroupbox("                            Misc")
M5:AddToggle('AutoExtract', {Text='Auto Extraction', Tooltip='automatically extracts whenever near an excration point', Default=false, Callback=function(v) L.AutoExtract=v end})
M5:AddDropdown('AutoExtractLoc', {Values={'SZ1', 'SZ2'}, Default=1, Multi=false, Text='Extraction Hatch', Callback=function(v) L.AutoExtractLoc=v end})
local M1_Combat=Tabs.A:AddRightGroupbox("                      Local Mods")
M1_Combat:AddToggle('CWS',{Text='Custom Walkspeed',Default=false,Callback=function(v)L.CWS=v L.CWSTime=os.clock()local c=LP.Character local h=c and c:FindFirstChildOfClass("Humanoid")if v then L.CWSStart=h and h.WalkSpeed or 16 end end}):AddKeyPicker('CWSKey',{Default='None',SyncToggleState=true,Mode='Toggle',Text='Custom Walkspeed',NoUI=false})
M1_Combat:AddToggle('CJP',{Text='Custom JumpPower',Default=false,Callback=function(v)L.CJP=v L.CJPTime=os.clock()local c=LP.Character local h=c and c:FindFirstChildOfClass("Humanoid")if v then L.CJPStart=h and h.JumpPower or 50 end end}):AddKeyPicker('CJPKey',{Default='None',SyncToggleState=true,Mode='Toggle',Text='Custom JumpPower',NoUI=false})
M1_Combat:AddToggle('Noclip',{Text='Noclip',Default=false,Callback=function(v)L.Noclip=v end}):AddKeyPicker('NoclipKey',{Default='None',SyncToggleState=true,Mode='Toggle',Text='Noclip',NoUI=false})
M1_Combat:AddSlider('CWSAmount',{Text='Walkspeed Amount',Default=25,Min=16,Max=33,Rounding=0,Compact=true,Callback=function(v)L.CWSA=v end})
M1_Combat:AddSlider('CJPAmount',{Text='JumpPower Amount',Default=50,Min=50,Max=225,Rounding=0,Compact=true,Callback=function(v)L.CJPA=v end})
local SA_G = Tabs.A:AddLeftGroupbox("                      Silent Aim")
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
local HBE=Tabs.A:AddLeftGroupbox("                 Hitbox Expander")
HBE:AddToggle('HBE_E',{Text='Hitbox Expander',Default=false,Callback=function(v)L.HBE_E=v if v then if Toggles.ChamsESP then L.pCE=Toggles.ChamsESP.Value Toggles.ChamsESP:SetValue(false)end else if L.pCE~=nil and Toggles.ChamsESP then Toggles.ChamsESP:SetValue(L.pCE)L.pCE=nil end end end}):AddColorPicker('HBE_C',{Default=Color3.new(1,1,1),Title='Expansion Color',Callback=function(v)L.HBE_C=v end}):AddKeyPicker('HBE_K',{Default='None',SyncToggleState=true,Mode='Toggle',Text='Hitbox Expander',NoUI=false})
HBE:AddSlider('HBE_S',{Text='Hitbox Size',Default=10,Min=1,Max=12,Rounding=1,Compact=true,Callback=function(v)L.HBE_S=v end})
HBE:AddSlider('HBE_T',{Text='Hitbox Transparency',Default=0.5,Min=0,Max=1,Rounding=2,Compact=true,Callback=function(v)L.HBE_T=v end})
HBE:AddDropdown('HBE_P',{Values={'Head','Torso'},Default=1,Multi=false,Text='Target Part',Callback=function(v)L.HBE_P=v end})
HBE:AddDropdown('HBE_M',{Values={'Plastic','ForceField','Neon'},Default=2,Multi=false,Text='Material',Callback=function(v)L.HBE_M=v end})
local GMODS = Tabs.A:AddRightGroupbox("                        Gun Mods")
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
local HBOC=setmetatable({},{__mode="k"})
local lHBE=0
local cjpR,cwsR=false,false
local lp_h_char, lp_h_hum, lp_h_root
RS.Heartbeat:Connect(function(dt)
local c=LP.Character
if lp_h_char ~= c then
lp_h_char = c
lp_h_hum = c and c:FindFirstChildOfClass("Humanoid")
lp_h_root = c and c:FindFirstChild("HumanoidRootPart")
end
local h=lp_h_hum
local r=lp_h_root
local dE=not h or h.Health<=0
if not dE and (L.CJP or cjpR) then
local t,s=os.clock()-(L.CJPTime or 0),L.CJPStart or 50 local tg=L.CJP and(L.CJPA or 50)or(L.CJPStart or 50)local sl=math.clamp(t/0.25,0,1)
if L.CJP or sl<1 then cjpR=true h.UseJumpPower=true h.JumpPower=s+(tg-s)*sl else cjpR=false end
end
if not dE and (L.CWS or cwsR) then
local t,s=os.clock()-(L.CWSTime or 0),L.CWSStart or 16 local tg=L.CWS and(L.CWSA or 25)or 16 local sl=math.clamp(t/0.5,0,1)
if L.CWS or sl<1 then cwsR=true local v=s+(tg-s)*sl local e=v-h.WalkSpeed if e>0 and h.MoveDirection.Magnitude>0 then if r then r.CFrame=r.CFrame+(h.MoveDirection*(e*dt))end end else cwsR=false end
end
local pN=L.HBE_P or "Head" local mat=(L.HBE_M=="ForceField" or L.HBE_M==2) and Enum.Material.ForceField or (L.HBE_M=="Neon" or L.HBE_M==3) and Enum.Material.Neon or Enum.Material.Plastic local col=L.HBE_C or Color3.new(1,1,1) local tA,sV=L.HBE_T or 0.5,L.HBE_S or 10 local sz=Vector3.new(sV,sV,sV) local n=os.clock()
local hbA=next(HBOC)
if not L.HBE_E and not L.CJP and not cjpR and not L.CWS and not cwsR and not hbA then return end
if L.HBE_E and not dE then
if n-lHBE>0.5 then lHBE=n
for p,v in pairs(HBOC)do if p.Name~=pN or not p.Parent or not p.Parent.Parent then p.Size=v.S p.Material=v.M p.Color=v.C p.Transparency=v.T p.CanCollide=v.CC p.Massless=v.ML HBOC[p]=nil end end
for _,m in ipairs(EF:GetChildren())do if not (not not m and m.Name == LP.Name)then local hu=m:FindFirstChildOfClass("Humanoid")if hu and hu.Health>0 then local p=m:FindFirstChild(pN)if p and p:IsA("BasePart")then
local og=HBOC[p]if not og then og={S=p.Size,M=p.Material,C=p.Color,T=p.Transparency,CC=p.CanCollide,ML=p.Massless}HBOC[p]=og end
if p.Size~=sz then p.Size=sz end if p.Transparency~=tA then p.Transparency=tA end if p.Material~=mat then p.Material=mat end if p.Color~=col then p.Color=col end if p.CanCollide then p.CanCollide=false end if not p.Massless then p.Massless=true end
end end end end
end
elseif next(HBOC)then
for p,v in pairs(HBOC)do if p.Parent then p.Size=v.S p.Material=v.M p.Color=v.C p.Transparency=v.T p.CanCollide=v.CC p.Massless=v.ML HBOC[p]=nil end end
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
RS.Stepped:Connect(onStepped)
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
for i=#ACT_TRC,1,-1 do local v=ACT_TRC[i] local et=n-v.st 
local a=1 if et<0.15 then a=et/0.15 elseif et>v.d-0.35 then a=1-((et-(v.d-0.35))/0.35)end a=math.clamp(a,0,1)
local b=v.style=="2"and 0.5 or 0 local fT=b+(1-b)*(1-a)
if v.b and v.b.Parent then if v.style=="5"then v.b.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,fT),NumberSequenceKeypoint.new(0.5,math.clamp(0.5+(fT/2),0,1)),NumberSequenceKeypoint.new(1,1)})else v.b.Transparency=NumberSequence.new(fT)end end
if v.p and v.p.Parent then if v.a1 and v.a1.Parent then v.a1.WorldPosition=v.p.Position end else v.p=nil end
if et>=v.d then if v.b then v.b:Destroy()end if v.a0 then v.a0:Destroy()end if v.a1 then v.a1:Destroy()end table.remove(ACT_TRC,i)end end
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

local MasterRenderStepped = RS.RenderStepped:Connect(function(dt)
    onRenderSteppedESP(dt)
    onRenderSteppedVisuals(dt)
    onRenderSteppedSilentAim(dt)
    onRenderSteppedWatermark()
end)

Library:OnUnload(function()
MasterRenderStepped:Disconnect()
for i=1,4 do XL[i]:Remove()XO[i]:Remove()XFL[i]:Remove()XFO[i]:Remove()end
for i=1,6 do XSL[i]:Remove()XSO[i]:Remove()end
XD:Remove()XDO:Remove()
Library.Unloaded = true
end)
local MenuGroup=Tabs['UI Settings']:AddLeftGroupbox('                            Menu')
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
MenuGroup:AddButton("Unload",function()
Library:Unload()
end)
MenuGroup:AddDropdown("NotificationPosition", {
Values = {"Left", "Right", "Bottom"},
Default = "Bottom",
Multi = false,
Text = "Notification Position",
Callback = function(v)
Library.NotifySide = v
end
})

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
ThemeManager:ApplyToTab(Tabs['UI Settings'])
SaveManager:LoadAutoloadConfig()
