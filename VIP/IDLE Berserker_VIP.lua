



target = gg.getTargetInfo()

if (not target) then
    gg.alert("Failed to get target info.")
    do return end
end

if (not target.x64) then
    gg.alert("This script is not compatible with 32-bit.")
    do return end
end

--███████████████████████
Package = "com.cookapps.berserkidle"
appName = "IDLE Berserker"
packageName = gg.getTargetPackage()
v=gg.getTargetInfo()
if v.processName~=Package then
        gg.alert("========================\nScript by ⊹иσιcε⊹\nYoutube = ⊹иσιcε⊹\n========================\n       ✧ This Script For ✧\nGame = "..appName.."\n========================\n       ✧ You Selected ✧\nGame = "..v.label.."\nVersion = ["..v.versionName.."]\n========================")
    os.exit()
end
--███████████████████████

local file_path = gg.EXT_FILES_DIR .. "/XnyzX.lua"
local file = io.open(file_path, "r")
if not file then
   io.open(file_path, "w+"):close()
else
   file:close()
   dofile(file_path)
end

gg.setVisible(false)
arch = gg.getTargetInfo()
Il2cpp()
gg.setVisible(true)


v=gg.getTargetInfo()
if v.x64 then vbit="x64" else vbit="x32" end
---------------------------------------------------------------------
secondmethod=0
allocpage=gg.allocatePage(7)
    if allocpage==nil or #(tostring(allocpage))==0 or type(allocpage)~="number" then
        y={} 
            for i, v in ipairs(gg.getRangesList()) do
                if v.state=="O" and v.type=="rw-p" then 
                c=0
                    for a=1,15 do 
                    y[a]={}
                    y[a].address=v["end"]-c
                    y[a].flags=4      
                    c=c+4 
                    end
                z=0
                x=gg.getValues(y) 
                    for a=1,15 do
                        if x[a].value~=0 then
                            z=1
                        end
                    end 
                    if z==0 then 
                        allocpage=x[5].address
                        secondmethod=1 
                        break 
                    end
                end            
            end 
            if secondmethod==0 then 
                gg.clearResults()
                gg.setRanges(gg.REGION_CODE_APP) 
                gg.searchNumber("0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0::77",4) 
                    if gg.getResultsCount()==0 then
                    gg.setVisible(true) 
                    os.exit()
                    return
                   end 
                allocpage=gg.getResults(1,10) 
                allocpage=allocpage[1].address 
                gg.getResults(gg.getResultsCount())
                gg.clearResults() 
            end 
        end 
gg.setVisible(true)  
AP={} o=0
INTX={}
INTX[1]={}
INTX[1].address=allocpage
INTX[1].flags=4
INTX=gg.getValues(INTX) 
FLOATX={} 
FLOATX[1]={}
FLOATX[1].address=allocpage
FLOATX[1].flags=16
FLOATX=gg.getValues(FLOATX) 
DOUBLEX={} 
DOUBLEX[1]={}
DOUBLEX[1].address=allocpage
DOUBLEX[1].flags=64
DOUBLEX=gg.getValues(DOUBLEX) 
    for i = 1,4 do 
    AP[i]={}
    AP[i].address=allocpage+o
    AP[i].flags=2
    o=o+2
    end
AP=gg.getValues(AP) 
o=nil 

---------------------------------------------------------------------
--███████████████████████
-- APEXKEY 
if v.x64 then
    xtrue="h200080D2"
    xfalse="h000080D2"
    xEND="hC0035FD6"
    xMOVKX0="h000080F2" -- E,Q
    xMOVKX016="h0000A0F2"  -- E,Q
    xMOVKX032="h0000C0F2"  -- E,Q
    xMOVKX048="h0000E0F2" 
    xMOVZX048="h0000E0D2" 
    xMOVW0="h00008052"  -- I,F
    xMOVKW0="h00008072"   -- I,F 
    xMOVKW016="h0000A072"
    xMOVX0=xfalse -- F,Q 
    xFMOVS0W0="1E270000h" 
    xFMOVD0X0="h0000679E"
    xMOVZX0="h000080D2"

else
    xtrue="h0100A0E3"
    xfalse="h0000A0E3"
    xEND="h1EFF2FE1"
end 

on = "[ ON ]"
off = "[ OFF ]"

NZ1 = off
NZ2 = off
NZ3 = off
NZ4 = off

function main()
menu = gg.choice({ 
        "🔸Bypass🔸",  --1
        "🔹Free Shop🔹",  --2
        "[++++]🔸Damage Multiplier🔸", --5
        "[++++]🔹Attack Speed Multiplier🔹", --6
        "[++++]🔸Move Speed Multiplier🔸", --6
        "Exit"}, --7
         nil, 
        "✧ IDLE Berserker VIP ✧\n✧ YouTube ⊹иσιcε⊹ ✧")
        
if menu == nil then return end
            
if menu == 1 then
BYPASS()
end

if menu == 2 then
FREESHOP()
end

if menu ==  3 then
DAMAGE()
end

if menu ==  4 then
ATTACKSPEED()
end

if menu ==  5 then
MOVESPEED()
end

if menu == 6 then
exit = string.format("======================\nScript by ⊹иσιcε⊹\n\nYoutube = ⊹иσιcε⊹\n\nGame = %s\n\nVersion = [%s]\n======================",  appName,  v.versionName)
  print(exit)
gg.clearResults()
  gg.clearList()
  gg.setVisible(true)
  os.exit()
end
end

--=======================================
function BYPASS()
valueMethod("InitDetectCheat")
Pass()

valueMethod("OnObscuredTypeCheatingDetected")
Pass()

valueMethod("OnCheatDetected")
Pass()

valueMethod("OCCURRED_CHEAT")
Pass()

valueMethod("get_CheatingDetected")
Pass()

valueMethod("get_IsCheatDetected")
Pass()

valueMethod("OnCheatingDetected")
Pass()

valueMethod("get_IsCheckingForCheat")
Pass()

valueMethod("get_IsBanned")
Pass()

valueMethod("get_BannedMsg")
Pass()

valueMethod("ToBanned")
Pass()

gg.toast("🔸Bypass Succes🔸")
end

function Pass()
c=nil cc=nil 
EDIT0=nil EDIT0={}
        c=0 cc=0 
            for i, v in ipairs(load) do
                c=c+1
                EDIT0[c]={}
                EDIT0[c].address=load[i].address
                EDIT0[c].value='D2800000h'
                EDIT0[c].flags=4
                c=c+1
                EDIT0[c]={}
                EDIT0[c].address=load[i].address+4
                EDIT0[c].value='D65F03C0h' 
                EDIT0[c].flags=4
                cc=cc+1 
            end
            gg.setValues(EDIT0)
            gg.clearResults()
end

--=======================================
function FREESHOP()
gg.clearResults()
gg.clearList()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("h01000000B0AD010001000000", 1)
gg.setVisible(false)
gg.refineNumber("1", 1)
t=4 o=0x4 offset()
gg.refineNumber("110000", 4)
t=4 o=-0x30 offset()
gg.refineNumber("4", 4)
t=32 o=-0x40 offset()
starttt = gg.getResults(1)
gg.clearResults()
gg.searchNumber(starttt[1].value , 32)
gg.setVisible(false)
t=4 o=0x44 offset()
gg.refineNumber("0~10", 4)
kkk = gg.getResults(gg.getResultsCount())
gg.addListItems(kkk)
kkk = gg.getListItems()
for i, v in ipairs(kkk) do
	if v.flags == 4 then
		v.value = "3"
		v.freeze = true
		v.freezeType = gg.FREEZE_NORMAL
	end
end
gg.addListItems(kkk)
gg.clearResults()
gg.clearList()

gg.toast("🔸Free Shop Succes🔸")
end

--=======================================
function DAMAGE()
if dmg ~= nil then gg.setValues(dmg) gg.toast("🔸Damage Original ✓") end
  noice1 = gg.prompt({
     "🔸Input The Value You Want🔸"},  -- 17
    {[1]=Nyz1},
    {[1]="number"})

if noice1==nil then return end

NyzDOUBLE=tonumber(noice1[1])
Nyz1=tonumber(noice1[1])
if noice1[1] then isOffset=1  end
if noice1[1] then xDOUBLE_DMG() return end 
end

--=======================================
function ATTACKSPEED()
if atspd ~= nil then gg.setValues(atspd) gg.toast("🔸Attack Speed Original ✓") end
  noice2 = gg.prompt({
    "🔸Attack Speed🔸[2; 100]"}, 
    {[1]=Nyz2},
    {[1]="number"})

if noice2 == nil then return end

NyzDOUBLE=tonumber(noice2[1])
Nyz2=tonumber(noice2[1])
if noice2[1] then isOffset=1  end
if noice2[1] then xDOUBLE_ATTSPD() return end 
end

--=======================================
function MOVESPEED()
if mspd ~= nil then gg.setValues(mspd) gg.toast("🔸Move Speed Original ✓") end
  noice3 = gg.prompt({
    "🔸Move Speed🔸[2; 50]"}, 
    {[1]=Nyz3},
    {[1]="number"})

if noice3 == nil then return end

NyzDOUBLE=tonumber(noice3[1])
Nyz3=tonumber(noice3[1])
if noice3[1] then isOffset=1  end
if noice3[1] then xDOUBLE_MOSPD() return end 
end

--█████████████████████████████████████
function xDOUBLE_DMG()
min = 0
number = tonumber(NyzDOUBLE)
    if number == nil then    
         gg.alert('Input Was Not A Valid Number')  
     main() return  
end  
    if number < min  then
         gg.alert('⚠ ︎ERROR ⚠\nYou Input Value = '..NyzDOUBLE..'\nMin Value = 0\nMax Value = Infinity')   
     main() return
end

    NOICE_DOUBLE()
        if isOffset==1 then 
        
valueMethod("GetDamage")
gg.loadResults(load)
gg.refineNumber("D103C3FFh", 4)
load=nil load=gg.getResults(gg.getResultsCount())
gg.clearResults()
EDIT1=nil EDIT1={}
            gg.clearResults()
            for i, v in ipairs(load) do
                EDIT1[1]={} 
                EDIT1[1].address=load[i].address
                EDIT1[1].flags=4
                gg.loadResults(EDIT1) 
                dmg = gg.getResults(gg.getResultsCount())
                EDIT1[1].value=x1
                EDIT1[2]={} 
                EDIT1[2].address=load[i].address+4
                EDIT1[2].flags=4
                gg.loadResults(EDIT1) 
                dmg = gg.getResults(gg.getResultsCount())
                EDIT1[2].value=x2
                EDIT1[3]={} 
                EDIT1[3].address=load[i].address+8
                EDIT1[3].flags=4
                gg.loadResults(EDIT1) 
                dmg = gg.getResults(gg.getResultsCount())
                EDIT1[3].value=x3
                EDIT1[4]={} 
                EDIT1[4].address=load[i].address+12
                EDIT1[4].flags=4
                gg.loadResults(EDIT1) 
                dmg = gg.getResults(gg.getResultsCount())
                EDIT1[4].value=x4
                EDIT1[5]={} 
                EDIT1[5].address=load[i].address+16
                EDIT1[5].flags=4
                gg.loadResults(EDIT1) 
                dmg = gg.getResults(gg.getResultsCount())
                EDIT1[5].value=x5
                EDIT1[6]={} 
                EDIT1[6].address=load[i].address+20
                EDIT1[6].flags=4
                gg.loadResults(EDIT1) 
                dmg = gg.getResults(gg.getResultsCount())
                EDIT1[6].value=x6
                end
            gg.setValues(EDIT1)
            gg.clearResults()
            gg.toast("🔸Damage = x"..noice1[1]) 
        end -- isOffset 1
end -- xDOUBLE() 
--█████████████████████████████████████
function xDOUBLE_ATTSPD()
min = 0
number = tonumber(NyzDOUBLE)
    if number == nil then    
         gg.alert('Input Was Not A Valid Number')  
     main() return  
end  
    if number < min  then
         gg.alert('⚠ ︎ERROR ⚠\nYou Input Value = '..NyzDOUBLE..'\nMin Value = 0\nMax Value = Infinity')   
     main() return
end

    NOICE_DOUBLE()
        if isOffset==1 then 
        
valueMethod("GetAttackSpeed")
gg.loadResults(load)
gg.refineNumber("D10143FFh", 4)
load=nil load=gg.getResults(gg.getResultsCount())
gg.clearResults()
EDIT2=nil EDIT2={}
            gg.clearResults()
            for i, v in ipairs(load) do
                EDIT2[1]={} 
                EDIT2[1].address=load[i].address
                EDIT2[1].flags=4
                gg.loadResults(EDIT2) 
                atspd = gg.getResults(gg.getResultsCount())
                EDIT2[1].value=x1
                EDIT2[2]={} 
                EDIT2[2].address=load[i].address+4
                EDIT2[2].flags=4
                gg.loadResults(EDIT2) 
                atspd = gg.getResults(gg.getResultsCount())
                EDIT2[2].value=x2
                EDIT2[3]={} 
                EDIT2[3].address=load[i].address+8
                EDIT2[3].flags=4
                gg.loadResults(EDIT2) 
                atspd = gg.getResults(gg.getResultsCount())
                EDIT2[3].value=x3
                EDIT2[4]={} 
                EDIT2[4].address=load[i].address+12
                EDIT2[4].flags=4
                gg.loadResults(EDIT2) 
                atspd = gg.getResults(gg.getResultsCount())
                EDIT2[4].value=x4
                EDIT2[5]={} 
                EDIT2[5].address=load[i].address+16
                EDIT2[5].flags=4
                gg.loadResults(EDIT2) 
                atspd = gg.getResults(gg.getResultsCount())
                EDIT2[5].value=x5
                EDIT2[6]={} 
                EDIT2[6].address=load[i].address+20
                EDIT2[6].flags=4
                gg.loadResults(EDIT2) 
                atspd = gg.getResults(gg.getResultsCount())
                EDIT2[6].value=x6
                end
            gg.setValues(EDIT2)
            gg.clearResults()
            gg.toast("🔸Attack Speed = x"..noice2[1]) 
        end -- isOffset 1
end -- xDOUBLE()
--█████████████████████████████████████
function xDOUBLE_MOSPD()
min = 0
number = tonumber(NyzDOUBLE)
    if number == nil then    
         gg.alert('Input Was Not A Valid Number')  
     main() return  
end  
    if number < min  then
         gg.alert('⚠ ︎ERROR ⚠\nYou Input Value = '..NyzDOUBLE..'\nMin Value = 0\nMax Value = Infinity')   
     main() return
end

    NOICE_DOUBLE()
        if isOffset==1 then 
        
valueMethod("GetMoveSpeed")
EDIT3=nil EDIT3={}
            gg.clearResults()
            for i, v in ipairs(load) do
                EDIT3[1]={} 
                EDIT3[1].address=load[i].address
                EDIT3[1].flags=4
                gg.loadResults(EDIT3) 
                mspd = gg.getResults(gg.getResultsCount())
                EDIT3[1].value=x1
                EDIT3[2]={} 
                EDIT3[2].address=load[i].address+4
                EDIT3[2].flags=4
                gg.loadResults(EDIT3) 
                mspd = gg.getResults(gg.getResultsCount())
                EDIT3[2].value=x2
                EDIT3[3]={} 
                EDIT3[3].address=load[i].address+8
                EDIT3[3].flags=4
                gg.loadResults(EDIT3) 
                mspd = gg.getResults(gg.getResultsCount())
                EDIT3[3].value=x3
                EDIT3[4]={} 
                EDIT3[4].address=load[i].address+12
                EDIT3[4].flags=4
                gg.loadResults(EDIT3) 
                mspd = gg.getResults(gg.getResultsCount())
                EDIT3[4].value=x4
                EDIT3[5]={} 
                EDIT3[5].address=load[i].address+16
                EDIT3[5].flags=4
                gg.loadResults(EDIT3) 
                mspd = gg.getResults(gg.getResultsCount())
                EDIT3[5].value=x5
                EDIT3[6]={} 
                EDIT3[6].address=load[i].address+20
                EDIT3[6].flags=4
                gg.loadResults(EDIT3) 
                mspd = gg.getResults(gg.getResultsCount())
                EDIT3[6].value=x6
                end
            gg.setValues(EDIT3)
            gg.clearResults()
            gg.toast("🔸Move Speed = x"..noice3[1]) 
        end -- isOffset 1
end -- xDOUBLE()
--█████████████████████████████████████
function NOICE_DOUBLE()
Edit_DOUBLE=nil Edit_DOUBLE={}
DOUBLEX[1].value=NyzDOUBLE
gg.setValues(DOUBLEX) 
gg.loadResults(AP) 
GET=gg.getResults(4) 
HEX={}

    if v.x64 then 
        for i ,v in ipairs(GET) do
            if GET[i].value<0 then 
                HEX[i]="-0x"..string.format("%X",tostring(GET[i].value*(-1)))
            else
                HEX[i]="0x"..string.format("%X",tostring(GET[i].value))
            end 
        end 

        if tonumber(HEX[1])==-1 then HEX[1]="0xFFFF" end 
        x1="~A8 MOVK X0, #"..tostring(HEX[1])
        if tostring(HEX[1])=="0x0" then x1=xMOVKX0 end 
        
        if tonumber(HEX[2])==-1 then HEX[2]="0xFFFF" end 
        x2="~A8 MOVK X0, #"..tostring(HEX[2])..", LSL #16"
        if tostring(HEX[2])=="0x0" then x2=xMOVKX016 end 
        
        if tonumber(HEX[3])==-1 then HEX[3]="0xFFFF" end 
        x3="~A8 MOVK X0, #"..tostring(HEX[3])..", LSL #32"
        if tostring(HEX[3])=="0x0" then x3=xMOVKX032 end 
        
        if tonumber(HEX[4])==-1 then HEX[4]="0xFFFF" end 
        x4="~A8 MOVK X0, #"..tostring(HEX[4])..", LSL #48"
        if tostring(HEX[4])=="0x0" then x4=xMOVKX048 end 
        
        x5=xFMOVD0X0 
        x6=xEND 
    else -- if 64
        
        if GET[1].value<0 then xx1=65536+GET[1].value else xx1=GET[1].value end
        if GET[2].value<0 then xx2=65536+GET[2].value else xx2=GET[2].value end
        if GET[3].value<0 then xx3=65536+GET[3].value else xx3=GET[3].value end
        if GET[4].value<0 then xx4=65536+GET[4].value else xx4=GET[4].value end
        
        x1="~A MOVW R0, #"..xx1
        x2="~A MOVT R0, #"..xx2 
        x3="~A MOVW R1, #"..xx3
        x4="~A MOVT R1, #"..xx4
        x5="~A VMOV D16, R0, R1"
        x6="~A VMOV.F64 D0, D16"
    
    end -- if 32 
end
--█████████████████████████████████████
function valueMethod(metot)
        DMN = metot
        SEARCHMETHODV2()
end
--============================
function SEARCHMETHODV2()
   il2cppFrontend = {
      mySplit = function(inputstr, sep)
         sep = sep or "%s"
         local t = {}
         for field, s in string.gmatch(inputstr, "([^" .. sep .. "]*)(" .. sep .. "?)") do
            table.insert(t, field)
            if s == "" then
            end
         end
         return t
      end,
      retrievedMethods = {},
      
      FindMethods = function()
         gg.setVisible(false)

         local methodsTable = il2cppFrontend.mySplit(DMN, ",")
         for i, v in pairs(methodsTable) do
            if v:find("^0x") then
               methodsTable[i] = tonumber(methodsTable[i])
            end
         end

         local result = Il2cpp.FindMethods(methodsTable)
         local tempTable = {}
         local methodsFound = true

         for index, valuee in pairs(result) do
            for i, v in pairs(valuee) do
               if type(v) == "table" then
                  il2cppFrontend.retrievedMethods[#il2cppFrontend.retrievedMethods + 1] = v
                  local offset = v.Offset and string.format("0x%X", tonumber(v.Offset, 16)) or "N/A"
if v.AddressInMemory then
    tempTable[i]={}
    tempTable[i].address=tonumber(v.AddressInMemory, 16)
    tempTable[i].flags=4 
    end
load=gg.getValues(tempTable) 
            end
        end
    end
end,
   }
   il2cppFrontend.FindMethods()
end
--█████████████████████████████████████
function offset()
o=tonumber(o) addoff=nil 
addoff=gg.getResults(gg.getResultsCount())
    for i, v in ipairs(addoff) do
        addoff[i].address=addoff[i].address+o
        addoff[i].flags=t
    end
gg.loadResults(addoff) 
end 
--█████████████████████████████████████


while true do
if gg.isVisible(true) then
gg.setVisible(false)
main()
end
end
