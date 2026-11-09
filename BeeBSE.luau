local a=(getgenv and getgenv())or _G if type(a.__BeeBSE)=='\116\097\098\108\101'and type(a.
__BeeBSE.stop)=='\102\117\110\099\116\105\111\110'then pcall(a.__BeeBSE.stop)end local b=game:
GetService('Players')local c=game:GetService('\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101')local d=game:
GetService('\087\111\114\107\115\112\097\099\101')local e=game:GetService('RunService')local f=game:
GetService('\084\119\101\101\110\083\101\114\118\105\099\101')local g=game:GetService('\072\116\116\112\083\101\114\118\105\099\101')local h=game:
GetService('VirtualUser')local i=b.LocalPlayer local j=114326934417838 if game.
PlaceId~=j then warn('\091\066\101\101\066\083\069\093\032\116\104\105\115\032\115\099\114\105\112\116\032\105\115\032\109\097\100\101\032\102\111\114\032\066\114\101\097\107\032\097\110\100\032\083\116\101\097\108\032\097\110\032\069\103\103\032\040'
..j..'\041')end local k={alive=true,conns={},paused=false}a.__BeeBSE=k local 
function l(m,n)local o=m:Connect(n)k.conns[#k.conns+1]=o return o end local 
function m(n)local o=a[n]if o==nil then local p,q=pcall(function()return
getfenv(0)[n]end)if p then o=q end end return type(o)=='function'and o or nil
end local n={AutoBreak=false,BreakRarities={},BreakNames={},BreakZones={},
BreakMinKg=0,BreakPriority='\066\101\115\116\032\082\097\114\105\116\121',HitMethod='\065\117\116\111',PassThroughEgg=true,
BreakMove='Tween (fast)',AutoSteal=false,StealRarities={},StealNames={},
StealMinKg=0,StealPriority='\072\105\103\104\101\115\116\032\067\097\115\104\047\115',StealMinCash=0,StealMinCashNum=0,
StealMinCashUnit='\078\111\110\101',StealZones={},StealWaitInZone=true,StealZoneFirst=true,
AvoidGuards=true,AfterSteal='Bank At Home',DropZone=nil,DropPoint=nil,MoveMode=
'\087\097\108\107',WalkInput='\077\111\118\101',TweenMult=1,StealMove='Walk (safe)',SplitTeleport=true,
AutoEquipBest=false,AutoUpgradePlot=false,AutoUpgradeTreadmill=false,
AutoClaimIndex=false,AutoClaimOffline=false,AutoBuyPickaxe=false,AntiAfk=true,
EspEggs=false,EspPickups=false,EspMinRarity='\067\111\109\109\111\110',NotifyChased=true,
NotifyTitanic=true,PauseOnFlag=true,DebugLog=true,BankOffset=nil}local o=
'\066\101\101\066\083\069\047\115\101\116\116\105\110\103\115\046\106\115\111\110'local function p()pcall(function()local q,r,s=m(
'makefolder'),m('\105\115\102\111\108\100\101\114'),m('\119\114\105\116\101\102\105\108\101')if not s then return end if q and not(
r and r('BeeBSE'))then q('\066\101\101\066\083\069')end s(o,g:JSONEncode({BankOffset=n.BankOffset,
DropPoint=n.DropPoint,MinCashNum=n.StealMinCashNum,MinCashUnit=n.
StealMinCashUnit}))end)end pcall(function()local q,r=m('\105\115\102\105\108\101'),m('readfile')if
q and r and q(o)then local s=g:JSONDecode(r(o))if type(s)=='\116\097\098\108\101'and type(s.
BankOffset)=='\116\097\098\108\101'then n.BankOffset=s.BankOffset end if type(s)=='table'and
type(s.DropPoint)=='\116\097\098\108\101'then n.DropPoint=s.DropPoint end if type(s)=='\116\097\098\108\101'
and type(s.MinCashNum)=='number'then n.StealMinCashNum=s.MinCashNum end if type(
s)=='\116\097\098\108\101'and type(s.MinCashUnit)=='\115\116\114\105\110\103'then n.StealMinCashUnit=s.
MinCashUnit end end end)local q={'Common','\085\110\099\111\109\109\111\110','\082\097\114\101','Epic','\076\101\103\101\110\100\097\114\121',
'\077\121\116\104\105\099','Secret','\068\105\118\105\110\101','\067\111\115\109\105\099','Celestial','\073\110\102\101\114\110\111','\086\111\105\100','Omega',
'\083\112\101\099\116\114\097\108','\069\116\104\101\114\101\097\108'}local r={}for s,t in ipairs(q)do r[t]=s end local s={}
pcall(function()for t,u in ipairs(c.Rarities:GetChildren())do if u:IsA(
'UIGradient')then local v=u.Color.Keypoints s[u.Name]=v[math.max(1,math.ceil(#v/
2))].Value end end end)s.Secret=Color3.fromRGB(235,235,235)local function t(u)u=
tonumber(u)or 0 for v,w in ipairs({{1e18,'\081\105'},{1e15,'\081\097'},{1e12,'T'},{1e9,'\066'},
{1e6,'\077'},{1e3,'K'}})do if math.abs(u)>=w[1]then return(('\037\046\050\102'):format(u/w[1]):
gsub('\037\046\063\048\043\036',''))..w[2]end end return tostring(math.floor(u*10+0.5)/10)end
local function u(v)v=tostring(v or''):lower():gsub('\091\037\115\044\093','')local w,x=v:match(
'\094\040\091\037\100\037\046\093\043\041\040\037\097\042\041\036')w=tonumber(w)if not w then return 0 end local y=({k=1e3,m=1e6
,b=1e9,t=1e12,qa=1e15})[x]or 1 return w*y end local v={'\078\111\110\101','K','\077','\066','T',
'\081\097'}local w={None=1,K=1e3,M=1e6,B=1e9,T=1e12,Qa=1e15}if not w[n.
StealMinCashUnit]then n.StealMinCashUnit='\078\111\110\101'end local function x()n.
StealMinCash=math.max(tonumber(n.StealMinCashNum)or 0,0)*w[n.StealMinCashUnit]
end x()local function y(z)z=tostring(z or''):gsub('\037\115','')if z==''then return 0
end if z:find('\091\094\037\100\037\046\044\093')then return nil,true end if z:match(
'\094\037\100\043\044\037\100\037\100\037\100\091\044\037\100\093\042\036')and not z:find('%.')then z=z:gsub('\044','')else z=z:gsub(',',
'\046')end local A=tonumber(z)if not A then return nil,true end return A end local 
function z(A)return(tostring(A or''):lower():gsub('[^%w]',''))end local function 
A(B)local C=('\037\046\048\102'):format(B)local D=C:reverse():gsub('(%d%d%d)','\037\049\044'):
reverse()return(D:gsub('\094\044',''))end local function B(C)local D={}for E,F in
ipairs(C or{})do if F~=''and F~='\078\111\110\101'then D[F]=true end end return next(D)and D
or nil end local function C(D)if type(D)=='table'then local E={}for F,G in
pairs(D)do if type(F)=='\110\117\109\098\101\114'then E[#E+1]=G elseif G==true then E[#E+1]=F end
end return E end return D==nil and{}or{D}end local function D(E)if type(E)==
'\116\097\098\108\101'then return E[1]end return E end local function E()return i.Character end
local function F()local G=E()return G and G:FindFirstChildOfClass('Humanoid')end
local function G()local H=E()return H and H:FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')
end local function H()return d:GetServerTimeNow()end local function I(J)local K=
c:FindFirstChild(J)if K and(K:IsA('\082\101\109\111\116\101\069\118\101\110\116')or K:IsA('RemoteFunction'))then
return K end return nil end local J={}local function K(L,...)local M=I(L)if not
M or not M:IsA('\082\101\109\111\116\101\069\118\101\110\116')then return false end local N=os.clock()if(J[L]or 0
)+0.25>N then return false end J[L]=N return(pcall(M.FireServer,M,...))end local
L local function M(N,O,P)if L then pcall(function()L:Notify({Title=N,Content=O,
Duration=P or 4})end)else print('\091\066\101\101\066\083\069\093\032'..N..': '..O)end end local N={broken=
0,stolen=0,banked=0,dropped=0,wrongDropped=0,action='\073\100\108\101'}local O=0 local P={}
local function Q(R)local S=os.clock()for T=#P,1,-1 do local U=P[T]if S-U.at>180
then table.remove(P,T)elseif(U.pos-R).Magnitude<25 then return true end end
return false end local function R(S)N.action=S end local function S()local T=d:
FindFirstChild('\067\097\114\114\105\101\100\065\110\105\109\097\108\115')if T then local U=0 for V,W in ipairs(T:
GetChildren())do if tonumber(W:GetAttribute('CarrierUserId'))==i.UserId then U+=
1 end end return U end local U=tonumber(i:GetAttribute('\067\097\114\114\121\067\111\117\110\116'))or 0 if U>0
then return U end local V=i:GetAttribute('\067\097\114\114\121\105\110\103')return(type(V)=='string'and
V~='')and 1 or 0 end local function T()return math.max(1,tonumber(i:
GetAttribute('\083\097\116\099\104\101\108\067\097\112\097\099\105\116\121'))or 1)end local function U()return i:
GetAttribute('BeingChased')==true end local function V()local W=d:
FindFirstChild('\080\108\111\116\115')if not W then return nil end for X,Y in ipairs(W:
GetChildren())do if Y:GetAttribute('\079\119\110\101\114\085\115\101\114\073\100')==i.UserId then return Y end
end return nil end local W,X=nil,{}local function Y(Z)if Z and not W then W=e.
Stepped:Connect(function()local _=E()if not _ then return end for aa,ab in
ipairs(_:GetDescendants())do if ab:IsA('BasePart')and ab.CanCollide then ab.
CanCollide=false X[ab]=true end end end)elseif not Z and W then W:Disconnect()W=
nil for aa in pairs(X)do if aa.Parent then aa.CanCollide=true end end X={}end
end local aa=250 local function ab(Z)local _=G()if not _ then return false end
local ac=_.Position local ad=(Z.Position-ac).Magnitude if n.SplitTeleport and ad
>aa then local ae=math.ceil(ad/aa)for af=1,ae-1 do if not _.Parent then return
false end _.CFrame=CFrame.new(ac:Lerp(Z.Position,af/ae))*(Z-Z.Position)_.
AssemblyLinearVelocity=Vector3.zero e.Heartbeat:Wait()end end _.CFrame=Z _.
AssemblyLinearVelocity=Vector3.zero return true end local ac=45 local ad=1 local
ae=1.3 local af=0.9 local Z=nil local _=nil pcall(function()_=game:GetService(
'\086\105\114\116\117\097\108\073\110\112\117\116\077\097\110\097\103\101\114')end)local ag={}local function ah(ai,aj)if(ag[ai]==true)==
aj then return end ag[ai]=aj or nil if _ then pcall(function()_:SendKeyEvent(aj,
ai,false,game)end)end end local function ai()for aj in pairs(ag)do if _ then
pcall(function()_:SendKeyEvent(false,aj,false,game)end)end end ag={}end local 
function aj(ak)local al=d.CurrentCamera if not al then return end local am,an=al
.CFrame.LookVector,al.CFrame.RightVector local ao,ap=Vector3.new(am.X,0,am.Z),
Vector3.new(an.X,0,an.Z)if ao.Magnitude<0.01 or ap.Magnitude<0.01 then return
end ao,ap=ao.Unit,ap.Unit local aq,ar=ak:Dot(ao),ak:Dot(ap)ah(Enum.KeyCode.W,aq>
0.38)ah(Enum.KeyCode.S,aq<-0.38)ah(Enum.KeyCode.D,ar>0.38)ah(Enum.KeyCode.A,ar<-
0.38)end local ak=nil local al=false local function am()if al then return end al
=true e:BindToRenderStep('\066\101\101\066\083\069\095\077\111\118\101',Enum.RenderPriority.Character.Value+5,
function()local an=ak if not an then return end local ao=F()if not ao then
return end ao:Move(an,false)if n.WalkInput=='Velocity'then local ap=G()if ap
then local aq,ar=ap.AssemblyLinearVelocity,ao.WalkSpeed ap.
AssemblyLinearVelocity=Vector3.new(an.X*ar,aq.Y,an.Z*ar)end end end)end local 
function an()ak=nil if al then al=false pcall(function()e:UnbindFromRenderStep(
'\066\101\101\066\083\069\095\077\111\118\101')end)end end local ao=RaycastParams.new()ao.FilterType=Enum.
RaycastFilterType.Exclude ao.RespectCanCollide=true local ap,aq=1,0 local 
function ar(as,at,au)local av={E()}for aw,ax in ipairs({'\067\097\114\114\105\101\100\065\110\105\109\097\108\115',
'AnimalPickups'})do local ay=d:FindFirstChild(ax)if ay then av[#av+1]=ay end end
ao.FilterDescendantsInstances=av local aw=d:Raycast(as,at*au,ao)return aw~=nil
and math.abs(aw.Normal.Y)<0.5 end local function as(at,au,av)local aw=math.min(
10,av)if aw<2 or not ar(at.Position,au,aw)then return au end local ax=os.clock()
<aq and{ap,-ap}or{1,-1}for ay,az in ipairs({25,50,75,100,130})do for aA,aB in
ipairs(ax)do local aC=CFrame.Angles(0,math.rad(az*aB),0):VectorToWorldSpace(au)
if not ar(at.Position,aC,aw)then ap,aq=aB,os.clock()+1.5 return aC end end end
return au end local function at()local au={}local av=d:FindFirstChild('\066\117\105\108\100')
local aw=av and av:FindFirstChild('\090\111\110\101\072\105\116\098\111\120\101\115')for ax,ay in ipairs(aw and aw:
GetChildren()or{})do local az=tonumber(ay.Name)if az and ay:IsA('BasePart')then
au[#au+1]={part=ay,id='\090\111\110\101'..az,n=az}end end table.sort(au,function(ax,ay)
return ax.n<ay.n end)return au end local au={list={},at=0,track=setmetatable({},
{__mode='\107'})}local function av()if os.clock()-au.at<1 then return au.list end
au.at=os.clock()local aw={}local ax=d:FindFirstChild('Build')local ay=ax and ax:
FindFirstChild('\090\111\110\101\066\117\105\108\100\115')for az,aA in ipairs(ay and ay:GetChildren()or{})do
for aB,aC in ipairs(aA:GetChildren())do if aC:IsA('\077\111\100\101\108')and(aC:GetAttribute(
'ChaseState')~=nil or aC:GetAttribute('\082\105\103\077\111\100\101')~=nil)then local aD=aC:
FindFirstChild('\066\111\100\121\072\105\116\098\111\120')local aE=(aD and aD:IsA('BasePart')and aD)or aC.
PrimaryPart or aC:FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')or aC:
FindFirstChildWhichIsA('\066\097\115\101\080\097\114\116')if aE then local aF=au.track[aC]if not aF then
local aG,aH,aI=pcall(function()return aC:GetBoundingBox()end)local aJ=(aD and aD
:IsA('BasePart')and aD.Size)or(aG and aI)or aE.Size aF={rad=math.clamp(math.max(
aJ.X,aJ.Z)/2,2,40)}au.track[aC]=aF end local aG=aC:GetAttribute('\090\111\110\101\073\100')aw[#aw+
1]={model=aC,part=aE,tr=aF,zone=type(aG)=='\115\116\114\105\110\103'and aG or aA.Name}end end end
end au.list=aw return aw end local aw={at=-100}local function ax()if os.clock()-
aw.at<10 then return aw end aw.at=os.clock()local ay=at()local az=0 for aA,aB in
ipairs(ay)do az+=aB.part.Position.Z end aw.zones=ay aw.laneZ=#ay>0 and az/#ay or
0 aw.divX,aw.divZ,aw.divHalf=nil,nil,nil local aA=d:FindFirstChild('InvisWalls')
for aB,aC in ipairs(aA and aA:GetChildren()or{})do if aC:IsA('\066\097\115\101\080\097\114\116')and aC.
CanCollide and aC.Size.X>150 and aC.Size.Z<40 and math.abs(aC.Position.Z-aw.
laneZ)<30 then local aD=aC.Position.X-aC.Size.X/2 if not aw.divX or aD<aw.divX
then aw.divX,aw.divZ,aw.divHalf=aD,aC.Position.Z,aC.Size.Z/2 end end end aw.divX
=aw.divX or-137 aw.divZ=aw.divZ or 1 aw.divHalf=aw.divHalf or 7.5 return aw end
local function ay(az)for aA,aB in ipairs(ax().zones)do local aC=aB.part if math.
abs(az-aC.Position.X)<=aC.Size.X/2 then return aC.Position.Z,aC.Size.Z/2 end end
return nil end local function az(aA)return aA.X>ax().divX-20 end local function 
aA(aB,aC)local aD=ax()if aB>=aD.divZ then return math.max(aB,aD.divZ+aD.divHalf+
aC)end return math.min(aB,aD.divZ-aD.divHalf-aC)end local function aB(aC,aD)
local aE=ax()local aF=aC.Y local aG=aD.X-aC.X local aH=aG>=0 and 1 or-1 local aI
={}local aJ,aK=az(aC),az(aD)local aL=aE.divX-25 if aJ and aK then if(aC.Z>=aE.
divZ)~=(aD.Z>=aE.divZ)then aI={Vector3.new(aL,aF,aA(aC.Z,10)),Vector3.new(aL,aF,
aA(aD.Z,10))}end elseif math.abs(aG)>60 then local aM=aE.laneZ if aJ then aI[#aI
+1]=Vector3.new(aL,aF,aA(aC.Z,10))aI[#aI+1]=Vector3.new(aL-25,aF,aM)else local
aN=aC.X+aH*20 aI[#aI+1]=Vector3.new(aN,aF,ay(aN)or aM)end if aK then aI[#aI+1]=
Vector3.new(aL-25,aF,aM)aI[#aI+1]=Vector3.new(aL,aF,aA(aD.Z,10))else local aN=aD
.X-aH*20 aI[#aI+1]=Vector3.new(aN,aF,ay(aN)or aM)end end local aM,aN={},aC.X for
aO,aP in ipairs(aI)do local aQ=(aP.X-aN)*aH>=-3 and(aD.X-aP.X)*aH>=-3 if aQ or(
aJ and aK)then aM[#aM+1]=aP aN=aP.X end end aM[#aM+1]=aD return aM end local aC=
nil local aD=false local aE,aF=30,2 local aG=nil local aH=nil local function aI(
)if aC then return aC end local aJ=d:FindFirstChild('\067\097\114\114\105\101\100\065\110\105\109\097\108\115')for aK,aL
in ipairs(aJ and aJ:GetChildren()or{})do if tonumber(aL:GetAttribute(
'CarrierUserId'))==i.UserId then local aM=aL:GetAttribute('\090\111\110\101\073\100')if type(aM)==
'\115\116\114\105\110\103'and aM~=''then return aM end end end return nil end local aJ=45 local 
function aK(aL,aM)if not n.AvoidGuards or S()==0 then return aM end local aN=aI(
)if not aN then return aM end local aO=aL.Position local aP=os.clock()local aQ=
F()local aR=math.max(16,aQ and aQ.WalkSpeed or 16)local aS=Vector3.new(-aM.Z,0,
aM.X)local aT=0 for aU,aV in ipairs(av())do local aW,aX=aV.part,aV.tr if aV.zone
==aN and aW.Parent then local aY=aW.Position if aX.pos and aP-aX.t>0.03 then
local aZ=(aY-aX.pos)/(aP-aX.t)aZ=Vector3.new(aZ.X,0,aZ.Z)if aZ.Magnitude>300
then aZ=Vector3.zero end aX.vel=aX.vel and aX.vel:Lerp(aZ,0.3)or aZ aX.pos,aX.t=
aY,aP elseif not aX.pos then aX.pos,aX.t=aY,aP end local aZ=Vector3.new(aY.X-aO.
X,0,aY.Z-aO.Z)local a_=aZ:Dot(aM)local a0=aJ+aX.rad if a_>0 and a_<a0 and math.
abs(aY.Y-aO.Y)<40 then local a1=math.clamp(a_/aR,0,1)local a2=aY+(aX.vel or
Vector3.zero)*a1 local a3=Vector3.new(a2.X-aO.X,0,a2.Z-aO.Z)local a4=a3:Dot(aS)
local a5=aX.rad+10 if a3:Dot(aM)>0 and(math.abs(a4)<a5 or math.abs(aZ:Dot(aS))<
a5)then local a6 if aX.side and aP<(aX.sideUntil or 0)then a6=aX.side else a6=a4
>0 and-1 or 1 local a7,a8=ay(aO.X)if a7 then local a9=(aS*a6).Z local ba=a8-math
.abs(aO.Z-a7)if a9*(aO.Z-a7)>0 and ba<aX.rad+15 then a6=-a6 end end aX.side,aX.
sideUntil=a6,aP+1.5 end local a7=1-a_/a0 aT+=a6*(0.5+a7*2)end end end end if aT
==0 then return aM end aT=math.clamp(aT,-2.5,2.5)return(aM+aS*aT).Unit end local 
function aL(aM,aN,aO,aP)aO=aO or 3 local aQ,aR=G(),F()if not(aQ and aR)then
return false,'\110\111\032\099\104\097\114\097\099\116\101\114\032\047\032\100\101\097\100'end if Vector3.new(aM.X-aQ.Position.X,0,aM.Z-
aQ.Position.Z).Magnitude>30 then pcall(function()aR:UnequipTools()end)end local
aS=n.WalkInput if aS=='\075\101\121\098\111\097\114\100'and not _ then aS='Move'end local aT=aS==
'\075\101\121\098\111\097\114\100'local aU=aS=='\077\111\118\101'or aS=='Velocity'if aU then am()end local aV,aW=aQ.
Position,os.clock()local aX=0 local aY=os.clock()local aZ=false local a_=k.
paused and'\112\097\117\115\101\100'or'\115\116\111\112\112\101\100'while k.alive and not k.paused do aQ,aR=G(),F()if
not(aQ and aR)or aR.Health<=0 then a_='no character / dead'break end if aN and
not aN()then a_='\115\116\111\112\112\101\100'break end local a0=Vector3.new(aM.X-aQ.Position.X,0,aM.
Z-aQ.Position.Z)if a0.Magnitude<=aO then aZ=true a_='\097\114\114\105\118\101\100'break end local a1=
as(aQ,aK(aQ,a0.Unit),a0.Magnitude)if aX>=3 then local a2=Vector3.new(-a1.Z,0,a1.
X)*((aX%2==0)and 1 or-1)a1=(a1*0.6+a2*0.8).Unit end if aU then ak=a1 elseif aT
then aj(a1)else aR:MoveTo(aQ.Position+a1*math.min(a0.Magnitude,50))end if(aQ.
Position-aV).Magnitude>2 then aV,aW=aQ.Position,os.clock()aX=math.max(0,aX-1)
elseif os.clock()-aW>0.8 then aX+=1 aR.Jump=true aW=os.clock()if aX>10 then a_=
'stuck (blocked)'break end end if os.clock()-aY>240 then a_='\116\105\109\101\111\117\116\032\040\050\052\048\115\041'
break end if aT or aU then e.Heartbeat:Wait()else task.wait(0.2)end end if aZ
and not aP then return true,a_ end if aU then ak=nil local a0=F()if a0 then a0:
Move(Vector3.zero,false)end elseif aT then ai()else local a0,a1=G(),F()if a0 and
a1 then a1:MoveTo(a0.Position)end end return aZ,a_ end local function aM(aN,aO,
aP)local aQ=G()if not aQ then return false,'\110\111\032\099\104\097\114\097\099\116\101\114\032\047\032\100\101\097\100'end local aR=aB(
aQ.Position,aN)if#aR>1 and n.DebugLog then local aS={}for aT,aU in ipairs(aR)do
aS[aT]=('(%.0f, %.0f)'):format(aU.X,aU.Z)end warn('\091\066\101\101\066\083\069\093\032\114\111\117\116\101\058\032'..table.
concat(aS,'\032\045\062\032'))end for aS,aT in ipairs(aR)do local aU=aS==#aR local aV,aW=aL(
aT,aO,aU and(aP or 3)or 8,aU)if not aV then if not aU then ak=nil ai()local aX=
F()if aX then pcall(function()aX:Move(Vector3.zero,false)end)end end return
false,aW end end return true,'arrived'end local function aN(aO,aP,aQ)local aR,aS
=G(),F()if not(aR and aS)or aS.Health<=0 then return false end local aT=(aR.
Position-aO.Position).Magnitude aQ=aQ or n.MoveMode if aQ=='\087\097\108\107'then return aM(
aO.Position,aP,3)end if aQ=='\084\101\108\101\112\111\114\116'or aT<12 or(aQ=='Fast'and aT<=ac)then
return ab(aO)end local aU=math.max(16,aS.WalkSpeed)local aV if aQ=='\070\097\115\116'then Z=
Z or aU*ad aV=math.clamp(Z,aU*af,aU*ae)else aV=math.max(16,aS.WalkSpeed*(
tonumber(n.TweenMult)or 1))end local aW=aT/aV local aX=f:Create(aR,TweenInfo.
new(aW,Enum.EasingStyle.Linear),{CFrame=aO})local aY=false local aZ=aX.Completed
:Connect(function()aY=true end)local a_=e.Heartbeat:Connect(function()if aR.
Parent then aR.AssemblyLinearVelocity=Vector3.zero end end)Y(true)aX:Play()local
a0=os.clock()+aW+4 while not aY and k.alive and not k.paused and aR.Parent and
os.clock()<a0 do if aP and not aP()then break end task.wait()end if not aY then
aX:Cancel()end aZ:Disconnect()a_:Disconnect()Y(false)return aY end local 
function aO()local aP=d:FindFirstChild('\066\117\105\108\100')return aP and aP:FindFirstChild(
'ZoneBuilds')end local function aP(aQ)for aR,aS in ipairs(at())do local aT=aS.
part.CFrame:PointToObjectSpace(aQ)local aU=aS.part.Size/2 if math.abs(aT.X)<=aU.
X and math.abs(aT.Z)<=aU.Z and math.abs(aT.Y)<=aU.Y+2 then return aS.id end end
return nil end local aQ={}local function aR(aS)if aS.Parent and aS.Name=='\069\103\103'
and aS:GetAttribute('\072\101\097\108\116\104')~=nil then aQ[aS]=true end end task.spawn(function(
)local aS={d:FindFirstChild('Build'),d:FindFirstChild('\069\103\103\115')}for aT,aU in
ipairs(aS)do if aU then for aV,aW in ipairs(aU:GetDescendants())do if aW.Name==
'\069\103\103'then aR(aW)end if aV%2000==0 then task.wait()end end l(aU.DescendantAdded,
function(aV)if aV.Name=='Egg'then task.defer(aR,aV)task.delay(1,aR,aV)end end)
end end end)local function aS(aT)local aU=tonumber(aT:GetAttribute('\090\111\110\101\073\110\100\101\120'))
if aU then return'\090\111\110\101'..aU end local aV=aT:FindFirstAncestorWhichIsA('Folder')
while aV and aV~=d do if aV.Name:match('\094\090\111\110\101\037\100\043\036')then return aV.Name end aV=aV
.Parent end local aW=aT:IsA('\066\097\115\101\080\097\114\116')and aT or aT:FindFirstChildWhichIsA(
'BasePart',true)return aW and aP(aW.Position)or'\063'end local function aT()local
aU={}for aV in pairs(aQ)do if aV.Parent==nil then aQ[aV]=nil else aU[#aU+1]={
inst=aV,holder=aV.Parent,zone=aS(aV)}end end return aU end local function aU(aV)
return{name=aV:GetAttribute('\069\103\103\084\121\112\101')or aV:GetAttribute('EggInfoName')or(aV.
Parent and aV.Parent.Name)or'\063',rarity=aV:GetAttribute('\069\103\103\073\110\102\111\082\097\114\105\116\121')or aV:
GetAttribute('Rarity')or'\063',kg=tonumber(aV:GetAttribute('\087\101\105\103\104\116\075\103'))or 0,hp=
tonumber(aV:GetAttribute('Health'))or 0,maxHp=tonumber(aV:GetAttribute(
'\077\097\120\072\101\097\108\116\104'))or 0}end local function aV(aW)return aW and aW.Parent~=nil and aW:
GetAttribute('\066\114\111\107\101\110')~=true and(tonumber(aW:GetAttribute('Health'))or 0)>0 end
local function aW(aX)if aX:IsA('\066\097\115\101\080\097\114\116')then return aX.CFrame,aX.Size end if
aX:IsA('\077\111\100\101\108')then return aX:GetBoundingBox()end local aY=aX:
FindFirstChildWhichIsA('BasePart',true)if aY then return aY.CFrame,aY.Size end
return nil end local aX={}local function aY(aZ)if not(aZ and aZ.Parent)then
return end for a_,a0 in ipairs(aZ:GetDescendants())do if a0:IsA('\066\097\115\101\080\097\114\116')and
a0.CanCollide then if aX[a0]==nil then aX[a0]=true end a0.CanCollide=false end
end end local function aZ()for a_,a0 in pairs(aX)do if a_.Parent then pcall(
function()a_.CanCollide=a0 end)end end aX={}end local a_={}local function a0(a1)
return(a_[a1]or 0)>os.clock()end local function a1(a2,a3)a_[a2]=os.clock()+a3
end local function a2(a3,a4)local a5=G()local a6=a5 and a5.Position or Vector3.
zero table.sort(a3,function(a7,a8)if a4=='\078\101\097\114\101\115\116'then return a7.dist<a8.dist
end if a4=='Highest Cash/s'then local a9,ba=a7.cash or 0,a8.cash or 0 if a9~=ba
then return a9>ba end return a7.dist<a8.dist end if a4=='\072\101\097\118\105\101\115\116'then if a7.kg
~=a8.kg then return a7.kg>a8.kg end return a7.dist<a8.dist end local a9,ba=r[a7.
rarity]or 0,r[a8.rarity]or 0 if a9~=ba then return a9>ba end if a7.kg~=a8.kg
then return a7.kg>a8.kg end return a7.dist<a8.dist end)return a3[1]end local 
function a3()local a4,a5,a6=B(n.BreakRarities),B(n.BreakNames),B(n.BreakZones)
local a7=G()if not a7 then return nil end local a8={}for a9,ba in ipairs(aT())do
local bb=ba.inst if aV(bb)and not a0(bb)then local bc=aU(bb)if(not a4 or a4[bc.
rarity])and(not a5 or a5[bc.name])and(not a6 or a6[ba.zone])and bc.kg>=(n.
BreakMinKg or 0)then local bd=aW(bb)if bd then bc.inst,bc.zone,bc.dist=bb,ba.
zone,(bd.Position-a7.Position).Magnitude a8[#a8+1]=bc end end end end return a2(
a8,n.BreakPriority)end local a4={Common=39.8,Uncommon=43.3,Rare=47.3,Epic=42,
Legendary=52.3,Mythic=104.4,Divine=100,Cosmic=62.2,Secret=91.9,Celestial=116,
Inferno=136.1,Void=165.2,Omega=130.7,Spectral=165.7,Ethereal=170,Primordial=170}
local a5={1.38,1.48,1.55,1.65,1.7,1.73,1.79,1.81,1.81,1.81,1.81}local a6={1.1,
1.12,1.14,1.16,1.18,1.2,1.22,1.25,1.27,1.29,1.31}local a7={0.55,0.57,0.59,0.61,
0.63,0.65,0.67,0.7,0.72,0.74,0.76}local a8={Gold=2,Diamond=4}local a9={Void=5,
Time=4,Hacker=3.5,Angelic=3,Lightning=2.5,Frozen=2}local ba={{{'\067\104\105\099\107\101\110',1,36},{
'Cat',2,39.4},{'\066\097\116',10,39.1},{'\065\110\116\101\097\116\101\114',13,48.4},{'Badger',35,41.6},{'\080\097\114\114\111\116',
45,40.3},{'\071\111\108\100\101\110\082\101\116\114\105\118\101\114',145,53.9},{'Bear',1800,82.4}},{{'\083\110\097\107\101',3,48.9},{
'\084\105\103\101\114',20,60.9},{'Lion',25,79.2},{'\065\110\107\121\108\111\115\097\117\114\117\115',90,99.7},{'\067\079\067\075\065\084\082\073\067\069',110,
73.1},{'SPHINX',230,67.9},{'\067\072\073\082\069\077\065',2800,95.8},{'\077\065\078\084\073\067\079\082\069',12500,104.5}},{{
'Pigeon',40,36.2},{'\071\117\105\101\110\110\097\080\105\103',65,43.8},{'\077\097\108\116\101\115\101',180,41.8},{'Goat',240,47.2},
{'\066\105\099\104\111\110\070\114\105\115\101',650,32.3},{'\083\101\099\114\101\116\097\114\121\066\105\114\100',4500,42.3},{'Llama',18000,50.3},{
'\080\111\108\097\114\032\066\101\097\114',125000,82.1}},{{'\066\117\110\110\121',84,40.4},{'trumpet',224,26.3},{
'\077\117\115\099\111\118\121\032\068\117\099\107',336,29.9},{'\098\097\114\114\097\099\117\100\097',840,33.7},{'Moorish idol',8400,35.1},{
'\089\097\107',46700,50.6},{'\067\111\098\114\097',2e5,83.6},{'PREHISTORIC_DRAGONFLY',1.5e6,51.1}},{{
'\083\110\097\105\108',400,37.7},{'\071\111\108\100\102\105\115\104',600,34.2},{'Lizard',1500,36},{'\112\117\102\102\101\114\102\105\115\104',15000,
36.9},{'\066\117\116\116\101\114\102\108\121\102\105\115\104',83300,40.7},{'stingray',391000,40},{'\082\101\103\097\108',1340000,33},{
'\080\082\069\072\073\083\084\079\082\073\067\095\077\079\084\072',12500000,44.7}},{{'Cuttlefish',720,38.3},{'\070\097\110\103\116\111\111\116\104\070\105\115\104',
2700,32.1},{'\083\119\111\114\100\102\105\115\104',27000,76.6},{'MantisShrimp',150000,37.6},{'\071\111\098\108\105\110\083\104\097\114\107',
703000,38},{'\076\101\097\102\121\083\101\097\068\114\097\103\111\110',2410000,45.1},{'MEGALODON',16750000,102.5},{
'\065\109\112\104\105\112\116\101\114\101',1.25e8,148.1}},{{'\074\097\099\107\097\108\111\112\101',3500,45.6},{'DIMETRODON',48000,95.1},{
'\066\114\097\099\104\105\111\115\097\117\114\117\115',267000,127.9},{'\076\105\110\100\119\111\114\109',1250000,59.9},{'T-Rex',4290000,120.2},
{'\070\101\110\114\105\114',2.4e7,49.9},{'\067\069\082\066\069\082\085\083',1.5e8,94.1},{'Raiju',1.8e8,42.6}},{{'\084\097\110\117\107\105',
65000,41.8},{'\083\117\114\103\101\111\110\102\105\115\104',360000,40.4},{'Mandarinfish',1800000,47.3},{
'\068\117\109\098\111\079\099\116\111\112\117\115',6500000,31.8},{'\065\107\105\116\097',3.6e7,40.5},{'Gallimimus',2e8,116.3},{
'\087\111\108\102',2.4e8,48.8},{'\083\073\077\085\082\071\072',3e8,89.4}},{{'Crocodile',5e5,66.1},{'\087\104\097\108\101',
2500000,94.3},{'\090\101\098\114\097',9e6,61.8},{'THUNDERBIRD',5e7,85.3},{'\065\082\067\072\065\069\079\080\084\069\082\089\088',2.2e8
,89.6},{'\087\073\078\071\069\068\095\073\077\080',2.6e8,78.9},{'CALADRIUS',3.3e8,87.2},{'\086\101\108\105\099\111\114\097\112\116\111\114',4e8,
136.1},{'\067\076\065\083\083\073\067\068\082\065\071\079\078',5e8,252.7},{'QILIN',7.5e8,116.1}},{{'\066\117\103',3750000,163.4}
,{'\067\114\121\115\116\097\108\076\105\122\097\114\100',4500000,145},{'CrystalBeast',13500000,145.2},{'\067\114\121\115\116\097\108\082\097\112\116\111\114',
7.5e7,149.8},{'\067\114\121\115\116\097\108\068\114\097\103\111\110',3.9e8,155},{'Mantis',4.95e8,149.4},{
'\065\108\105\101\110\074\101\108\108\121\102\105\115\104',6e8,162.4},{'\067\114\121\115\116\097\108\083\099\111\114\112\105\111\110',7.5e8,164.4},{'Behemoth',1.125e9,
156.5},{'\067\114\121\115\116\097\108\087\111\108\102',1.35e9,136.3},{'\067\101\108\101\115\116\105\097\108\066\101\097\115\116',1.62e9,140.7},{
'CelestialSpirit',2.5e9,123.4}},{{'\070\114\097\110\107\101\110\098\108\111\098',20250000,159.4},{'\086\097\109\112\105\114\101\067\097\116',
112500000,159.7},{'ScareDog',1.35e8,144.4},{'\086\097\109\112\105\114\105\099\066\097\116',5.85e8,136.1},{
'\080\111\115\115\101\115\115\101\100\067\104\097\109\101\108\101\111\110',742500000,132.1},{'HauntedMantis',9e8,151.9},{
'\067\117\114\115\101\100\075\097\110\103\097\114\111\111',1.125e9,151.3},{'\090\111\109\098\105\101\065\120\111\108\111\116\108',2.025e9,147.9},{'PhantomBird',
2.43e9,145.4},{'\085\110\100\101\097\100\067\097\112\121\098\097\114\097',3.75e9,145},{'\086\097\109\112\105\114\101\080\111\114\099\117\112\105\110\101',4.5e9,167.8},{
'GhastlyOctopus',5.4e9,165.7}},{{'\068\117\115\107\099\111\105\108',202500000,false},{'\077\111\115\115\098\101\108\108\121',2.43e8
,false},{'Tidefin',291600000,false},{'\067\105\110\100\101\114\099\108\117\098',1.32e9,false},{'\083\097\110\100\098\108\111\111\109',
1.67e9,false},{'Phoenix',2e9,false},{'\084\104\111\114\110\109\097\110\101',2.43e9,false},{'\076\105\108\097\099\119\105\110\103',
3.04e9,false},{'SunLion',3.65e9,false},{'\086\111\105\100\104\111\114\110',6.38e9,false},{'\071\101\097\114\102\097\110\103',
7.65e9,false},{'Imp',9.18e9,false},{'\083\112\105\114\101\119\105\110\103',1.35e10,false},{'\072\101\120\104\111\114\110',
1.62e10,false},{'CentaurKnight',1.94e10,false},{'\083\116\111\114\109\119\105\110\103',2.43e10,false},{
'\071\108\097\099\105\101\114\098\097\099\107',2.916e10,false},{'Hydrafang',4.2e10,false},{'\083\104\097\100\111\119\103\097\108\101',5.04e10,
false},{'\067\097\115\116\108\101\067\114\097\098',7.5e10,165.7},{'CastleCroc',8.5e10,91.9},{'\066\101\104\111\108\100\101\114',1e11,
false}}}local bb={{'\085\110\105\099\111\114\110',1500,false,58},{'SABER_TOOTHED_TIGER',2800,2,66.9},
{'\072\101\108\108\067\114\111\099',2400000,9,false},{'\072\101\108\108\065\110\107\121',3600000,9,false},{'HellTrike',6e6,9,
false},{'\072\101\108\108\068\105\110\111\082\101\120',1.5e7,9,false},{'\072\101\108\108\077\101\103\097\108\111\100\111\110',2.4e7,9,false},{'HellTRex'
,4.2e7,9,false},{'\072\101\108\108\068\114\097\103\111\110',5.1e8,9,false},{'\072\101\108\108\072\121\100\114\097',8e8,9,false},{
'CelestialLamb',350000,10,143.1},{'\067\101\108\101\115\116\105\097\108\083\112\105\114\105\116\070\111\120',9e6,10,146.5},{
'\067\101\108\101\115\116\105\097\108\070\114\111\103',1.25e8,10,148.9},{'CelestialAxolotl',5e8,10,137.9},{
'\067\101\108\101\115\116\105\097\108\071\111\114\105\108\108\097',1.3e9,10,150.2},{'\065\110\103\101\108\067\114\111\099',4e6,9,false},{'AngelAnky',6e6,9,
false},{'\065\110\103\101\108\084\114\105\107\101',1e7,9,false},{'\065\110\103\101\108\077\101\103\097\108\111\100\111\110',4e7,9,false},{'AngelTRex',
7e7,9,false},{'\065\110\103\101\108\068\114\097\103\111\110',8.5e8,9,false},{'\065\110\103\101\108\072\121\100\114\097',1.1e9,9,false},{
'HauntedWolf',6e6,9,91.9},{'\072\097\117\110\116\101\100\075\105\116\115\117\110\101',1e7,9,91.9},{'\072\097\117\110\116\101\100\071\114\105\102\102\105\110',4e7,9,
116},{'HauntedCerberus',7e7,9,116},{'\080\101\110\103\117\105\110\075\105\110\103',8.5e8,9,136.1},{'\087\105\116\099\104\083\112\105\100\101\114',
1.1e9,9,136.1},{'ThunderRam',6e6,9,91.9},{'\079\108\121\109\112\117\115\066\117\108\108',1e7,9,91.9},{
'\084\101\109\112\101\115\116\082\104\105\110\111',4e7,9,116},{'ThunderLion',7e7,9,116},{'\084\104\117\110\100\101\114\102\097\110\103\083\097\098\101\114\116\111\111\116\104',
8.5e8,9,136.1},{'\090\101\117\115\071\111\114\105\108\108\097\082\105\100\101\114',1.1e9,9,136.1},{'CandleCat',1e6,9,136.1},{
'\067\097\110\100\108\101\087\111\108\102',7500000,9,136.1},{'\076\097\110\116\101\114\110\068\101\101\114',3.5e7,9,136.1},{'BoneBat',1e8,9,
136.1},{'\066\111\110\101\072\121\100\114\097',3.5e8,9,136.1},{'\083\099\097\114\101\099\114\111\119\084\117\114\107\101\121',2e6,9,136.1},{
'ScarecrowOwl',1.5e7,9,136.1},{'\083\099\097\114\101\099\114\111\119\082\104\105\110\111',7e7,9,136.1},{'\083\099\097\114\101\099\114\111\119\076\105\111\110',
2e8,9,136.1},{'ScarecrowHorse',7e8,9,136.1},{'\066\111\110\101\071\117\105\110\101\097\080\105\103',1e8,9,136.1},{
'\066\111\110\101\082\097\116',1.5e8,9,136.1},{'BoneHorse',2.1e8,9,136.1},{'\066\111\110\101\076\105\111\110',6e8,9,136.1},{
'\066\111\110\101\077\097\109\109\111\116\104',2.1e9,9,136.1}}local bc={}for bd,be in ipairs(ba)do for bf,bg in
ipairs(be)do bc[bg[1] ]={cash=bg[2],zone=bd,kg=bg[3]or nil}end end for bd,be in
ipairs(bb)do bc[be[1] ]={cash=be[2],zone=be[3]or nil,kg=be[4]or nil}end local 
function bd(be,bf,bg,bh,bi,bj)local bk=bc[be]if not bk then return nil end local
bl=bk.kg or a4[bj or'']or a4.Common local bm=bk.zone local bn=(bm and a5[bm])or
1 local bo if bf and bf>0 then local bp=bf/(bl*math.max(bn,0.01)^3)local bq=(bm
and a6[bm])or a6[1]local br=(bm and a7[bm])or a7[1]bo=bp<=8 and bp^bq or(8^bq)*(
bp/8)^br else local bp=math.max(bg or 1,0)/math.max(bn,0.01)bo=bp<=2 and bp^3 or
8*(bp/2)end bo=math.max(bo,0.2)local bp=math.clamp((bl/50)^0.5,1,3)local bq=
type(bh)=='\115\116\114\105\110\103'and bh~=''local br=bq and(a9[bh]or 1)or 1 local bs=(bi and a8[
bi])or 1 return math.max(math.floor(bk.cash*bo*bp*br*bs+0.5),1),bq and a9[bh]==
nil end local function be(bf)return bd(bf:GetAttribute('AnimalName')or bf.Name,
tonumber(bf:GetAttribute('\087\101\105\103\104\116\075\103')),tonumber(bf:GetAttribute('\083\105\122\101\077\117\108\116')),bf:
GetAttribute('Mutation'),bf:GetAttribute('\086\097\114\105\097\110\116'),bf:GetAttribute('\082\097\114\105\116\121'))
end local bf={ok=0,total=0}task.spawn(function()local bg=false while k.alive do
pcall(function()local bh,bi=0,0 local bj=d:FindFirstChild('Plots')for bk,bl in
ipairs(bj and bj:GetChildren()or{})do local bm=bl:FindFirstChild('\080\108\097\099\101\100\065\110\105\109\097\108\115'
)for bn,bo in ipairs(bm and bm:GetChildren()or{})do local bp=tonumber(bo:
GetAttribute('\067\097\115\104\080\101\114\083\101\099\111\110\100'))local bq=bo:GetAttribute('AnimalName')if bp and bp
>0 and bq and bc[bq]then local br=bo:GetAttribute('\077\117\116\097\116\105\111\110')if type(br)==
'\115\116\114\105\110\103'and br~=''then if not a9[br]then local bs=bd(bq,tonumber(bo:
GetAttribute('\087\101\105\103\104\116\075\103')),tonumber(bo:GetAttribute('\083\105\122\101\077\117\108\116')),nil,bo:
GetAttribute('Variant'),bo:GetAttribute('\082\097\114\105\116\121'))local bt=bs and bp/bs if bt
and bt>=1 and bt<=100 then a9[br]=math.floor(bt*100+0.5)/100 print((
'\091\066\101\101\066\083\069\093\032\108\101\097\114\110\101\100\032\109\117\116\097\116\105\111\110\032\037\115\032\061\032\120\037\046\050\102'):format(br,a9[br]))end end else bi+=1
local bs=be(bo)if bs and math.abs(bs-bp)<=math.max(bp*0.001,2)then bh+=1 end end
end end end bf.ok,bf.total=bh,bi if not bg and bi>0 then bg=true print((
'[BeeBSE] cash formula check: %d/%d placed animals match'):format(bh,bi))end end
)task.wait(30)end end)local function bg(bh)local bi=bh:FindFirstChild('\082\111\111\116\080\097\114\116'
)if bi and bi:IsA('\066\097\115\101\080\097\114\116')then return bi.Position end local bj,bk=pcall(
function()return bh:GetPivot()end)return bj and bk.Position or nil end local 
function bh(bi)local bj=tostring(bi.ObjectText or''):gsub('\060\091\094\062\093\045\062','')local bk,
bl=bj:match('%[%s*([%d,%.]+)%s*([KkMm]?)%s*[Kk][Gg]%s*%]')local bm=bk and
tonumber((bk:gsub('\044','')))if bm and bl~=''then bm*=(bl:lower()=='\109'and 1e6 or
1e3)end local bn=bj:match('\037\093\037\115\042\040\046\045\041\037\115\042\036')return bm,bl~=nil and bl~='',(bn~=''
and bn or nil)end local function bi(bj,bk,bl)bl=tonumber(bl)or 0 local bm=bk and
(bl*0.06+1)or math.max(1.01,bl*0.002)return math.abs(bj-bl)<=bm end local 
function bj(bk,bl)local bm,bn=z(bk),z(bl)if bn==''or bm==''then return false end
return bm:find(bn,1,true)~=nil or(#bm>3 and bn:find(bm,1,true)~=nil)end local 
function bk()local bl={}for bm,bn in ipairs(d:GetChildren())do if bn.Name==
'\080\114\111\109\112\116\065\110\099\104\111\114'and bn:IsA('\066\097\115\101\080\097\114\116')then local bo=bn:FindFirstChild(
'StealPrompt')if bo and bo:IsA('\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116')and bo.Enabled then bl[#bl+1]=
bo end end end return bl end local function bl(bm)local bn={}for bo,bp in
ipairs(bk())do local bq=bp.Parent local br=Vector3.new(bq.Position.X-bm.pos.X,0,
bq.Position.Z-bm.pos.Z).Magnitude if br<30 then local bs,bt,bu=bh(bp)bn[#bn+1]={
pr=bp,flat=br,kgKnown=bs~=nil,kgOk=bs~=nil and bi(bs,bt,bm.kg),nameOk=bu~=nil
and bj(bu,bm.name)}end end if#bn==0 then return nil,'\110\111\032\083\116\101\097\108\032\112\114\111\109\112\116\032\110\101\097\114\032\105\116'end
local function bo(bp)local bq for br,bs in ipairs(bn)do if bp(bs)and(not bq or
bs.flat<bq.flat)then bq=bs end end return bq and bq.pr or nil end local bp=bo(
function(bp)return bp.kgOk and bp.nameOk end)or bo(function(bp)return bp.kgOk
end)or bo(function(bp)return bp.nameOk and not bp.kgKnown end)if bp then return
bp end if#bn==1 and not bn[1].kgKnown then return bn[1].pr end return nil,(
'%d Steal prompt(s) near it, none shows %s %s kg'):format(#bn,bm.name,t(bm.kg))
end local function bm(bn,bo)local bp=G()if not bp then return false end for bq,
br in ipairs(bk())do if br~=bn and(br.Parent.Position-bp.Position).Magnitude<bo
then return true end end return false end local function bn(bo,bp)local bq,br=B(
n.StealRarities),B(n.StealNames)if bq and not bq[bo.rarity or'']and not(bp and(
bo.rarity==nil or bo.rarity=='\063'))then return false,'rarity '..tostring(bo.
rarity)..'\032\110\111\116\032\115\101\108\101\099\116\101\100'end if br then local bs=br[bo.name or'']==true if not bs
then for bt in pairs(br)do if z(bt)==z(bo.name)then bs=true break end end end if
not bs then return false,'not in Animal Name'end end if(bo.kg or 0)<(n.
StealMinKg or 0)then return false,'\098\101\108\111\119\032\077\105\110\032\065\110\105\109\097\108\032\087\101\105\103\104\116'end local bs=n.
StealMinCash or 0 if bs>0 then if bo.cash==nil then if not bp then return false,
'\067\097\115\104\047\115\032\117\110\107\110\111\119\110'end elseif bo.cash<bs then return false,'below Min Cash/s '..t(
bs)end end return true end local bo={}for bp in pairs(bc)do bo[z(bp)]=bp end
local function bp()local bq local br=d:FindFirstChild('\067\097\114\114\105\101\100\065\110\105\109\097\108\115')for bs,bt
in ipairs(br and br:GetChildren()or{})do if tonumber(bt:GetAttribute(
'\067\097\114\114\105\101\114\085\115\101\114\073\100'))==i.UserId then bq=bt break end end if not bq then return nil
end local function bs(bt,bu)local bv=bq:GetAttribute(bt)if bv==nil or bv==''then
bv=bu and i:GetAttribute(bu)end if bv==''then bv=nil end return bv end local bt=
bs('\065\110\105\109\097\108\078\097\109\101','Carrying')if type(bt)~='\115\116\114\105\110\103'then return nil end bt=(bc[bt]
and bt)or bo[z(bt)]or bt local bu={name=bt,kg=tonumber(bs('\087\101\105\103\104\116\075\103',
'CarryingKg'))or 0,rarity=bs('\082\097\114\105\116\121','\067\097\114\114\121\105\110\103\082\097\114\105\116\121'),mutation=bs('Mutation',
'\067\097\114\114\121\105\110\103\077\117\116\097\116\105\111\110'),variant=bs('\086\097\114\105\097\110\116','CarryingVariant'),zone=bs('\090\111\110\101\073\100')}bu
.cash=bd(bt,bu.kg>0 and bu.kg or nil,tonumber(bs('\083\105\122\101\077\117\108\116')),bu.mutation,bu.
variant,bu.rarity)return bu end local function bq(br)return('%s %s kg %s/s%s%s')
:format(tostring(br.name),t(br.kg),br.cash and t(br.cash)or'\063',br.mutation and(
'\032'..tostring(br.mutation))or'',br.variant and('\032'..tostring(br.variant))or'')
end local br={}local function bs(bt,bu)br[#br+1]={name=z(bt),kg=tonumber(bu)or 0
,at=os.clock()}end local function bt(bu,bv)local bw,bx=z(bu),os.clock()for by=#
br,1,-1 do local bz=br[by]if bx-bz.at>120 then table.remove(br,by)elseif bz.name
==bw and(bz.kg<=0 or bi(bz.kg,false,bv))then return true end end return false
end local function bu()local bv=F()local bw=math.max(16,bv and bv.WalkSpeed or
16)if n.StealMove=='Fast (risky)'then return Z or bw*ad end if n.StealMove~=
'\085\115\101\032\077\111\118\101\109\101\110\116\032\083\101\116\116\105\110\103'or n.MoveMode=='\087\097\108\107'then return bw end if n.MoveMode==
'Teleport'then return math.huge end return bw*(tonumber(n.TweenMult)or 1)end
local function bv()local bw=d:FindFirstChild('\065\110\105\109\097\108\080\105\099\107\117\112\115')local bx=G()if not(
bw and bx)then return nil end local by=bu()local bz=B(n.StealZones)local bA=H()
local bB={}for bC,bD in ipairs(bw:GetChildren())do if bD:IsA('\077\111\100\101\108')and not a0(
bD)and(not bz or bz[tostring(bD:GetAttribute('ZoneId')or'')])then local bE={inst
=bD,name=bD:GetAttribute('\065\110\105\109\097\108\078\097\109\101')or bD.Name,rarity=bD:GetAttribute('Rarity'
)or'\063',kg=tonumber(bD:GetAttribute('\087\101\105\103\104\116\075\103'))or 0,cash=be(bD)}local bF=
tonumber(bD:GetAttribute('DespawnAtServerTime'))local bG=bg(bD)local bH=bG and((
bG-bx.Position).Magnitude/by+2)or 0 if bG and not Q(bG)and(not bF or bF-bA>bH)
and bn(bE)and not bt(bE.name,bE.kg)then bE.pos,bE.dist=bG,(bG-bx.Position).
Magnitude bB[#bB+1]=bE end end end return a2(bB,n.StealPriority)end local 
function bw(bx)local by=d:FindFirstChild('\065\110\105\109\097\108\080\105\099\107\117\112\115')local bz=G()if not(by
and bz)then return nil end local bA for bB,bC in ipairs(by:GetChildren())do if
bC:IsA('\077\111\100\101\108')and not a0(bC)then local bD=bC:GetAttribute('AnimalName')or bC.
Name local bE=tonumber(bC:GetAttribute('\087\101\105\103\104\116\075\103'))or 0 local bF=bg(bC)if bF and
z(bD)==z(bx.name)and(bx.kg<=0 or bi(bE,false,bx.kg))and Vector3.new(bF.X-bx.pos.
X,0,bF.Z-bx.pos.Z).Magnitude<150 then local bG=(bF-bz.Position).Magnitude if not
bA or bG<bA.dist then bA={inst=bC,name=bD,rarity=bC:GetAttribute('\082\097\114\105\116\121')or'?',
kg=bE,cash=be(bC),pos=bF,dist=bG}end end end end return bA end local function bx
(by)return tonumber(tostring(by):match('\037\100\043'))or math.huge end local by=
RaycastParams.new()by.FilterType=Enum.RaycastFilterType.Exclude by.
RespectCanCollide=true local function bz(bA)for bB,bC in ipairs(at())do if bC.id
==bA then local bD=bC.part.Position by.FilterDescendantsInstances={E()}local bE=
d:Raycast(Vector3.new(bD.X,bD.Y+bC.part.Size.Y/2,bD.Z),Vector3.new(0,-(bC.part.
Size.Y+60),0),by)local bF=bE and bE.Position.Y or(bD.Y-bC.part.Size.Y/2)return
CFrame.new(bD.X,bF+3,bD.Z)end end local bB=aO()local bC=bB and bB:
FindFirstChild(bA)if not bC then return nil end local bD=bC:FindFirstChild(
'\069\103\103\115')local bE,bF,bG=Vector3.zero,0,math.huge for bH,bI in ipairs(bD and bD:
GetChildren()or{})do local bJ,bK=aW(bI)if bJ then bE+=bJ.Position bF+=1 bG=math.
min(bG,bJ.Position.Y-bK.Y/2)end end if bF==0 then local bH=aW(bC)return bH and
CFrame.new(bH.Position+Vector3.new(0,4,0))or nil end return CFrame.new(bE.X/bF,
bG+3,bE.Z/bF)end local function bA(bB)bB=C(bB)if#bB==0 then return nil end table
.sort(bB,function(bC,bD)return bx(bC)<bx(bD)end)return bB[1]end local function 
bB()return bA(n.StealZones)end local function bC()if n.StealMove==
'Use Movement Setting'then return nil end if n.StealMove=='\070\097\115\116\032\040\114\105\115\107\121\041'then
return'\070\097\115\116'end return'Walk'end local function bD(bE,bF)local bG=os.clock()+bF
while os.clock()<bG and k.alive do if bE()then return true end task.wait(0.1)end
return bE()end local bE=nil pcall(function()bE=game:GetService(
'\086\105\114\116\117\097\108\073\110\112\117\116\077\097\110\097\103\101\114')end)local function bF(bG)if n.DebugLog then warn(
'\091\066\101\101\066\083\069\093\032\115\116\101\097\108\058\032'..bG)end end local function bG(bH,bI,bJ)for bK=1,3 do local bL
,bM=aN(bH,bI,bC())if not bL then return false,bM or'stopped'end task.wait(0.3)
local bN,bO=G(),F()if not(bN and bO)then return false,'\110\111\032\099\104\097\114\097\099\116\101\114'end local bP
=(bN.Position-bH.Position).Magnitude local bQ=math.max(16,bO.WalkSpeed)if bP<=12
then if bC()=='\070\097\115\116'and Z then Z=math.min(Z*1.02,bQ*ae)end return true end if bP
>300 then local bR=V()local bS=bR and(bN.Position-bR:GetPivot().Position).
Magnitude or-1 bF((
[[FLUNG %.0f studs away on the way to %s; now at (%.0f, %.0f, %.0f), %.0f studs from home, chased=%s]]
):format(bP,bJ,bN.Position.X,bN.Position.Y,bN.Position.Z,bS,tostring(U())))task.
wait(2)return false,'flung'end if bC()=='\087\097\108\107'then bF((
'\099\111\117\108\100\032\110\111\116\032\119\097\108\107\032\116\111\032\037\115\044\032\037\046\048\102\032\115\116\117\100\115\032\108\101\102\116'):format(bJ,bP))return false,'blocked'end
if bC()=='\070\097\115\116'then Z=math.max(bQ*af,math.min((Z or bQ)*0.85,bQ))bF((
[[pulled back %.0f studs on the way to %s, slowing to %.0f studs/s]]):format(bP,
bJ,Z))else bF(('\112\117\108\108\101\100\032\098\097\099\107\032\037\046\048\102\032\115\116\117\100\115\032\111\110\032\116\104\101\032\119\097\121\032\116\111\032\037\115'):format(bP,bJ))end if
bI and not bI()then return false,'stopped'end end return false,'\112\117\108\108\101\100\032\098\097\099\107'end
local function bH(bI)local bJ=bI.inst local bK,bL=aW(bJ)local bM=bK and(bK.
Position.Y-bL.Y/2)or bI.pos.Y local bN=bL and math.max(bL.X,bL.Z)/2 or 4 local
bO=G()local bP=bO and Vector3.new(bO.Position.X-bI.pos.X,0,bO.Position.Z-bI.pos.
Z)or Vector3.new(1,0,0)bP=bP.Magnitude>0.1 and bP.Unit or Vector3.new(1,0,0)
local bQ=Vector3.new(bI.pos.X,bM+3,bI.pos.Z)+bP*(bN+4)return bG(CFrame.new(bQ),
function()return n.AutoSteal and bJ.Parent~=nil end,bI.name)end local bI={{
'\102\105\114\101\112\114\111\120\105\109\105\116\121\112\114\111\109\112\116',function(bI)local bJ=m('fireproximityprompt')if not bJ
then return false end return(pcall(bJ,bI))end},{'\104\111\108\100\032\112\114\111\109\112\116',function(bI)return
(pcall(function()bI:InputHoldBegin()task.wait(bI.HoldDuration+0.15)bI:
InputHoldEnd()end))end},{'\112\114\101\115\115\032\107\101\121',function(bI)if not bE then return false end
return(pcall(function()local bJ=bI.KeyboardKeyCode bE:SendKeyEvent(true,bJ,false
,game)task.wait(bI.HoldDuration+0.15)bE:SendKeyEvent(false,bJ,false,game)end))
end}}local bJ=nil local bK=30 local function bL(bM,bN)local bO=Vector3.new(bM.X-
bN.X,0,bM.Z-bN.Z)bO=bO.Magnitude>0.5 and bO.Unit or Vector3.new(0,0,1)local bP,
bQ for bR,bS in ipairs({0,40,-40,80,-80,120,-120})do local bT=CFrame.Angles(0,
math.rad(bS),0):VectorToWorldSpace(bO)local bU=bM+bT*35 local bV,bW=ay(bU.X)if
bV then bU=Vector3.new(bU.X,bM.Y,math.clamp(bU.Z,bV-bW+12,bV+bW-12))end local bX
=Vector3.new(bU.X-bN.X,0,bU.Z-bN.Z).Magnitude local bY=ar(bM,bT,12)if bX>=bK and
not bY then return bU end if not bY and(not bQ or bX>bQ)then bP,bQ=bU,bX end end
return bP or(bM+bO*35)end local function bM(bN,bO)R((
'Wrong animal (%s), dropping it away from the target'):format(tostring(bN.name))
)local bP=G()if bP and bO then local bQ=bL(bP.Position,bO)local bR=os.clock()aL(
bQ,function()local bS=G()if not bS or S()==0 or os.clock()-bR>1.5 then return
false end return Vector3.new(bS.Position.X-bO.X,0,bS.Position.Z-bO.Z).Magnitude<
bK end,3,true)end bs(bN.name,bN.kg)for bQ=1,4 do O=os.clock()K(
'\068\114\111\112\067\097\114\114\105\101\100\082\101\109\111\116\101')if bD(function()return S()==0 end,1.2)then N.wrongDropped+=1
N.stolen=math.max(0,N.stolen-1)return true end task.wait(0.3)end bF(
'\099\111\117\108\100\032\110\111\116\032\100\114\111\112\032\116\104\101\032\119\114\111\110\103\032\097\110\105\109\097\108\044\032\107\101\101\112\105\110\103\032\105\116')return false end local function bN
(bO)local bP bD(function()bP=bp()return bP~=nil end,0.6)aD=true if not bP then
bF('steal check: could not read the carried animal, keeping it')return true end
local bQ=z(bP.name)==z(bO.name)and(bP.kg<=0 or bi(bP.kg,false,bO.kg))local bR=(
'\037\115\032\037\115\032\107\103\032\037\115\047\115'):format(bO.name,t(bO.kg),bO.cash and t(bO.cash)or'\063')if bQ then
bF(('steal check: got %s -> OK'):format(bq(bP)))return true end local bS,bT=bn(
bP,true)if bS then bF((
[[steal check: got %s, wanted %s -> not the target but it passes the filter, keeping it]]
):format(bq(bP),bR))return true end bF((
[[steal check: got %s, wanted %s -> WRONG (%s), carrying it %d studs away and dropping]]
):format(bq(bP),bR,bT,bK))if bM(bP,bO.pos)then bF((
'\100\114\111\112\112\101\100\032\119\114\111\110\103\032\112\101\116\044\032\103\111\105\110\103\032\098\097\099\107\032\116\111\032\037\115'):format(bO.name))end return false end
local function bO(bP)local bQ=bP.inst local bR=bQ:GetAttribute('\090\111\110\101\073\100')bR=(
type(bR)=='string'and bR~=''and bR)or aP(bP.pos)local bS,bT=bl(bP)if not bS then
local bU=G()if bU and(bU.Position-bP.pos).Magnitude>30 then R((
'\071\111\105\110\103\032\116\111\032\037\115\032\091\037\115\044\032\037\115\032\107\103\093'):format(bP.name,bP.rarity,t(bP.kg)))bF((
'no prompt yet for %s, moving closer (%.0f studs)'):format(bP.name,(bU.Position-
bP.pos).Magnitude))if bH(bP)then bD(function()bS,bT=bl(bP)return bS~=nil end,1.5
)end end if not bS then bF(('\110\111\032\083\116\101\097\108\032\112\114\111\109\112\116\032\102\111\114\032\037\115\032\040\037\115\032\107\103\041\058\032\037\115\037\115'):format(bP.
name,t(bP.kg),tostring(bT),bQ.Parent and''or', it is gone'))a1(bQ,4)return false
end end R(('\083\116\101\097\108\105\110\103\032\037\115\032\091\037\115\044\032\037\115\032\107\103\093'):format(bP.name,bP.rarity,t(bP.kg)))local
bU=bS.Parent if not(bU and bU:IsA('\066\097\115\101\080\097\114\116'))then bF(
'prompt has no anchor part for '..bP.name)a1(bQ,4)return false end local bV=bU.
Position+Vector3.new(0,3,0)bF(('\103\111\105\110\103\032\116\111\032\037\115\032\040\037\115\032\107\103\044\032\037\115\047\115\041\044\032\037\046\048\102\032\115\116\117\100\115\032\097\119\097\121'):
format(bP.name,t(bP.kg),bP.cash and t(bP.cash)or'\063',(G()and(G().Position-bV).
Magnitude)or-1))local bW,bX=bG(CFrame.new(bV),function()return n.AutoSteal and
bQ.Parent~=nil end,bP.name)if not bQ.Parent then bF(bP.name..
' was taken or despawned before we got there')return false end if not bW then
bF(('\099\111\117\108\100\032\110\111\116\032\114\101\097\099\104\032\037\115\032\040\037\115\041'):format(bP.name,tostring(bX)))return false end
local bY=G()if not bY then return false end local bZ,b_=bl(bP)if bZ then bS=bZ
elseif not bS.Parent then bF(('\110\111\032\083\116\101\097\108\032\112\114\111\109\112\116\032\102\111\114\032\037\115\032\097\110\121\109\111\114\101\058\032\037\115'):format(bP.
name,tostring(b_)))a1(bQ,4)return false end local b0=S()local b1={}if bJ then b1
[1]=bJ end for b2,b3 in ipairs(bI)do if b3~=bJ then b1[#b1+1]=b3 end end for b2,
b3 in ipairs(b1)do if not(bQ.Parent and bS.Parent)then bF(bP.name..
' or its prompt disappeared while trying')break end if b3[1]=='\112\114\101\115\115\032\107\101\121'and bm(
bS,30)then bF(
[[skipping press key: another Steal prompt is close, it could grab the wrong animal]]
)continue end bF('\116\114\121\105\110\103\032'..b3[1]..' on '..bP.name)b3[2](bS)if bD(function()
return S()>b0 end,1.2)then aC=bR if bJ~=b3 then bJ=b3 print(
'\091\066\101\101\066\083\069\093\032\115\116\101\097\108\032\119\111\114\107\115\032\119\105\116\104\058\032'..b3[1])end N.stolen+=1 return bN(bP)end end bF((
[[could not pick up %s (dist to animal %.1f, prompt range %d, prompt on %s)]]):
format(bP.name,(bY.Position-bP.pos).Magnitude,bS.MaxActivationDistance,bS.Parent
and bS.Parent:GetFullName()or'\110\105\108'))a1(bQ,8)return false end local function bP(
bQ,bR,bS)local bT=bQ.CFrame:PointToObjectSpace(bR)local bU=bQ.Size/2 local bV=
math.clamp(bT.X,-bU.X+bS,bU.X-bS)local bW=math.clamp(bT.Z,-bU.Z+bS,bU.Z-bS)local
bX=bQ.CFrame:PointToWorldSpace(Vector3.new(bV,0,bW))return CFrame.new(bX.X,bR.Y,
bX.Z)end local function bQ()local bR=V()if not bR then return{}end local bS=bR:
GetPivot()local bT={}local bU=G()local bV=bU and bU.Position or bS.Position
local bW=d:FindFirstChild('Build')and d.Build:FindFirstChild('\090\111\110\101\072\105\116\098\111\120\101\115')
local bX=bW and bW:FindFirstChild('\083\097\102\101\090\111\110\101')if bX and bX:IsA('BasePart')then
local bY=Vector3.new(bX.Position.X,bV.Y,bS.Position.Z)bT[#bT+1]=bP(bX,bY,20)end
local bY=n.BankOffset if type(bY)=='\116\097\098\108\101'and#bY==12 then bT[#bT+1]=bS*CFrame.
new(table.unpack(bY))end local bZ=bR:FindFirstChild('\072\105\116\098\111\120')if bZ and bZ:IsA(
'BasePart')then bT[#bT+1]=bP(bZ,bV,6)end bT[#bT+1]=bS+Vector3.new(0,4,0)local b_
,b0,b1=pcall(function()return bR:GetBoundingBox()end)if b_ then bT[#bT+1]=CFrame
.new(b0.Position.X,b0.Position.Y-b1.Y/2+4,b0.Position.Z)end return bT end local
bR=false local function bS()local bT=S()for bU,bV in ipairs(bQ())do R(
'\066\097\110\107\105\110\103\032\097\116\032\104\111\109\101'..(bU>1 and('\032\040\115\112\111\116\032'..bU..')')or''))bF((
'\098\097\110\107\058\032\119\097\108\107\105\110\103\032\116\111\032\115\112\111\116\032\037\100\032\097\116\032\040\037\046\048\102\044\032\037\046\048\102\044\032\037\046\048\102\041'):format(bU,bV.Position.X,bV.
Position.Y,bV.Position.Z))local bW,bX=bG(bV,function()return S()>0 end,'home')if
bD(function()return S()==0 end,3)then N.banked+=bT bF('\098\097\110\107\058\032\098\097\110\107\101\100')return true
end local bY=G()if bY then bF((
[[bank: spot %d failed (%s), now at (%.0f, %.0f, %.0f) in %s, still carrying %d]]
):format(bU,tostring(bX),bY.Position.X,bY.Position.Y,bY.Position.Z,tostring(aP(
bY.Position)or'\098\097\115\101\047\063'),S()))end if S()==0 then return false end end if not bR
then bR=true M('Bank',
[[Couldn't bank automatically. Stand where banking works and press 'Set Bank Point Here'.]]
,8)end task.wait(1)return false end local bT=false local function bU()local bV=n
.DropPoint if type(bV)=='\116\097\098\108\101'and#bV==12 then return CFrame.new(table.unpack(bV
)),'\121\111\117\114\032\100\114\111\112\032\112\111\105\110\116'end local bW=n.DropZone if bW and bW~=''then local bX=bz(bW)
if bX then return bX,bW end end return nil end local function bV()local bW,bX=
bU()if not bW then if not bT then bT=true M('\068\114\111\112',
[[Pick a Drop Zone (or set a drop point) first. Banking at home for now.]],6)end
return bS()end local bY=S()R('\084\097\107\105\110\103\032\105\116\032\116\111\032'..bX)bG(bW,function()return S()>0
end,bX)local bZ=G()if not bZ or(bZ.Position-bW.Position).Magnitude>20 then
return false end for b_=1,3 do R('Dropping in '..bX)P[#P+1]={pos=bZ.Position,at=
os.clock()}O=os.clock()K('\068\114\111\112\067\097\114\114\105\101\100\082\101\109\111\116\101')if bD(function()return S()==0 end,
1.5)then N.dropped+=bY return true end task.wait(0.3)end return false end local 
function bW()local bX,bY=E(),F()if not(bX and bY)then return nil end local bZ=bX
:FindFirstChild('\080\105\099\107\097\120\101')if bZ and bZ:IsA('Tool')then return bZ end local b_=i:
FindFirstChildOfClass('\066\097\099\107\112\097\099\107')bZ=b_ and b_:FindFirstChild('\080\105\099\107\097\120\101')if bZ and
bZ:IsA('Tool')then bY:EquipTool(bZ)task.wait(0.2)return bZ end return nil end
local bX={'\084\111\111\108\032\065\099\116\105\118\097\116\101','\086\105\114\116\117\097\108\032\067\108\105\099\107'}local bY=1 local bZ={at=0}local 
function b_(b0,b1)if b1=='Virtual Click'then pcall(function()local b2=d.
CurrentCamera local b3=b2.ViewportSize/2 h:Button1Down(b3,b2.CFrame)task.wait(
0.03)h:Button1Up(b3,b2.CFrame)end)else pcall(function()b0:Activate()end)end end
local b0=RaycastParams.new()b0.FilterType=Enum.RaycastFilterType.Exclude b0.
RespectCanCollide=true local function b1(b2,b3,b4)b0.FilterDescendantsInstances=
b4 local b5=d:Raycast(b2,Vector3.new(0,-b3,0),b0)return b5 and b5.Position.Y or
nil end local function b2()return n.BreakMove=='\087\097\108\107\032\040\115\097\102\101\041'and'\087\097\108\107'or'Tween'
end local function b3(b4)local b5=b4.inst local b6,b7=aW(b5)if not b6 then a1(b5
,10)return end R(('\066\114\101\097\107\105\110\103\032\037\115\032\091\037\115\093\032\037\115\047\037\115\032\072\080'):format(b4.name,b4.rarity,t(b4.hp)
,t(b4.maxHp)))local function b8()b6,b7=aW(b5)if not b6 then return nil end local
b9,ca=G(),F()local cb=b6.Position local cc if n.PassThroughEgg then cc=Vector3.
new(cb.X,0,cb.Z)else local cd=math.max(b7.X,b7.Z)/2 local ce=b9 and(b9.Position-
cb)or Vector3.new(1,0,0)ce=Vector3.new(ce.X,0,ce.Z)ce=ce.Magnitude>0.1 and ce.
Unit or Vector3.new(1,0,0)cc=Vector3.new(cb.X,0,cb.Z)+ce*(cd+2.5)end local cd=cb
.Y+b7.Y/2+2 local ce=b1(Vector3.new(cc.X,cd,cc.Z),b7.Y+80,{E(),b5.Parent})local
cf=(ca and ca.HipHeight or 2)+(b9 and b9.Size.Y/2 or 1)local cg=ce and(ce+cf)or(
cb.Y-b7.Y/2+3)local ch=Vector3.new(cc.X,cg,cc.Z)if n.PassThroughEgg then local
ci=b9 and(b9.CFrame-b9.CFrame.Position)or CFrame.new()return CFrame.new(ch)*ci
end return CFrame.lookAt(ch,Vector3.new(cb.X,ch.Y,cb.Z))end local b9=b8()if not
b9 then return end if not aN(b9,function()return n.AutoBreak and aV(b5)end,b2())
then return end local ca=bW()if not ca then R('\078\111\032\080\105\099\107\097\120\101\032\105\110\032\098\097\099\107\112\097\099\107')task.
wait(1)return end local cb=tonumber(b5:GetAttribute('Health'))or 0 local cc=os.
clock()local cd=os.clock()local ce=os.clock()+1 while k.alive and not k.paused
and n.AutoBreak and aV(b5)do if S()>0 and n.AutoSteal then return end if n.
PassThroughEgg then aY(b5.Parent)end local cf=G()if not cf then return end local
cg=cf.Position-b9.Position local ch=Vector3.new(cg.X,0,cg.Z).Magnitude if b2()==
'\087\097\108\107'then if ch>2.5 then local ci=F()if ci then ci:MoveTo(Vector3.new(b9.
Position.X,cf.Position.Y,b9.Position.Z))end end elseif ch>8 or math.abs(cg.Y)>8
then aN(b9,function()return n.AutoBreak and aV(b5)end,b2())elseif ch>2.5 or math
.abs(cg.Y)>3 then cf.CFrame=CFrame.new(b9.Position)*(cf.CFrame-cf.CFrame.
Position)cf.AssemblyLinearVelocity=Vector3.zero end if not(ca.Parent==E())then
ca=bW()if not ca then return end end local ci=n.HitMethod=='\065\117\116\111'and bX[bY]or n.
HitMethod b_(ca,ci)local cj=tonumber(b5:GetAttribute('Health'))or 0 if cj<cb
then cb,cc=cj,os.clock()R(('\066\114\101\097\107\105\110\103\032\037\115\032\091\037\115\093\032\037\115\047\037\115\032\072\080'):format(b4.name,b4.rarity
,t(cj),t(b4.maxHp)))elseif os.clock()-cc>5 then if n.HitMethod=='\065\117\116\111'and bY<#bX
then bY+=1 cc=os.clock()M('Break','\078\111\032\100\097\109\097\103\101\032\119\105\116\104\032\084\111\111\108\032\065\099\116\105\118\097\116\101\044\032\116\114\121\105\110\103\032'..bX[bY
]..'\046',4)else a1(b5,60)M('Break',b4.name..
[[ takes no damage (locked zone or too far). Skipping it for 60s.]],5)if n.
HitMethod=='\065\117\116\111'then bY=1 end return end end if os.clock()-bZ.at<0.5 and os.
clock()-cd>2 and os.clock()-cc>3 then a1(b5,60)return end if n.AutoSteal and os.
clock()>ce then ce=os.clock()+1 if bv()then return end end task.wait(0.1)end if
not aV(b5)then N.broken+=1 end end local function b4(b5)if n.PassThroughEgg then
aY(b5.inst.Parent)end local b6,b7=pcall(b3,b5)aZ()if not b6 then error(b7,0)end
end pcall(function()local b5=I('\069\103\103\072\105\116\082\101\106\101\099\116\101\100')if b5 then local b6=false l(b5.
OnClientEvent,function(...)bZ.at=os.clock()if not b6 then b6=true local b7={...}
for b8=1,select('#',...)do b7[b8]=tostring(b7[b8])end warn(
'\091\066\101\101\066\083\069\093\032\069\103\103\072\105\116\082\101\106\101\099\116\101\100\058\032'..table.concat(b7,'\044\032'))end end)end local b6=I(
'AnimalBankedRemote')if b6 then l(b6.OnClientEvent,function()N.lastBankAt=os.
clock()end)end end)local function b5(...)local b6={}for b7=1,select('\035',...)do
local b8=select(b7,...)if typeof(b8)=='\116\097\098\108\101'then local b9={}for ca,cb in pairs(
b8)do b9[#b9+1]=tostring(ca)..'='..tostring(cb)if#b9>=10 then break end end b6[
b7]='\123'..table.concat(b9,'\044\032')..'}'elseif typeof(b8)=='\073\110\115\116\097\110\099\101'then b6[b7]=b8:
GetFullName()else b6[b7]=tostring(b8)end end return table.concat(b6,'\044\032')end
pcall(function()for b6,b7 in ipairs({'CatchFlingRemote','\078\111\116\105\102\121',
'\083\108\111\119\077\111\100\101\082\101\109\111\116\101','BinaryTransitionRemote'})do local b8=I(b7)if b8 and b8:IsA(
'\082\101\109\111\116\101\069\118\101\110\116')then l(b8.OnClientEvent,function(...)if n.DebugLog then warn(
'\091\066\101\101\066\083\069\093\032\101\118\101\110\116\032'..b7..': '..b5(...))end end)end end end)local function b6(b7)
local b8=d:FindFirstChild('\066\117\105\108\100')and d.Build:FindFirstChild('\090\111\110\101\072\105\116\098\111\120\101\115')
local b9=b8 and b8:FindFirstChild('SafeZone')local ca=V()local cb=ca and ca:
FindFirstChild('\072\105\116\098\111\120')for cc,cd in ipairs({b9,cb})do if cd and cd:IsA(
'\066\097\115\101\080\097\114\116')then local ce=cd.CFrame:PointToObjectSpace(b7)local cf=cd.Size/2 if
math.abs(ce.X)<=cf.X and math.abs(ce.Z)<=cf.Z and math.abs(ce.Y)<=cf.Y+2 then
return true end end end return false end task.spawn(function()local b7,b8,b9=0,{
},0 while k.alive do local ca=G()local cb=S()b9+=1 if ca then table.insert(b8,1,
{t=os.clock(),pos=ca.Position})if#b8>15 then table.remove(b8)end end if cb>0 and
(b9%5==0 or b7==0)then local cc=bp()if cc then aH=cc end end if b7>0 and cb==0
and ca and b6(ca.Position)then aG=nil end if b7>0 and cb==0 and ca and not b6(ca
.Position)and os.clock()-O>3 then N.lost=(N.lost or 0)+1 local cc=aH if n.
AutoSteal and cc and cc.name then local cd=os.clock()local ce=aG and z(aG.name)
==z(cc.name)and cd-aG.first<aE if ce then aG.pos,aG.lostAt,aG.active=ca.Position
,cd,true else aG={name=cc.name,kg=cc.kg or 0,pos=ca.Position,first=cd,lostAt=cd,
tries=0,active=true}end if n.DebugLog then warn((
[[[BeeBSE] recover: lost %s in %s, going back for it (try %d/%d)]]):format(bq(cc
),tostring(aP(ca.Position)or'?'),aG.tries+1,aF))end end local cd=0 for ce,cf in
ipairs(b8)do if os.clock()-cf.t<=1.5 then cd=math.max(cd,(cf.pos-ca.Position).
Magnitude)end end local ce={}for cf,cg in ipairs(b:GetPlayers())do local ch=cg~=
i and cg.Character local ci=ch and ch:FindFirstChild('\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116')if ci
and(ci.Position-ca.Position).Magnitude<45 then local cj=ch:
FindFirstChildOfClass('\084\111\111\108')ce[#ce+1]=('%s (%.0f studs, %s%s)'):format(cg.Name,
(ci.Position-ca.Position).Magnitude,cj and cj.Name or'\110\111\032\116\111\111\108',cg:GetAttribute(
'\071\117\097\114\100\077\111\114\112\104')and', guard morph'or'')end end if n.DebugLog then warn((
[[[BeeBSE] LOST carried animal at (%.0f, %.0f, %.0f) in %s, moved %.0f studs in the last 1.5s, nearby: %s]]
):format(ca.Position.X,ca.Position.Y,ca.Position.Z,tostring(aP(ca.Position)or'\063'
),cd,#ce>0 and table.concat(ce,'; ')or'\110\111\098\111\100\121'))end end b7=cb if cb==0 then aC=
nil aD=false aH=nil end task.wait(0.1)end end)pcall(function()local b7=i:
WaitForChild('\080\108\097\121\101\114\071\117\105',10)local b8={'cheat','\099\097\117\103\104\116','\112\117\108\108\101\100','exploded',
'\100\114\111\112\112\101\100','\100\114\111\112','hit','\098\111\110\107','\115\116\111\108\101','knocked'}local b9={}local function ca(cb)
if not n.DebugLog or not cb:IsA('\084\101\120\116\076\097\098\101\108')then return end local cc=tostring(cb
.Text or''):gsub('<[^>]->','')if#cc<4 or#cc>160 then return end local cd=cc:
lower()for ce,cf in ipairs(b8)do if cd:find(cf,1,true)then if b9[cc]and os.
clock()-b9[cc]<3 then return end b9[cc]=os.clock()warn(
'\091\066\101\101\066\083\069\093\032\115\099\114\101\101\110\032\109\101\115\115\097\103\101\058\032'..cc)return end end end l(b7.DescendantAdded,function
(cb)if cb:IsA('TextLabel')then task.defer(ca,cb)cb:GetPropertyChangedSignal(
'\084\101\120\116'):Connect(function()ca(cb)end)end end)end)local b7={Cash=true,
CashPerSecond=true,SpeedPower=true,Diamonds=true,AdPotionStock=true}l(i.
AttributeChanged,function(b8)if not n.DebugLog or b7[b8]or b8:find('\094\077\097\115\116\101\114\121\088\112\095'
)then return end warn(('[BeeBSE] attr %s = %s'):format(b8,tostring(i:
GetAttribute(b8))))end)local b8=nil local b9=0 local function ca(cb,cc)if type(
cb)~='\116\097\098\108\101'then return false end for cd,ce in ipairs({'\083\101\116','SetValue',
'\083\101\116\083\116\097\116\101'})do if type(cb[ce])=='\102\117\110\099\116\105\111\110'and pcall(cb[ce],cb,cc)then return
true end end return false end local function cb()if not(n.AutoBreak and n.
AutoSteal and(n.StealMinCash or 0)<=0)then return false end n.AutoSteal=false aG
=nil M('Auto Steal',
[[Auto Break is on: set Min Cash/s first, then turn Auto Steal on again.]],8)if
b8 and not ca(b8,false)then warn(
[[[BeeBSE] Auto Steal is OFF in the script, but the UI toggle could not be switched off]]
)end n.AutoSteal=false return true end local function cc()local cd=F()if not cd
then return true end if cd.PlatformStand then return true end local ce=cd:
GetState()return ce==Enum.HumanoidStateType.Physics or ce==Enum.
HumanoidStateType.Ragdoll or ce==Enum.HumanoidStateType.FallingDown or ce==Enum.
HumanoidStateType.PlatformStanding end local function cd()if k.paused then R(
'\080\097\117\115\101\100\058\032\067\104\101\097\116\101\114\077\111\100\101\032\102\108\097\103\032\105\115\032\111\110')task.wait(1)return end local ce=F()if not ce or
ce.Health<=0 then R('\087\097\105\116\105\110\103\032\102\111\114\032\099\104\097\114\097\099\116\101\114')task.wait(1)return end if os.clock()
-b9>1.5 then cb()end if n.AutoSteal and S()==0 and aG and aG.active then local
cf=aG local cg=os.clock()if cg-cf.first>aE or cf.tries>=aF then bF((
'recover: gave up on %s (%s)'):format(cf.name,cf.tries>=aF and(aF..'\032\116\114\105\101\115\032\117\115\101\100'
)or'\051\048\115\032\112\097\115\115\101\100'))aG=nil elseif cc()and cg-cf.lostAt<8 then R(
'Knocked down, getting up to recover '..cf.name)task.wait(0.15)return else local
ch=bw(cf)if ch then cf.tries+=1 R(('\082\101\099\111\118\101\114\105\110\103\032\037\115\032\040\116\114\121\032\037\100\047\037\100\041'):format(cf.name,
cf.tries,aF))bF(('\114\101\099\111\118\101\114\058\032\103\111\105\110\103\032\098\097\099\107\032\102\111\114\032\037\115\044\032\037\046\048\102\032\115\116\117\100\115\032\097\119\097\121\032\040\116\114\121\032\037\100\047\037\100\041'):
format(cf.name,ch.dist,cf.tries,aF))if bO(ch)and S()>0 then cf.active=false bF(
'recover: got it back, running home')end return elseif cg-cf.lostAt>4 then bF((
'\114\101\099\111\118\101\114\058\032\103\097\118\101\032\117\112\032\111\110\032\037\115\032\040\116\097\107\101\110\032\098\121\032\115\111\109\101\111\110\101\032\111\114\032\100\101\115\112\097\119\110\101\100\041'):format(cf.name))aG=nil
else R('\076\111\111\107\105\110\103\032\102\111\114\032\116\104\101\032\100\114\111\112\112\101\100\032'..cf.name)task.wait(0.2)return end end end if n
.AutoSteal and S()>0 then if S()>=T()or U()or not bv()then if not aD then aD=
true local cf=bp()if cf then local cg,ch=bn(cf,true)if not cg then bF((
[[final check: carrying %s -> doesn't pass the filter (%s), dropping it]]):
format(bq(cf),ch))bM(cf,nil)return end end end if n.AfterSteal=='Drop In Zone'
then bV()else bS()end return end end if n.AutoSteal and n.StealZoneFirst and not
n.AutoBreak and S()==0 then local cf=B(C(n.StealZones))local cg=n.AutoBreak and
B(C(n.BreakZones))local ch=G()local ci=ch and aP(ch.Position)if cf and ch and
not cf[ci or'']and not(cg and cg[ci or''])then local cj=bB()local ck=cj and bz(
cj)if ck then R('Going to '..cj..'\032\102\105\114\115\116')bG(ck,function()local cl=G()return n.
AutoSteal and S()==0 and not(cl and cf[aP(cl.Position)or''])end,cj)return end
end end if n.AutoSteal then local cf=bv()if cf then bO(cf)return end end if n.
AutoBreak then local cf=a3()if cf then b4(cf)return end end if n.AutoBreak or n.
AutoSteal then local cf=n.StealWaitInZone and((n.AutoBreak and bA(n.BreakZones))
or(n.AutoSteal and bB()))local cg=cf and bz(cf)local ch=G()if cg and ch and
Vector3.new(ch.Position.X-cg.Position.X,0,ch.Position.Z-cg.Position.Z).Magnitude
>60 then R('Going to '..cf..'\032\116\111\032\119\097\105\116')local ci=function()return(n.AutoSteal and
not bv())or(n.AutoBreak and not a3()and not n.AutoSteal)or(n.AutoBreak and n.
AutoSteal and not bv()and not a3())end if n.AutoBreak and not n.AutoSteal then
aN(cg,ci,b2())else bG(cg,ci,cf)end return end R((n.AutoBreak and
'\078\111\032\101\103\103\032\109\097\116\099\104\101\115\032\116\104\101\032\066\114\101\097\107\032\102\105\108\116\101\114'or'Waiting for a matching pickup')..(cf and(
'\032\040\119\097\105\116\105\110\103\032\105\110\032'..cf..'\041')or''))else R('\073\100\108\101')end task.wait(0.5)end task.spawn(
function()while k.alive do local ce,cf=pcall(cd)if not ce then warn('\091\066\101\101\066\083\069\093\032'
..tostring(cf))task.wait(1)end task.wait(0.05)end end)local ce={}local function 
cf(cg,ch)local ci=os.clock()if(ce[cg]or 0)<=ci then ce[cg]=ci+ch return true end
return false end local function cg()local ch,ci={},0 for cj in tostring(i:
GetAttribute('OwnedPickaxes')or''):gmatch('\037\100\043')do cj=tonumber(cj)ch[cj]=true if
cj>ci then ci=cj end end return ch,ci end task.spawn(function()while k.alive do
if not k.paused then pcall(function()if n.AutoEquipBest and cf('equipBest',30)
then K('\080\101\116\115\073\110\118\101\110\116\111\114\121\082\101\109\111\116\101','\069\113\117\105\112\066\101\115\116',nil)end if n.AutoUpgradePlot and cf(
'plot',8)then K('\085\112\103\114\097\100\101\080\108\111\116\082\101\113\117\101\115\116')end if n.AutoUpgradeTreadmill and cf(
'\116\114\101\097\100\109\105\108\108',8)then K('UpgradeTreadmillRequest')end if n.AutoClaimIndex and cf(
'\105\110\100\101\120',30)then K('\073\110\100\101\120\082\101\109\111\116\101','ClaimAll',nil)end if n.AutoClaimOffline and cf(
'\111\102\102\108\105\110\101',120)then K('\079\102\102\108\105\110\101\082\101\119\097\114\100\082\101\109\111\116\101','Claim')end if n.AutoBuyPickaxe and
cf('\112\105\099\107\097\120\101',6)then local ch,ci=cg()local cj=tonumber(i:GetAttribute(
'\080\105\099\107\097\120\101\084\105\101\114'))or 1 if ci>cj and ch[ci]then K('PickaxeShopRequest','\069\113\117\105\112',ci)
elseif ci<24 then K('\080\105\099\107\097\120\101\083\104\111\112\082\101\113\117\101\115\116','Buy',ci+1)end end end)end task.wait(1)
end end)l(i.Idled,function()if not n.AntiAfk then return end pcall(function()h:
CaptureController()h:ClickButton2(Vector2.new())end)end)local function ch()local
ci=i:GetAttribute('\067\104\101\097\116\101\114\077\111\100\101')local cj=ci~=nil and ci~=false and ci~=0 and ci
~=''if cj and n.PauseOnFlag and not k.paused then k.paused=true M('Paused',
[[The game set CheaterMode on you. All automation is paused until it clears.]],
10)elseif not cj and k.paused then k.paused=false M('\082\101\115\117\109\101\100',
'\067\104\101\097\116\101\114\077\111\100\101\032\099\108\101\097\114\101\100\044\032\097\117\116\111\109\097\116\105\111\110\032\114\101\115\117\109\101\100\046',5)end end l(i:
GetAttributeChangedSignal('CheaterMode'),ch)ch()l(i:GetAttributeChangedSignal(
'\066\101\105\110\103\067\104\097\115\101\100'),function()if n.NotifyChased and U()then M('\067\104\097\115\101\100',
'A guard is chasing you!',3)end end)local ci,cj=nil,d:GetAttribute(
'\084\105\116\097\110\105\099\083\112\097\119\110\073\100')l(d:GetAttributeChangedSignal('\084\105\116\097\110\105\099\083\112\097\119\110\073\100'),function()local
ck=d:GetAttribute('TitanicSpawnId')if n.NotifyTitanic and ck~=cj then M(
'\084\105\116\097\110\105\099\032\069\103\103','\065\032\084\105\116\097\110\105\099\032\069\103\103\032\106\117\115\116\032\115\112\097\119\110\101\100\032\040\115\112\097\119\110\032'..tostring(ck)..').',8)end cj=
ck end)local function ck(cl)cl=math.max(0,math.floor(cl))if cl>=3600 then return
('\037\100\104\032\037\100\109'):format(cl//3600,cl%3600//60)end return('\037\100\109\032\037\048\050\100\115'):format(cl//60,cl
%60)end local cl=Instance.new('Folder')cl.Name='\066\101\101\066\083\069\095\069\083\080'pcall(function()local
cm=m('\103\101\116\104\117\105')cl.Parent=cm and cm()or game:GetService('CoreGui')end)if not cl.
Parent then cl.Parent=i:WaitForChild('\080\108\097\121\101\114\071\117\105')end local cm={}local function 
cn(co,cp)local cq=cm[cp]if cq and cq.gui.Parent then cq.gui.Adornee=co return cq
end local cr=Instance.new('\066\105\108\108\098\111\097\114\100\071\117\105')cr.AlwaysOnTop=true cr.Size=UDim2.
fromOffset(260,40)cr.StudsOffset=Vector3.new(0,5,0)cr.MaxDistance=2500 cr.
Adornee=co local cs=Instance.new('TextLabel')cs.BackgroundTransparency=1 cs.Size
=UDim2.fromScale(1,1)cs.Font=Enum.Font.SourceSansBold cs.TextSize=14 cs.
TextStrokeTransparency=0.3 cs.TextColor3=Color3.new(1,1,1)cs.Parent=cr cr.Parent
=cl cq={gui=cr,label=cs}cm[cp]=cq return cq end task.spawn(function()while k.
alive do pcall(function()local co={}local cp=r[n.EspMinRarity]or 1 if n.EspEggs
then for cq,cr in ipairs(aT())do local cs=cr.inst if aV(cs)then local ct=aU(cs)
if(r[ct.rarity]or 0)>=cp then local cu=cs:IsA('\066\097\115\101\080\097\114\116')and cs or cs:
FindFirstChildWhichIsA('\066\097\115\101\080\097\114\116',true)if cu then co[cs]=true local cv=cn(cu,cs)
cv.label.Text=('%s  [%s]\n%s / %s HP  \u{b7}  %s kg'):format(ct.name,ct.rarity,
t(ct.hp),t(ct.maxHp),t(ct.kg))cv.label.TextColor3=s[ct.rarity]or Color3.new(1,1,
1)end end end end end if n.EspPickups then local cq=d:FindFirstChild(
'\065\110\105\109\097\108\080\105\099\107\117\112\115')local cr=H()for cs,ct in ipairs(cq and cq:GetChildren()or{})do
local cu=ct:GetAttribute('\082\097\114\105\116\121')or'?'if(r[cu]or 0)>=cp then local cv=ct:
FindFirstChild('\082\111\111\116\080\097\114\116')or ct:FindFirstChildWhichIsA('\066\097\115\101\080\097\114\116')if cv then co[
ct]=true local cw=cn(cv,ct)local cx=tonumber(ct:GetAttribute(
'DespawnAtServerTime'))local cy,cz=be(ct)cw.label.Text=(
'\037\115\032\032\091\037\115\093\032\032\037\115\032\107\103\n\037\115\047\115\037\115\032\032\037\115'):format(ct:GetAttribute('\065\110\105\109\097\108\078\097\109\101')or ct.Name,cu
,t(tonumber(ct:GetAttribute('WeightKg'))or 0),cy and t(cy)or'\063',cz and'\043'or'',cx
and('\u{b7}\032\100\101\115\112\097\119\110\032\105\110\032'..ck(cx-cr))or'')cw.label.TextColor3=s[cu]or Color3.new(
1,1,1)end end end end for cq,cr in pairs(cm)do if not co[cq]then cr.gui:Destroy(
)cm[cq]=nil end end end)task.wait(0.5)end end)local co function k.stop()k.alive=
false Y(false)aZ()ai()an()for cp,cq in ipairs(k.conns)do pcall(function()cq:
Disconnect()end)end pcall(function()cl:Destroy()end)pcall(function()local cp=a.
ChloeX_Instance if type(cp)=='table'and type(cp.DestroyGui)=='\102\117\110\099\116\105\111\110'then cp:
DestroyGui()end end)end local function cp()local cq,cr,cs={},{},{}local ct={}
local function cu(cv,cw)if type(cw)=='\115\116\114\105\110\103'and cw~=''and not ct[cv][cw]then ct
[cv][cw]=true cv[#cv+1]=cw end end ct[cq],ct[cr],ct[cs]={},{},{}pcall(function()
for cv,cw in ipairs({'\069\103\103\115','\065\110\105\109\097\108\105\115\116\105\099\069\103\103\115'})do local cx=c:FindFirstChild(cw)
for cy,cz in ipairs(cx and cx:GetChildren()or{})do if cz:IsA('Model')then cu(cq,
cz.Name)end if cz:IsA('\070\111\108\100\101\114')then for cA,cB in ipairs(cz:GetChildren())do if
cB:IsA('\077\111\100\101\108')then cu(cq,cB.Name)end end end end end for cv,cw in ipairs(aT())
do cu(cq,aU(cw.inst).name)end end)pcall(function()local cv=c.Animals:
FindFirstChild('Normal')for cw,cx in ipairs(cv and cv:GetChildren()or{})do cu(cr
,cx.Name)end end)pcall(function()for cv,cw in ipairs(aO():GetChildren())do if cw
.Name:match('\094\090\111\110\101\037\100\043\036')then cu(cs,cw.Name)end end end)pcall(function()for cv,cw
in ipairs(at())do cu(cs,cw.id)end end)table.sort(cq)table.sort(cr)table.sort(cs,
function(cv,cw)local cx,cy=tonumber(cv:match('\037\100\043')),tonumber(cw:match('%d+'))if
cx and cy then return cx<cy end return cv<cw end)return cq,cr,cs end local 
function cq()pcall(function()local cr=a.ChloeX_Instance if type(cr)=='\116\097\098\108\101'and
type(cr.DestroyGui)=='\102\117\110\099\116\105\111\110'then cr:DestroyGui()end end)local cr,cs=pcall(
function()return loadstring(game:HttpGet(a.SenaLibUrl or
'https://senahub.xyz/libsenak3'))()end)if not cr or type(cs)~='\116\097\098\108\101'then warn(
[[[BeeBSE] UI library failed to load, automation still runs with default settings]]
)return end L=cs pcall(function()L:SetDonator(true)end)co=L:Window({Title=
'\066\101\101\032\124',Footer='Break and Steal an Egg',Folder='\066\101\101\066\083\069',Version=1,Color=Color3.
fromRGB(142,142,147),Image='\104\116\116\112\115\058\047\047\115\101\110\097\104\117\098\046\120\121\122\047\097\112\105\047\118\105\115\117\097\108\047\115\101\110\097\095\098\103\050\046\106\112\103',
ThemeDim=0.15,OpenFirstSection=false,ImageSize=56,ConfigGroup='App',
ConfigLayoutOrder=31,RowTransparency=0.3,KeyGate=false,Keyless=true,
CompactSidebar=false})local ct,cu,cv=cp()local function cw(cx)return function(
...)local cy,cz=pcall(cx,...)if not cy then warn('\091\066\101\101\066\083\069\093\032\085\073\058\032'..tostring(cz))
end end end local cx=co:AddTab({Name='\072\111\109\101',Icon='home',LayoutOrder=1,Group=
'\077\097\105\110'})local cy=co:AddTab({Name='\070\097\114\109',Icon='pickaxe',LayoutOrder=2,Group=
'\077\097\105\110'})local cz=co:AddTab({Name='\065\117\116\111',Icon='zap',LayoutOrder=3,Group='\077\097\105\110'})
local cA=co:AddTab({Name='\086\105\115\117\097\108',Icon='eye',LayoutOrder=4,Group='\077\097\105\110'})local
cB=co:AddTab({Name='\083\101\116\116\105\110\103\115',Icon='settings',LayoutOrder=30,Group='\065\112\112'})local
cC=cx:AddSection({Title='\083\116\097\116\117\115'})local cD=cC:AddParagraph({Title='Live',Content
='\076\111\097\100\105\110\103\046\046\046'})task.spawn(function()local cE,cF=nil,os.clock()while k.alive do
pcall(function()local cG=G()local cH=os.clock()local cI=0 if cG and cE then
local cJ=Vector3.new(cG.Position.X-cE.X,0,cG.Position.Z-cE.Z).Magnitude cI=cJ/
math.max(cH-cF,0.05)end cE,cF=cG and cG.Position or nil,cH local cJ=i:
GetAttribute('\067\097\114\114\121\105\110\103')local cK=(S()>0 and type(cJ)=='string'and cJ~='')and(
'\037\115\032\091\037\115\044\032\037\115\032\107\103\093'):format(cJ,tostring(i:GetAttribute('CarryingRarity')or'\063'),t(i:
GetAttribute('\067\097\114\114\121\105\110\103\075\103')))or'nothing'local cL=H()local cM,cN=tonumber(d:
GetAttribute('\087\101\097\116\104\101\114\078\101\120\116\065\116')),tonumber(d:GetAttribute('\084\105\116\097\110\105\099\078\101\120\116\065\116'))local cO
={'Action: '..N.action,('\067\097\115\104\058\032\037\115\032\032\040\043\037\115\047\115\041\032\032\032\068\105\097\109\111\110\100\115\058\032\037\115'):format(t(i:
GetAttribute('\067\097\115\104')),t(i:GetAttribute('CashPerSecond')),t(i:GetAttribute(
'\068\105\097\109\111\110\100\115'))),('\083\112\101\101\100\032\080\111\119\101\114\058\032\037\115\032\032\032\080\105\099\107\097\120\101\032\084\105\101\114\058\032\037\115'):format(t(i:GetAttribute(
'SpeedPower')),tostring(i:GetAttribute('\080\105\099\107\097\120\101\084\105\101\114')or'\063')),(
'Carrying: %s   %d/%d'):format(cK,S(),T()),'\067\104\097\115\101\100\058\032'..(U()and'\089\069\083'or'no'),(
[[Broken: %d   Stolen: %d   Banked: %d   Dropped: %d   Lost: %d   Wrong picks dropped: %d]]
):format(N.broken,N.stolen,N.banked,N.dropped,N.lost or 0,N.wrongDropped),(
[[Run speed now: %.0f studs/s   WalkSpeed: %.0f   Eggs tracked: %d]]):format(cI,
F()and F().WalkSpeed or 0,#aT()),(
'\067\097\115\104\032\102\111\114\109\117\108\097\032\099\104\101\099\107\058\032\037\100\047\037\100\032\112\108\097\099\101\100\032\097\110\105\109\097\108\115\032\109\097\116\099\104'):format(bf.ok,bf.total),
'\077\105\110\032\067\097\115\104\047\115\058\032'..((n.StealMinCash or 0)>0 and t(n.StealMinCash)or'any')}if cM
then cO[#cO+1]=('\078\101\120\116\032\119\101\097\116\104\101\114\058\032\037\115\032\105\110\032\037\115'):format(tostring(d:GetAttribute(
'\087\101\097\116\104\101\114\078\101\120\116\073\100')or'?'),ck(cM-cL))end if cN then local cP=cN-cL cO[#cO+1]=
'\078\101\120\116\032\084\105\116\097\110\105\099\032\069\103\103\032\105\110\032'..ck(cP)if n.NotifyTitanic and cP>0 and cP<60 and ci~=cN
then ci=cN M('\084\105\116\097\110\105\099\032\069\103\103','A Titanic Egg spawns in under a minute.',6)end end
cD:SetContent(table.concat(cO,'\n'))end)task.wait(1)end end)local cE=cy:
AddSection({Title='\065\117\116\111\032\066\114\101\097\107\032\069\103\103'})cE:AddToggle({Title='Auto Break Egg',Content
=
[[Goes to the best egg that matches the filter and swings your pickaxe until it breaks.]]
,Default=false,Callback=cw(function(cF)n.AutoBreak=cF==true cb()end)})cE:
AddDropdown({Title='\072\105\116\032\077\101\116\104\111\100',Content=
[[Auto tries Tool Activate first and switches to Virtual Click if the egg takes no damage.]]
,Options={'\065\117\116\111','Tool Activate','\086\105\114\116\117\097\108\032\067\108\105\099\107'},Multi=false,Default='\065\117\116\111',
Callback=cw(function(cF)n.HitMethod=D(cF)or'Auto'bY=1 end)})cE:AddDropdown({
Title='\066\114\101\097\107\032\077\111\118\101',Content=
[[Tween (fast) = glide to the egg at your WalkSpeed, like the first version. Walk (safe) = really walk there (slower).]]
,Options={'\084\119\101\101\110\032\040\102\097\115\116\041','Walk (safe)'},Multi=false,Default='\084\119\101\101\110\032\040\102\097\115\116\041',
Callback=cw(function(cF)n.BreakMove=D(cF)or'\084\119\101\101\110\032\040\102\097\115\116\041'end)})cE:AddToggle({
Title='Pass Through Egg',Content=
[[Stands in the middle of the egg you are breaking (its collision is turned off on your screen only). Off = stand next to the egg.]]
,Default=true,Callback=cw(function(cF)n.PassThroughEgg=cF==true if not n.
PassThroughEgg then aZ()end end)})cE:AddDropdown({Title='\066\114\101\097\107\032\080\114\105\111\114\105\116\121',Options
={'\066\101\115\116\032\082\097\114\105\116\121','Heaviest','\078\101\097\114\101\115\116'},Multi=false,Default='\066\101\115\116\032\082\097\114\105\116\121',Callback
=cw(function(cF)n.BreakPriority=D(cF)or'Best Rarity'end)})cE:AddDropdown({Title=
'\069\103\103\032\082\097\114\105\116\121',Content='\079\110\108\121\032\098\114\101\097\107\032\116\104\101\115\101\032\114\097\114\105\116\105\101\115\046\032\069\109\112\116\121\032\061\032\097\110\121\046',Options=q,Multi=
true,Default={},Callback=cw(function(cF)n.BreakRarities=C(cF)end)})cE:
AddDropdown({Title='Egg Name',Content='\079\110\108\121\032\098\114\101\097\107\032\116\104\101\115\101\032\101\103\103\115\046\032\069\109\112\116\121\032\061\032\097\110\121\046',
Options=ct,Multi=true,Default={},Callback=cw(function(cF)n.BreakNames=C(cF)end)}
)cE:AddDropdown({Title='\090\111\110\101\115',Content=
'Only break eggs in these zones. Empty = any.',Options=cv,Multi=true,Default={},
Callback=cw(function(cF)n.BreakZones=C(cF)end)})cE:AddInput({Title=
'\077\105\110\032\069\103\103\032\087\101\105\103\104\116',Content='\077\105\110\105\109\117\109\032\101\103\103\032\119\101\105\103\104\116\032\105\110\032\107\103\046\032\083\117\112\112\111\114\116\115\032\107\032\097\110\100\032\109\046',
Placeholder='e.g. 500',Default='',Callback=cw(function(cF)n.BreakMinKg=u(cF)end)
})local cF=cy:AddSection({Title='\065\117\116\111\032\083\116\101\097\108'})b8=cF:AddToggle({Title=
'Auto Steal',Content=
[[Picks up hatched animals that match the filter and banks them at your plot. With Auto Break on, Min Cash/s must be set: it keeps breaking and only steals animals worth at least that much.]]
,Default=false,Callback=cw(function(cG)n.AutoSteal=cG==true if not n.AutoSteal
then aG=nil end cb()end)})cF:AddDropdown({Title='\083\116\101\097\108\032\077\111\118\101',Content=
[[Walk (safe) = really walks there; the anti-cheat can't flag it. Fast (risky) = short jumps + flying, can get you pulled back or exploded. Animals that despawn before you can arrive are skipped.]]
,Options={'\087\097\108\107\032\040\115\097\102\101\041','Fast (risky)','\085\115\101\032\077\111\118\101\109\101\110\116\032\083\101\116\116\105\110\103'},Multi=false,
Default='\087\097\108\107\032\040\115\097\102\101\041',Callback=cw(function(cG)n.StealMove=D(cG)or'Walk (safe)'
end)})cF:AddDropdown({Title='\083\116\101\097\108\032\080\114\105\111\114\105\116\121',Content=
[[Highest Cash/s = the animal that earns the most once placed (same formula as the game).]]
,Options={'\072\105\103\104\101\115\116\032\067\097\115\104\047\115','Best Rarity','\072\101\097\118\105\101\115\116','\078\101\097\114\101\115\116'},Multi=false,
Default='Highest Cash/s',Callback=cw(function(cG)n.StealPriority=D(cG)or
'\072\105\103\104\101\115\116\032\067\097\115\104\047\115'end)})local cG=0 local function cH(cI)b9=os.clock()cG+=1 local
cJ=cG task.delay(1.2,function()if cJ~=cG or not k.alive then return end if cI
then M('\077\105\110\032\067\097\115\104\047\115',
[[Type a number only (e.g. 500 or 1.5). Pick K / M / B / T / Qa in 'Min Cash/s Unit'.]]
,6)return end p()if cb()then return end if n.StealMinCash>0 then M('Min Cash/s',
('\083\101\116\032\116\111\032\037\115\032\040\037\115\047\115\041\046\032\065\110\105\109\097\108\115\032\098\101\108\111\119\032\105\116\032\097\114\101\032\115\107\105\112\112\101\100\046'):format(t(n.StealMinCash),A(n
.StealMinCash)),5)else M('\077\105\110\032\067\097\115\104\047\115','Off: any animal can be stolen.',4)end end
)end local cI=tonumber(n.StealMinCashNum)or 0 cF:AddInput({Title='\077\105\110\032\067\097\115\104\047\115',
Content=
[[Number only, e.g. 500 or 1.5. Choose the unit in 'Min Cash/s Unit' below (500 + B = 500B/s). Empty or 0 = any animal. Animals with unknown Cash/s (?) are skipped while this is set.]]
,Placeholder='\101\046\103\046\032\053\048\048',Default=cI>0 and tostring(cI)or'',Callback=cw(function(
cJ)local cK,cL=y(cJ)if cL then cH(true)return end if cK==n.StealMinCashNum then
return end n.StealMinCashNum=cK x()cH(false)end)})cF:AddDropdown({Title=
'\077\105\110\032\067\097\115\104\047\115\032\085\110\105\116',Content=
[[K = thousand, M = million, B = billion, T = trillion, Qa = quadrillion. None = the number as it is.]]
,Options=v,Multi=false,Default=n.StealMinCashUnit,Callback=cw(function(cJ)local
cK=D(cJ)if not w[cK or'']then cK='None'end if cK==n.StealMinCashUnit then return
end n.StealMinCashUnit=cK x()cH(false)end)})cF:AddDropdown({Title=
'\065\110\105\109\097\108\032\082\097\114\105\116\121',Content='\079\110\108\121\032\115\116\101\097\108\032\116\104\101\115\101\032\114\097\114\105\116\105\101\115\046\032\069\109\112\116\121\032\061\032\097\110\121\046',Options=q,
Multi=true,Default={},Callback=cw(function(cJ)n.StealRarities=C(cJ)end)})cF:
AddDropdown({Title='Animal Name',Content=
'\079\110\108\121\032\115\116\101\097\108\032\116\104\101\115\101\032\097\110\105\109\097\108\115\046\032\069\109\112\116\121\032\061\032\097\110\121\046',Options=cu,Multi=true,Default={},
Callback=cw(function(cJ)n.StealNames=C(cJ)end)})cF:AddDropdown({Title=
'\083\116\101\097\108\032\090\111\110\101\115',Content=
[[Only steal animals dropped in these zones. Empty = any zone.]],Options=cv,
Multi=true,Default={},Callback=cw(function(cJ)n.StealZones=C(cJ)end)})cF:
AddToggle({Title='Wait In Zone',Content=
[[When there is nothing to break or steal, walk to the selected zone (Break Zones first, then Steal Zones; lowest number if several) and wait there.]]
,Default=true,Callback=cw(function(cJ)n.StealWaitInZone=cJ==true end)})cF:
AddToggle({Title='\071\111\032\084\111\032\083\116\101\097\108\032\090\111\110\101\032\070\105\114\115\116',Content=
[[With Steal Zones selected: run into that zone first, then steal the animal with the best Cash/s there (Steal Priority). Off = steal from anywhere on the way.]]
,Default=true,Callback=cw(function(cJ)n.StealZoneFirst=cJ==true end)})cF:
AddInput({Title='\077\105\110\032\065\110\105\109\097\108\032\087\101\105\103\104\116',Content=
'Minimum weight in kg. Supports k and m.',Placeholder='\101\046\103\046\032\050\107',Default='',
Callback=cw(function(cJ)n.StealMinKg=u(cJ)end)})cF:AddDropdown({Title=
'After Steal',Content=
[[Bank At Home = carry it to your plot. Drop In Zone = carry it to the Drop Zone and drop it there.]]
,Options={'\066\097\110\107\032\065\116\032\072\111\109\101','\068\114\111\112\032\073\110\032\090\111\110\101'},Multi=false,Default='Bank At Home',
Callback=cw(function(cJ)n.AfterSteal=D(cJ)or'\066\097\110\107\032\065\116\032\072\111\109\101'end)})cF:AddDropdown({
Title='\068\114\111\112\032\090\111\110\101',Content=
'Where to drop the animal when After Steal is Drop In Zone.',Options=cv,Multi=
false,Default=nil,Callback=cw(function(cJ)n.DropZone=D(cJ)end)})cF:AddButton({
Title='\083\101\116\032\068\114\111\112\032\080\111\105\110\116\032\072\101\114\101',Content=
[[Use your current position as the exact drop spot (overrides Drop Zone). Saved for next time.]]
,Callback=cw(function()local cJ=G()if not cJ then return end n.DropPoint={cJ.
CFrame:GetComponents()}p()M('\068\114\111\112','Drop point saved.')end)})cF:AddButton({Title
='\067\108\101\097\114\032\068\114\111\112\032\080\111\105\110\116',Content='\071\111\032\098\097\099\107\032\116\111\032\117\115\105\110\103\032\116\104\101\032\068\114\111\112\032\090\111\110\101\046',Callback=cw(
function()n.DropPoint=nil p()M('Drop','\068\114\111\112\032\112\111\105\110\116\032\099\108\101\097\114\101\100\044\032\117\115\105\110\103\032\116\104\101\032\068\114\111\112\032\090\111\110\101\046'
)end)})cF:AddButton({Title='\083\101\116\032\066\097\110\107\032\080\111\105\110\116\032\072\101\114\101',Content=
[[Stand at the spot in your plot where banking works, then press this. Saved for next time.]]
,Callback=cw(function()local cJ,cK=V(),G()if not(cJ and cK)then M('Bank',
'\080\108\111\116\032\111\114\032\099\104\097\114\097\099\116\101\114\032\110\111\116\032\102\111\117\110\100\046')return end n.BankOffset={cJ:GetPivot():
ToObjectSpace(cK.CFrame):GetComponents()}p()M('\066\097\110\107','Bank point saved.')end)})
cF:AddButton({Title='\067\108\101\097\114\032\066\097\110\107\032\080\111\105\110\116',Content=
[[Forget the saved bank point. Bank At Home then walks into the Safe Zone next to your plot.]]
,Callback=cw(function()n.BankOffset=nil p()M('\066\097\110\107',
'Bank point cleared, using the Safe Zone.')end)})local cJ=cy:AddSection({Title=
'\077\111\118\101\109\101\110\116'})cJ:AddDropdown({Title='\077\111\118\101\032\077\111\100\101',Content=
[[Walk = real walking (safe). Tween = flying, the anti-cheat calls it FLY and explodes you. Teleport = pulled back by the anti-cheat.]]
,Options={'Walk','\084\119\101\101\110','\084\101\108\101\112\111\114\116'},Multi=false,Default='Walk',Callback=cw(
function(cK)n.MoveMode=D(cK)or'\087\097\108\107'end)})cJ:AddDropdown({Title='\087\097\108\107\032\073\110\112\117\116',
Content=
[[Move = steers you the same way your keys do (Humanoid:Move every frame), real game speed. Velocity = Move + pushes you at WalkSpeed. Keyboard = presses W/A/S/D. MoveTo = Roblox auto-walk. Check 'Run speed now' on Home.]]
,Options={'Move','\086\101\108\111\099\105\116\121','\075\101\121\098\111\097\114\100','MoveTo'},Multi=false,Default='\077\111\118\101',
Callback=cw(function(cK)n.WalkInput=D(cK)or'\077\111\118\101'end)})cJ:AddToggle({Title=
'Avoid Guards',Content=
[[While carrying a stolen animal: swerve around a guard of the zone it came from only when that guard is IN FRONT of you on your way. A guard behind you (chasing) is ignored, you just run home. Long trips always run down the middle of the zones.]]
,Default=true,Callback=cw(function(cK)n.AvoidGuards=cK==true end)})cJ:AddSlider(
{Title='\084\119\101\101\110\032\083\112\101\101\100\032\077\117\108\116\105\112\108\105\101\114',Content=
'\049\032\061\032\121\111\117\114\032\119\097\108\107\032\115\112\101\101\100\046\032\072\105\103\104\101\114\032\105\115\032\102\097\115\116\101\114\032\098\117\116\032\101\097\115\105\101\114\032\116\111\032\100\101\116\101\099\116\046',Min=1,Max=5,
Default=1,Increment=0.5,Callback=cw(function(cK)n.TweenMult=tonumber(cK)or 1 end
)})local cK=cz:AddSection({Title='Automation'})local cL={{'\065\117\116\111\069\113\117\105\112\066\101\115\116',
'\065\117\116\111\032\069\113\117\105\112\032\066\101\115\116\032\080\101\116\115','Presses Equip Best every 30s.'},{'\065\117\116\111\085\112\103\114\097\100\101\080\108\111\116',
'\065\117\116\111\032\085\112\103\114\097\100\101\032\080\108\111\116','Buys the next plot upgrade when you can afford it.'},{
'\065\117\116\111\085\112\103\114\097\100\101\084\114\101\097\100\109\105\108\108','\065\117\116\111\032\085\112\103\114\097\100\101\032\084\114\101\097\100\109\105\108\108',
'Buys the next treadmill upgrade when you can afford it.'},{'\065\117\116\111\066\117\121\080\105\099\107\097\120\101',
'\065\117\116\111\032\066\117\121\032\066\101\115\116\032\080\105\099\107\097\120\101',
'Buys the next pickaxe tier and equips the best one you own.'},{'\065\117\116\111\067\108\097\105\109\073\110\100\101\120'
,'\065\117\116\111\032\067\108\097\105\109\032\073\110\100\101\120','Claims every ready Index reward every 30s.'},{
'\065\117\116\111\067\108\097\105\109\079\102\102\108\105\110\101','\065\117\116\111\032\067\108\097\105\109\032\079\102\102\108\105\110\101\032\082\101\119\097\114\100','Claims the free offline cash.'}}
for cM,cN in ipairs(cL)do local cO=cN[1]cK:AddToggle({Title=cN[2],Content=cN[3],
Default=n[cO]==true,Callback=cw(function(cP)n[cO]=cP==true end)})end local cM=cz
:AddSection({Title='\077\105\115\099'})cM:AddToggle({Title='\065\110\116\105\032\065\070\075',Content=
'Stops Roblox from kicking you for being idle.',Default=true,Callback=cw(
function(cN)n.AntiAfk=cN==true end)})cM:AddButton({Title='\077\111\117\110\116\032\082\105\100\101',Content=
'\077\111\117\110\116\115\032\121\111\117\114\032\115\101\108\101\099\116\101\100\032\114\105\100\101\046',Callback=cw(function()K('RideRemote','\077\111\117\110\116',i:
GetAttribute('\083\101\108\101\099\116\101\100\082\105\100\101\097\098\108\101'))end)})cM:AddButton({Title='Drop Carried Animal'
,Content='\068\114\111\112\115\032\119\104\097\116\032\121\111\117\032\097\114\101\032\099\097\114\114\121\105\110\103\046',Callback=cw(function()O=os.clock()K(
'\068\114\111\112\067\097\114\114\105\101\100\082\101\109\111\116\101')end)})local cN=cA:AddSection({Title='ESP'})cN:AddToggle({
Title='\069\103\103\032\069\083\080',Content='\083\104\111\119\115\032\110\097\109\101\044\032\114\097\114\105\116\121\044\032\072\080\032\097\110\100\032\119\101\105\103\104\116\032\097\098\111\118\101\032\101\118\101\114\121\032\101\103\103\046',
Default=false,Callback=cw(function(cO)n.EspEggs=cO==true end)})cN:AddToggle({
Title='Pickup ESP',Content=
'\083\104\111\119\115\032\104\097\116\099\104\101\100\032\097\110\105\109\097\108\115\032\111\110\032\116\104\101\032\103\114\111\117\110\100\032\097\110\100\032\119\104\101\110\032\116\104\101\121\032\100\101\115\112\097\119\110\046',Default=false,
Callback=cw(function(cO)n.EspPickups=cO==true end)})cN:AddDropdown({Title=
'\069\083\080\032\077\105\110\032\082\097\114\105\116\121',Options=q,Multi=false,Default='Common',Callback=cw(function(cO)
n.EspMinRarity=D(cO)or'\067\111\109\109\111\110'end)})local cO=cA:AddSection({Title=
'\078\111\116\105\102\105\099\097\116\105\111\110\115'})cO:AddToggle({Title='Guard Chase Alert',Default=true,Callback=
cw(function(cP)n.NotifyChased=cP==true end)})cO:AddToggle({Title=
'\084\105\116\097\110\105\099\032\069\103\103\032\065\108\101\114\116',Default=true,Callback=cw(function(cP)n.NotifyTitanic=cP==
true end)})local cP=cB:AddSection({Title='\083\097\102\101\116\121'})cP:AddToggle({Title=
'Pause When Flagged',Content=
'\083\116\111\112\115\032\101\118\101\114\121\116\104\105\110\103\032\105\102\032\116\104\101\032\103\097\109\101\032\112\117\116\115\032\067\104\101\097\116\101\114\077\111\100\101\032\111\110\032\121\111\117\046',Default=true,Callback=
cw(function(cQ)n.PauseOnFlag=cQ==true ch()end)})cP:AddToggle({Title='\068\101\098\117\103\032\076\111\103',
Content=
[[Writes steal steps, server events (catch, fling, notify) and your attribute changes to F9.]]
,Default=true,Callback=cw(function(cQ)n.DebugLog=cQ==true end)})cP:AddButton({
Title='Unload Script',Content='\083\116\111\112\115\032\101\118\101\114\121\032\108\111\111\112\032\097\110\100\032\114\101\109\111\118\101\115\032\116\104\101\032\085\073\032\097\110\100\032\069\083\080\046',
Callback=cw(function()k.stop()end)})M('\066\101\101','Loaded for Break and Steal an Egg.'
,4)end task.spawn(function()local cr,cs=pcall(cq)if not cr then warn(
'\091\066\101\101\066\083\069\093\032\085\073\032\101\114\114\111\114\058\032'..tostring(cs))end end)print(
[[[BeeBSE] loaded (v20: recover knocked-out pet, Break+Steal needs Min Cash/s)]]
)
