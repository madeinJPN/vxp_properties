local L0_1, L1_1
L0_1 = {}
IplCreator = L0_1
L0_1 = exports
L0_1 = L0_1.bob74_ipl
L1_1 = L0_1
L0_1 = L0_1.GetFinanceOrganizationObject
L0_1 = L0_1(L1_1)
FinanceOrganization = L0_1
L0_1 = IplCreator
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = {}
  L4_2.propertyId = A1_2
  L4_2.iplName = A2_2
  L5_2 = exports
  L5_2 = L5_2.bob74_ipl
  L6_2 = IPLsData
  L6_2 = L6_2[A2_2]
  L6_2 = L6_2.export
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2()
  L4_2.ipl = L5_2
  function L5_2()
    local L0_3, L1_3, L2_3
    L0_3 = exports
    L0_3 = L0_3.bob74_ipl
    L1_3 = IPLsData
    L2_3 = A2_2
    L1_3 = L1_3[L2_3]
    L1_3 = L1_3.export
    L0_3 = L0_3[L1_3]
    return L0_3()
  end
  L4_2.export = L5_2
  L4_2.cam = nil
  L4_2.data = A3_2
  L5_2 = {}
  L4_2.tempData = L5_2
  L5_2 = setmetatable
  L6_2 = L4_2
  L7_2 = A0_2
  L5_2(L6_2, L7_2)
  A0_2.__index = A0_2
  L6_2 = L4_2
  L5_2 = L4_2.setData
  L5_2(L6_2)
  return L4_2
end
L0_1.new = L1_1
L0_1 = IplCreator
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = string
  L1_2 = L1_2.sub
  L2_2 = A0_2.iplName
  L3_2 = 1
  L4_2 = "FinanceOffice"
  L4_2 = #L4_2
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if "FinanceOffice" == L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.export
    L1_2 = L1_2(L2_2)
    A0_2.ipl = L1_2
    L2_2 = A0_2
    L1_2 = A0_2.setOrganization
    L1_2(L2_2)
    L1_2 = string
    L1_2 = L1_2.lower
    L2_2 = OfficesInfo
    L2_2 = L2_2.Themes
    L3_2 = A0_2.data
    L3_2 = L3_2.Theme
    L2_2 = L2_2[L3_2]
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2.ipl
    L2_2 = L2_2.Style
    L2_2 = L2_2.Set
    L3_2 = A0_2.ipl
    L3_2 = L3_2.Style
    L3_2 = L3_2.Theme
    L3_2 = L3_2[L1_2]
    L2_2(L3_2)
    L2_2 = lib
    L2_2 = L2_2.print
    L2_2 = L2_2.debug
    L3_2 = "Theme set to: "
    L4_2 = L1_2
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
    L2_2 = {}
    L3_2 = "left"
    L4_2 = "right"
    L2_2[1] = L3_2
    L2_2[2] = L4_2
    L3_2 = ipairs
    L4_2 = L2_2
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = A0_2.data
      L9_2 = L9_2.Safe
      L10_2 = L8_2
      L11_2 = "door"
      L10_2 = L10_2 .. L11_2
      L9_2 = L9_2[L10_2]
      if L9_2 then
        L9_2 = A0_2.ipl
        L9_2 = L9_2.Safe
        L9_2 = L9_2.Open
        L10_2 = L8_2
        L9_2(L10_2)
      else
        L9_2 = A0_2.ipl
        L9_2 = L9_2.Safe
        L9_2 = L9_2.Close
        L10_2 = L8_2
        L9_2(L10_2)
      end
    end
    L3_2 = {}
    L4_2 = "Chairs"
    L5_2 = "Booze"
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L4_2 = ipairs
    L5_2 = L3_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = A0_2.ipl
      L10_2 = L10_2[L9_2]
      L10_2 = L10_2.Set
      L11_2 = A0_2.ipl
      L11_2 = L11_2[L9_2]
      L12_2 = A0_2.data
      L12_2 = L12_2[L9_2]
      if L12_2 then
        L12_2 = "on"
        if L12_2 then
          goto lbl_91
        end
      end
      L12_2 = "off"
      ::lbl_91::
      L11_2 = L11_2[L12_2]
      L10_2(L11_2)
    end
    L4_2 = {}
    L5_2 = "BoozeCigs"
    L6_2 = "Counterfeit"
    L7_2 = "Guns"
    L8_2 = "DrugBags"
    L9_2 = "DrugStatue"
    L10_2 = "Electronic"
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L4_2[3] = L7_2
    L4_2[4] = L8_2
    L4_2[5] = L9_2
    L4_2[6] = L10_2
    L5_2 = ipairs
    L6_2 = L4_2
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = ipairs
      L12_2 = {}
      L13_2 = "A"
      L14_2 = "B"
      L15_2 = "C"
      L12_2[1] = L13_2
      L12_2[2] = L14_2
      L12_2[3] = L15_2
      L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
      for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
        L17_2 = A0_2.ipl
        L17_2 = L17_2.Swag
        L17_2 = L17_2.Enable
        L18_2 = A0_2.ipl
        L18_2 = L18_2.Swag
        L18_2 = L18_2[L10_2]
        L18_2 = L18_2[L16_2]
        L19_2 = A0_2.data
        L19_2 = L19_2[L10_2]
        L19_2 = L19_2[L16_2]
        L17_2(L18_2, L19_2)
      end
    end
  else
    L1_2 = string
    L1_2 = L1_2.sub
    L2_2 = A0_2.iplName
    L3_2 = 1
    L4_2 = "ExecApartment"
    L4_2 = #L4_2
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    if "ExecApartment" == L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.export
      L1_2 = L1_2(L2_2)
      A0_2.ipl = L1_2
      L1_2 = string
      L1_2 = L1_2.lower
      L2_2 = ExecApartmentsInfo
      L2_2 = L2_2.Themes
      L3_2 = A0_2.data
      L3_2 = L3_2.Theme
      L2_2 = L2_2[L3_2]
      L1_2 = L1_2(L2_2)
      L2_2 = A0_2.ipl
      L2_2 = L2_2.Style
      L2_2 = L2_2.Set
      L3_2 = A0_2.ipl
      L3_2 = L3_2.Style
      L3_2 = L3_2.Theme
      L3_2 = L3_2[L1_2]
      L2_2(L3_2)
      L2_2 = lib
      L2_2 = L2_2.print
      L2_2 = L2_2.debug
      L3_2 = "Theme set to: "
      L4_2 = L1_2
      L3_2 = L3_2 .. L4_2
      L2_2(L3_2)
    else
      L1_2 = A0_2.iplName
      if "AfterHoursNightclubs" == L1_2 then
        L2_2 = A0_2
        L1_2 = A0_2.export
        L1_2 = L1_2(L2_2)
        A0_2.ipl = L1_2
        L1_2 = NightClubsInfo
        L1_2 = L1_2.Names
        L2_2 = A0_2.data
        L2_2 = L2_2.Name
        L1_2 = L1_2[L2_2]
        L1_2 = L1_2.name
        L2_2 = A0_2.ipl
        L2_2 = L2_2.Interior
        L2_2 = L2_2.Name
        L2_2 = L2_2.Set
        L3_2 = A0_2.ipl
        L3_2 = L3_2.Interior
        L3_2 = L3_2.Name
        L3_2 = L3_2[L1_2]
        L2_2(L3_2)
        L2_2 = lib
        L2_2 = L2_2.print
        L2_2 = L2_2.debug
        L3_2 = "Club name set to: "
        L4_2 = L1_2
        L3_2 = L3_2 .. L4_2
        L2_2(L3_2)
        L2_2 = NightClubsInfo
        L2_2 = L2_2.Styles
        L3_2 = A0_2.data
        L3_2 = L3_2.Style
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.name
        L3_2 = A0_2.ipl
        L3_2 = L3_2.Interior
        L3_2 = L3_2.Style
        L3_2 = L3_2.Set
        L4_2 = A0_2.ipl
        L4_2 = L4_2.Interior
        L4_2 = L4_2.Style
        L4_2 = L4_2[L2_2]
        L3_2(L4_2)
        L3_2 = lib
        L3_2 = L3_2.print
        L3_2 = L3_2.debug
        L4_2 = "Club style set to: "
        L5_2 = L2_2
        L4_2 = L4_2 .. L5_2
        L3_2(L4_2)
        L3_2 = NightClubsInfo
        L3_2 = L3_2.Podiums
        L4_2 = A0_2.data
        L4_2 = L4_2.Podium
        L3_2 = L3_2[L4_2]
        L3_2 = L3_2.name
        L4_2 = A0_2.ipl
        L4_2 = L4_2.Interior
        L4_2 = L4_2.Podium
        L4_2 = L4_2.Set
        L5_2 = A0_2.ipl
        L5_2 = L5_2.Interior
        L5_2 = L5_2.Podium
        L5_2 = L5_2[L3_2]
        L4_2(L5_2)
        L4_2 = lib
        L4_2 = L4_2.print
        L4_2 = L4_2.debug
        L5_2 = "Club podium set to: "
        L6_2 = L3_2
        L5_2 = L5_2 .. L6_2
        L4_2(L5_2)
        L4_2 = NightClubsInfo
        L4_2 = L4_2.Speakers
        L5_2 = A0_2.data
        L5_2 = L5_2.Speakers
        L4_2 = L4_2[L5_2]
        L4_2 = L4_2.name
        L5_2 = A0_2.ipl
        L5_2 = L5_2.Interior
        L5_2 = L5_2.Speakers
        L5_2 = L5_2.Set
        L6_2 = A0_2.ipl
        L6_2 = L6_2.Interior
        L6_2 = L6_2.Speakers
        L6_2 = L6_2[L4_2]
        L5_2(L6_2)
        L5_2 = lib
        L5_2 = L5_2.print
        L5_2 = L5_2.debug
        L6_2 = "Club speakers set to: "
        L7_2 = L4_2
        L6_2 = L6_2 .. L7_2
        L5_2(L6_2)
        L5_2 = NightClubsInfo
        L5_2 = L5_2.Security
        L6_2 = A0_2.data
        L6_2 = L6_2.Security
        L5_2 = L5_2[L6_2]
        L5_2 = L5_2.name
        L6_2 = A0_2.ipl
        L6_2 = L6_2.Interior
        L6_2 = L6_2.Security
        L6_2 = L6_2.Set
        L7_2 = A0_2.ipl
        L7_2 = L7_2.Interior
        L7_2 = L7_2.Security
        L7_2 = L7_2[L5_2]
        L6_2(L7_2)
        L6_2 = lib
        L6_2 = L6_2.print
        L6_2 = L6_2.debug
        L7_2 = "Club security set to: "
        L8_2 = L5_2
        L7_2 = L7_2 .. L8_2
        L6_2(L7_2)
      end
    end
  end
end
L0_1.setData = L1_1
L0_1 = IplCreator
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2
  L1_2 = A0_2.data
  if not L1_2 then
    return
  end
  L1_2 = lib
  L1_2 = L1_2.table
  L1_2 = L1_2.deepclone
  L2_2 = A0_2.data
  L1_2 = L1_2(L2_2)
  A0_2.tempData = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.export
  L1_2 = L1_2(L2_2)
  A0_2.ipl = L1_2
  L1_2 = string
  L1_2 = L1_2.sub
  L2_2 = A0_2.iplName
  L3_2 = 1
  L4_2 = "FinanceOffice"
  L4_2 = #L4_2
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if "FinanceOffice" == L1_2 then
    function L1_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3
      L2_3 = A0_3.tempData
      L2_3 = L2_3.Organization
      if A1_3 then
        L3_3 = "light"
        if L3_3 then
          goto lbl_9
        end
      end
      L3_3 = "normal"
      ::lbl_9::
      L2_3.style = L3_3
      L3_3 = A0_3
      L2_3 = A0_3.setOrganization
      L4_3 = true
      L2_3(L3_3, L4_3)
    end
    function L2_2(A0_3, A1_3, A2_3)
      local L3_3, L4_3, L5_3
      L3_3 = A0_3.tempData
      L3_3 = L3_3.Safe
      L4_3 = A2_3
      L5_3 = "door"
      L4_3 = L4_3 .. L5_3
      L3_3[L4_3] = A1_3
      if A1_3 then
        L3_3 = A0_3.ipl
        L3_3 = L3_3.Safe
        L3_3 = L3_3.Open
        L4_3 = A2_3
        L3_3(L4_3)
      else
        L3_3 = A0_3.ipl
        L3_3 = L3_3.Safe
        L3_3 = L3_3.Close
        L4_3 = A2_3
        L3_3(L4_3)
      end
    end
    function L3_2(A0_3, A1_3, A2_3)
      local L3_3, L4_3, L5_3
      L3_3 = A0_3.tempData
      L3_3[A2_3] = A1_3
      L3_3 = A0_3.ipl
      L3_3 = L3_3[A2_3]
      L3_3 = L3_3.Set
      L4_3 = A0_3.ipl
      L4_3 = L4_3[A2_3]
      if A1_3 then
        L5_3 = "on"
        if L5_3 then
          goto lbl_14
        end
      end
      L5_3 = "off"
      ::lbl_14::
      L4_3 = L4_3[L5_3]
      L5_3 = true
      L3_3(L4_3, L5_3)
    end
    function L4_2(A0_3, A1_3, A2_3, A3_3)
      local L4_3, L5_3, L6_3
      L4_3 = A0_3.tempData
      L4_3 = L4_3[A2_3]
      L4_3[A3_3] = A1_3
      L4_3 = A0_3.ipl
      L4_3 = L4_3.Swag
      L4_3 = L4_3.Enable
      L5_3 = A0_3.ipl
      L5_3 = L5_3.Swag
      L5_3 = L5_3[A2_3]
      L5_3 = L5_3[A3_3]
      L6_3 = A1_3
      L4_3(L5_3, L6_3)
    end
    L5_2 = {}
    L5_2[3] = L1_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3
      L2_3 = L2_2
      L3_3 = A0_3
      L4_3 = A1_3
      L5_3 = "left"
      return L2_3(L3_3, L4_3, L5_3)
    end
    L5_2[6] = L6_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3
      L2_3 = L2_2
      L3_3 = A0_3
      L4_3 = A1_3
      L5_3 = "right"
      return L2_3(L3_3, L4_3, L5_3)
    end
    L5_2[7] = L6_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3
      L2_3 = L3_2
      L3_3 = A0_3
      L4_3 = A1_3
      L5_3 = "Chairs"
      return L2_3(L3_3, L4_3, L5_3)
    end
    L5_2[8] = L6_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3
      L2_3 = L3_2
      L3_3 = A0_3
      L4_3 = A1_3
      L5_3 = "Booze"
      return L2_3(L3_3, L4_3, L5_3)
    end
    L5_2[9] = L6_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3
      L2_3 = L4_2
      L3_3 = A0_3
      L4_3 = A1_3
      L5_3 = "BoozeCigs"
      L6_3 = "A"
      return L2_3(L3_3, L4_3, L5_3, L6_3)
    end
    L5_2[10] = L6_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3
      L2_3 = L4_2
      L3_3 = A0_3
      L4_3 = A1_3
      L5_3 = "BoozeCigs"
      L6_3 = "B"
      return L2_3(L3_3, L4_3, L5_3, L6_3)
    end
    L5_2[11] = L6_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3
      L2_3 = L4_2
      L3_3 = A0_3
      L4_3 = A1_3
      L5_3 = "BoozeCigs"
      L6_3 = "C"
      return L2_3(L3_3, L4_3, L5_3, L6_3)
    end
    L5_2[12] = L6_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3
      L2_3 = L4_2
      L3_3 = A0_3
      L4_3 = A1_3
      L5_3 = "Counterfeit"
      L6_3 = "A"
      return L2_3(L3_3, L4_3, L5_3, L6_3)
    end
    L5_2[13] = L6_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3
      L2_3 = L4_2
      L3_3 = A0_3
      L4_3 = A1_3
      L5_3 = "Counterfeit"
      L6_3 = "B"
      return L2_3(L3_3, L4_3, L5_3, L6_3)
    end
    L5_2[14] = L6_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3
      L2_3 = L4_2
      L3_3 = A0_3
      L4_3 = A1_3
      L5_3 = "Counterfeit"
      L6_3 = "C"
      return L2_3(L3_3, L4_3, L5_3, L6_3)
    end
    L5_2[15] = L6_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3
      L2_3 = L4_2
      L3_3 = A0_3
      L4_3 = A1_3
      L5_3 = "Guns"
      L6_3 = "A"
      return L2_3(L3_3, L4_3, L5_3, L6_3)
    end
    L5_2[16] = L6_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3
      L2_3 = L4_2
      L3_3 = A0_3
      L4_3 = A1_3
      L5_3 = "Guns"
      L6_3 = "B"
      return L2_3(L3_3, L4_3, L5_3, L6_3)
    end
    L5_2[17] = L6_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3
      L2_3 = L4_2
      L3_3 = A0_3
      L4_3 = A1_3
      L5_3 = "Guns"
      L6_3 = "C"
      return L2_3(L3_3, L4_3, L5_3, L6_3)
    end
    L5_2[18] = L6_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3
      L2_3 = L4_2
      L3_3 = A0_3
      L4_3 = A1_3
      L5_3 = "DrugBags"
      L6_3 = "A"
      return L2_3(L3_3, L4_3, L5_3, L6_3)
    end
    L5_2[19] = L6_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3
      L2_3 = L4_2
      L3_3 = A0_3
      L4_3 = A1_3
      L5_3 = "DrugBags"
      L6_3 = "B"
      return L2_3(L3_3, L4_3, L5_3, L6_3)
    end
    L5_2[20] = L6_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3
      L2_3 = L4_2
      L3_3 = A0_3
      L4_3 = A1_3
      L5_3 = "DrugBags"
      L6_3 = "C"
      return L2_3(L3_3, L4_3, L5_3, L6_3)
    end
    L5_2[21] = L6_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3
      L2_3 = L4_2
      L3_3 = A0_3
      L4_3 = A1_3
      L5_3 = "DrugStatue"
      L6_3 = "A"
      return L2_3(L3_3, L4_3, L5_3, L6_3)
    end
    L5_2[22] = L6_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3
      L2_3 = L4_2
      L3_3 = A0_3
      L4_3 = A1_3
      L5_3 = "DrugStatue"
      L6_3 = "B"
      return L2_3(L3_3, L4_3, L5_3, L6_3)
    end
    L5_2[23] = L6_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3
      L2_3 = L4_2
      L3_3 = A0_3
      L4_3 = A1_3
      L5_3 = "DrugStatue"
      L6_3 = "C"
      return L2_3(L3_3, L4_3, L5_3, L6_3)
    end
    L5_2[24] = L6_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3
      L2_3 = L4_2
      L3_3 = A0_3
      L4_3 = A1_3
      L5_3 = "Electronic"
      L6_3 = "A"
      return L2_3(L3_3, L4_3, L5_3, L6_3)
    end
    L5_2[25] = L6_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3
      L2_3 = L4_2
      L3_3 = A0_3
      L4_3 = A1_3
      L5_3 = "Electronic"
      L6_3 = "B"
      return L2_3(L3_3, L4_3, L5_3, L6_3)
    end
    L5_2[26] = L6_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3
      L2_3 = L4_2
      L3_3 = A0_3
      L4_3 = A1_3
      L5_3 = "Electronic"
      L6_3 = "C"
      return L2_3(L3_3, L4_3, L5_3, L6_3)
    end
    L5_2[27] = L6_2
    L6_2 = lib
    L6_2 = L6_2.registerMenu
    L7_2 = {}
    L7_2.id = "office_ipl_menu"
    L7_2.title = "Menu title"
    L7_2.position = "top-right"
    function L8_2(A0_3, A1_3, A2_3)
      local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
      if 2 == A0_3 then
        L3_3 = A0_2.tempData
        L3_3 = L3_3.Organization
        L3_3.color = A1_3
        L3_3 = {}
        L4_3 = A0_2.tempData
        L4_3 = L4_3.Organization
        L4_3 = L4_3.name
        L3_3.name = L4_3
        L4_3 = A0_2.tempData
        L4_3 = L4_3.Organization
        L4_3 = L4_3.style
        L3_3.style = L4_3
        L4_3 = OfficesInfo
        L4_3 = L4_3.Organization
        L4_3 = L4_3.colors
        L5_3 = A0_2.tempData
        L5_3 = L5_3.Organization
        L5_3 = L5_3.color
        L4_3 = L4_3[L5_3]
        L3_3.color = L4_3
        L4_3 = OfficesInfo
        L4_3 = L4_3.Organization
        L4_3 = L4_3.fonts
        L5_3 = A0_2.tempData
        L5_3 = L5_3.Organization
        L5_3 = L5_3.font
        L4_3 = L4_3[L5_3]
        L3_3.font = L4_3
        L4_3 = FinanceOrganization
        L4_3 = L4_3.Name
        L4_3 = L4_3.Set
        L5_3 = L3_3.name
        if not L5_3 then
          L5_3 = "No Name"
        end
        L6_3 = FinanceOrganization
        L6_3 = L6_3.Name
        L6_3 = L6_3.Style
        L7_3 = L3_3.style
        if not L7_3 then
          L7_3 = "normal"
        end
        L6_3 = L6_3[L7_3]
        L7_3 = FinanceOrganization
        L7_3 = L7_3.Name
        L7_3 = L7_3.Colors
        L8_3 = L3_3.color
        if not L8_3 then
          L8_3 = "black"
        end
        L7_3 = L7_3[L8_3]
        L8_3 = FinanceOrganization
        L8_3 = L8_3.Name
        L8_3 = L8_3.Fonts
        L9_3 = L3_3.font
        if not L9_3 then
          L9_3 = "font1"
        end
        L8_3 = L8_3[L9_3]
        L4_3(L5_3, L6_3, L7_3, L8_3)
      elseif 4 == A0_3 then
        L3_3 = A0_2.tempData
        L3_3 = L3_3.Organization
        L3_3.font = A1_3
        L3_3 = {}
        L4_3 = A0_2.tempData
        L4_3 = L4_3.Organization
        L4_3 = L4_3.name
        L3_3.name = L4_3
        L4_3 = A0_2.tempData
        L4_3 = L4_3.Organization
        L4_3 = L4_3.style
        L3_3.style = L4_3
        L4_3 = OfficesInfo
        L4_3 = L4_3.Organization
        L4_3 = L4_3.colors
        L5_3 = A0_2.tempData
        L5_3 = L5_3.Organization
        L5_3 = L5_3.color
        L4_3 = L4_3[L5_3]
        L3_3.color = L4_3
        L4_3 = OfficesInfo
        L4_3 = L4_3.Organization
        L4_3 = L4_3.fonts
        L5_3 = A0_2.tempData
        L5_3 = L5_3.Organization
        L5_3 = L5_3.font
        L4_3 = L4_3[L5_3]
        L3_3.font = L4_3
        L4_3 = FinanceOrganization
        L4_3 = L4_3.Name
        L4_3 = L4_3.Set
        L5_3 = L3_3.name
        if not L5_3 then
          L5_3 = "No Name"
        end
        L6_3 = FinanceOrganization
        L6_3 = L6_3.Name
        L6_3 = L6_3.Style
        L7_3 = L3_3.style
        if not L7_3 then
          L7_3 = "normal"
        end
        L6_3 = L6_3[L7_3]
        L7_3 = FinanceOrganization
        L7_3 = L7_3.Name
        L7_3 = L7_3.Colors
        L8_3 = L3_3.color
        if not L8_3 then
          L8_3 = "black"
        end
        L7_3 = L7_3[L8_3]
        L8_3 = FinanceOrganization
        L8_3 = L8_3.Name
        L8_3 = L8_3.Fonts
        L9_3 = L3_3.font
        if not L9_3 then
          L9_3 = "font1"
        end
        L8_3 = L8_3[L9_3]
        L4_3(L5_3, L6_3, L7_3, L8_3)
      elseif 5 == A0_3 then
        L3_3 = A0_2.tempData
        L3_3.Theme = A1_3
        L3_3 = string
        L3_3 = L3_3.lower
        L4_3 = OfficesInfo
        L4_3 = L4_3.Themes
        L4_3 = L4_3[A1_3]
        L3_3 = L3_3(L4_3)
        L4_3 = A0_2.ipl
        L4_3 = L4_3.Style
        L4_3 = L4_3.Set
        L5_3 = A0_2.ipl
        L5_3 = L5_3.Style
        L5_3 = L5_3.Theme
        L5_3 = L5_3[L3_3]
        L6_3 = true
        L4_3(L5_3, L6_3)
        L4_3 = A0_2
        L5_3 = L4_3
        L4_3 = L4_3.export
        L4_3 = L4_3(L5_3)
        A0_2.ipl = L4_3
      end
    end
    L7_2.onSideScroll = L8_2
    function L8_2(A0_3, A1_3, A2_3)
      local L3_3, L4_3, L5_3
      L3_3 = A2_3.Cam
      if L3_3 then
        L3_3 = A0_2
        L4_3 = L3_3
        L3_3 = L3_3.setCamera
        L5_3 = A2_3.Cam
        L3_3(L4_3, L5_3)
        L3_3 = lib
        L3_3 = L3_3.print
        L3_3 = L3_3.debug
        L4_3 = "Camera set to: "
        L5_3 = A2_3.Cam
        L4_3 = L4_3 .. L5_3
        L3_3(L4_3)
      end
    end
    L7_2.onSelected = L8_2
    function L8_2(A0_3, A1_3, A2_3)
      local L3_3, L4_3, L5_3, L6_3
      L3_3 = L5_2
      L3_3 = L3_3[A0_3]
      if L3_3 then
        L4_3 = L3_3
        L5_3 = A0_2
        L6_3 = A1_3
        L4_3(L5_3, L6_3)
      end
      L4_3 = RefreshInterior
      L5_3 = A0_2.ipl
      L5_3 = L5_3.currentInteriorId
      L4_3(L5_3)
    end
    L7_2.onCheck = L8_2
    function L8_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
      L1_3 = Config
      L1_3 = L1_3.PaidIplChanges
      if L1_3 then
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3.calculatePrice
        L1_3, L2_3 = L1_3(L2_3)
        L3_3 = lib
        L3_3 = L3_3.alertDialog
        L4_3 = {}
        L5_3 = locale
        L6_3 = "save_changes"
        L7_3 = L1_3
        L5_3 = L5_3(L6_3, L7_3)
        L4_3.header = L5_3
        L4_3.content = L2_3
        L4_3.centered = true
        L4_3.cancel = true
        L3_3 = L3_3(L4_3)
        if "confirm" == L3_3 then
          L4_3 = lib
          L4_3 = L4_3.callback
          L4_3 = L4_3.await
          L5_3 = "nolag_properties:server:buyFurniture"
          L6_3 = false
          L7_3 = L1_3
          L8_3 = "Bought ipl changes for property "
          L9_3 = A0_2.propertyId
          L8_3 = L8_3 .. L9_3
          L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
          if L4_3 then
            L4_3 = TriggerServerEvent
            L5_3 = "nolag_properties:server:property:saveIplChanges"
            L6_3 = A0_2.propertyId
            L7_3 = A0_2.tempData
            L4_3(L5_3, L6_3, L7_3)
            L4_3 = lib
            L4_3 = L4_3.table
            L4_3 = L4_3.deepclone
            L5_3 = A0_2.tempData
            L4_3 = L4_3(L5_3)
            A0_2.data = L4_3
            L4_3 = A0_2
            L5_3 = L4_3
            L4_3 = L4_3.setData
            L4_3(L5_3)
          else
            L4_3 = A0_2
            L5_3 = L4_3
            L4_3 = L4_3.setData
            L4_3(L5_3)
          end
        else
          L4_3 = A0_2
          L5_3 = L4_3
          L4_3 = L4_3.setData
          L4_3(L5_3)
        end
      else
        L1_3 = lib
        L1_3 = L1_3.alertDialog
        L2_3 = {}
        L3_3 = locale
        L4_3 = "save_changes_no_price"
        L3_3 = L3_3(L4_3)
        L2_3.header = L3_3
        L2_3.content = ""
        L2_3.centered = true
        L2_3.cancel = true
        L1_3 = L1_3(L2_3)
        if "confirm" == L1_3 then
          L2_3 = TriggerServerEvent
          L3_3 = "nolag_properties:server:property:saveIplChanges"
          L4_3 = A0_2.propertyId
          L5_3 = A0_2.tempData
          L2_3(L3_3, L4_3, L5_3)
          L2_3 = lib
          L2_3 = L2_3.table
          L2_3 = L2_3.deepclone
          L3_3 = A0_2.tempData
          L2_3 = L2_3(L3_3)
          A0_2.data = L2_3
          L2_3 = A0_2
          L3_3 = L2_3
          L2_3 = L2_3.setData
          L2_3(L3_3)
        else
          L2_3 = A0_2
          L3_3 = L2_3
          L2_3 = L2_3.setData
          L2_3(L3_3)
        end
      end
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.setCamera
      L3_3 = "default"
      L1_3(L2_3, L3_3)
    end
    L7_2.onClose = L8_2
    L8_2 = {}
    L9_2 = {}
    L9_2.label = "Change title"
    L9_2.description = "Change your organization name!"
    L10_2 = {}
    L10_2.Cam = "OrganizationName"
    L9_2.args = L10_2
    L10_2 = {}
    L10_2.label = "Title Color"
    L10_2.close = false
    L10_2.description = "Change your organization name color!"
    L11_2 = OfficesInfo
    L11_2 = L11_2.Organization
    L11_2 = L11_2.colors
    L10_2.values = L11_2
    L11_2 = A0_2.tempData
    L11_2 = L11_2.Organization
    L11_2 = L11_2.color
    L10_2.defaultIndex = L11_2
    L11_2 = {}
    L11_2.Cam = "OrganizationName"
    L10_2.args = L11_2
    L11_2 = {}
    L11_2.label = "Lighter Text"
    L11_2.description = "Make your title lighter color!"
    L12_2 = A0_2.tempData
    L12_2 = L12_2.Organization
    L12_2 = L12_2.style
    L12_2 = "light" == L12_2
    L11_2.checked = L12_2
    L12_2 = {}
    L12_2.Cam = "OrganizationName"
    L11_2.args = L12_2
    L12_2 = {}
    L12_2.label = "Title Font"
    L12_2.close = false
    L12_2.description = "Change your organization name font!"
    L13_2 = OfficesInfo
    L13_2 = L13_2.Organization
    L13_2 = L13_2.fonts
    L12_2.values = L13_2
    L13_2 = A0_2.tempData
    L13_2 = L13_2.Organization
    L13_2 = L13_2.font
    L12_2.defaultIndex = L13_2
    L13_2 = {}
    L13_2.Cam = "OrganizationName"
    L12_2.args = L13_2
    L13_2 = {}
    L13_2.label = "Style"
    L13_2.close = false
    L13_2.description = "Change your office style!"
    L14_2 = OfficesInfo
    L14_2 = L14_2.Themes
    L13_2.values = L14_2
    L14_2 = A0_2.tempData
    L14_2 = L14_2.Theme
    L13_2.defaultIndex = L14_2
    L14_2 = {}
    L14_2.Cam = "Reception"
    L13_2.args = L14_2
    L14_2 = {}
    L14_2.label = "Safe Left Door"
    L14_2.description = "Open/close safe left door!"
    L15_2 = A0_2.tempData
    L15_2 = L15_2.Safe
    L15_2 = L15_2.leftdoor
    L14_2.checked = L15_2
    L15_2 = {}
    L15_2.Cam = "SafeLeftDoor"
    L14_2.args = L15_2
    L15_2 = {}
    L15_2.label = "Safe Right Door"
    L15_2.description = "Open/close safe right door!"
    L16_2 = A0_2.tempData
    L16_2 = L16_2.Safe
    L16_2 = L16_2.rightdoor
    L15_2.checked = L16_2
    L16_2 = {}
    L16_2.Cam = "SafeRightDoor"
    L15_2.args = L16_2
    L16_2 = {}
    L16_2.label = "Chairs"
    L16_2.description = "Enable/disable chairs!"
    L17_2 = A0_2.tempData
    L17_2 = L17_2.Chairs
    L16_2.checked = L17_2
    L17_2 = {}
    L17_2.Cam = "Chairs"
    L16_2.args = L17_2
    L17_2 = {}
    L17_2.label = "Booze Bottles"
    L17_2.description = "Enable/disable booze bottles!"
    L18_2 = A0_2.tempData
    L18_2 = L18_2.Booze
    L17_2.checked = L18_2
    L18_2 = {}
    L18_2.Cam = "Booze"
    L17_2.args = L18_2
    L18_2 = {}
    L18_2.label = "Booze & Cigs"
    L18_2.description = "Enable/disable booze & cigs!"
    L19_2 = A0_2.tempData
    L19_2 = L19_2.BoozeCigs
    L19_2 = L19_2.A
    L18_2.checked = L19_2
    L19_2 = {}
    L19_2.Cam = "BoozeCigsA"
    L18_2.args = L19_2
    L19_2 = {}
    L19_2.label = "Booze & Cigs"
    L19_2.description = "Enable/disable booze & cigs!"
    L20_2 = A0_2.tempData
    L20_2 = L20_2.BoozeCigs
    L20_2 = L20_2.B
    L19_2.checked = L20_2
    L20_2 = {}
    L20_2.Cam = "BoozeCigsB"
    L19_2.args = L20_2
    L20_2 = {}
    L20_2.label = "Booze & Cigs"
    L20_2.description = "Enable/disable booze & cigs!"
    L21_2 = A0_2.tempData
    L21_2 = L21_2.BoozeCigs
    L21_2 = L21_2.C
    L20_2.checked = L21_2
    L21_2 = {}
    L21_2.Cam = "BoozeCigsC"
    L20_2.args = L21_2
    L21_2 = {}
    L21_2.label = "Counterfeit"
    L21_2.description = "Enable/disable counterfeit!"
    L22_2 = A0_2.tempData
    L22_2 = L22_2.Counterfeit
    L22_2 = L22_2.A
    L21_2.checked = L22_2
    L22_2 = {}
    L22_2.Cam = "CounterfeitA"
    L21_2.args = L22_2
    L22_2 = {}
    L22_2.label = "Counterfeit"
    L22_2.description = "Enable/disable counterfeit!"
    L23_2 = A0_2.tempData
    L23_2 = L23_2.Counterfeit
    L23_2 = L23_2.B
    L22_2.checked = L23_2
    L23_2 = {}
    L23_2.Cam = "CounterfeitB"
    L22_2.args = L23_2
    L23_2 = {}
    L23_2.label = "Counterfeit"
    L23_2.description = "Enable/disable counterfeit!"
    L24_2 = A0_2.tempData
    L24_2 = L24_2.Counterfeit
    L24_2 = L24_2.C
    L23_2.checked = L24_2
    L24_2 = {}
    L24_2.Cam = "CounterfeitC"
    L23_2.args = L24_2
    L24_2 = {}
    L24_2.label = "Guns"
    L24_2.description = "Enable/disable guns!"
    L25_2 = A0_2.tempData
    L25_2 = L25_2.Guns
    L25_2 = L25_2.A
    L24_2.checked = L25_2
    L25_2 = {}
    L25_2.Cam = "GunsA"
    L24_2.args = L25_2
    L25_2 = {}
    L25_2.label = "Guns"
    L25_2.description = "Enable/disable guns!"
    L26_2 = A0_2.tempData
    L26_2 = L26_2.Guns
    L26_2 = L26_2.B
    L25_2.checked = L26_2
    L26_2 = {}
    L26_2.Cam = "GunsB"
    L25_2.args = L26_2
    L26_2 = {}
    L26_2.label = "Guns"
    L26_2.description = "Enable/disable guns!"
    L27_2 = A0_2.tempData
    L27_2 = L27_2.Guns
    L27_2 = L27_2.C
    L26_2.checked = L27_2
    L27_2 = {}
    L27_2.Cam = "GunsC"
    L26_2.args = L27_2
    L27_2 = {}
    L27_2.label = "Drug Bags"
    L27_2.description = "Enable/disable drug bags!"
    L28_2 = A0_2.tempData
    L28_2 = L28_2.DrugBags
    L28_2 = L28_2.A
    L27_2.checked = L28_2
    L28_2 = {}
    L28_2.Cam = "DrugBagsA"
    L27_2.args = L28_2
    L28_2 = {}
    L28_2.label = "Drug Bags"
    L28_2.description = "Enable/disable drug bags!"
    L29_2 = A0_2.tempData
    L29_2 = L29_2.DrugBags
    L29_2 = L29_2.B
    L28_2.checked = L29_2
    L29_2 = {}
    L29_2.Cam = "DrugBagsB"
    L28_2.args = L29_2
    L29_2 = {}
    L29_2.label = "Drug Bags"
    L29_2.description = "Enable/disable drug bags!"
    L30_2 = A0_2.tempData
    L30_2 = L30_2.DrugBags
    L30_2 = L30_2.C
    L29_2.checked = L30_2
    L30_2 = {}
    L30_2.Cam = "DrugBagsC"
    L29_2.args = L30_2
    L30_2 = {}
    L30_2.label = "Drug Statue"
    L30_2.description = "Enable/disable drug statue!"
    L31_2 = A0_2.tempData
    L31_2 = L31_2.DrugStatue
    L31_2 = L31_2.A
    L30_2.checked = L31_2
    L31_2 = {}
    L31_2.Cam = "DrugStatueA"
    L30_2.args = L31_2
    L31_2 = {}
    L31_2.label = "Drug Statue"
    L31_2.description = "Enable/disable drug statue!"
    L32_2 = A0_2.tempData
    L32_2 = L32_2.DrugStatue
    L32_2 = L32_2.B
    L31_2.checked = L32_2
    L32_2 = {}
    L32_2.Cam = "DrugStatueB"
    L31_2.args = L32_2
    L32_2 = {}
    L32_2.label = "Drug Statue"
    L32_2.description = "Enable/disable drug statue!"
    L33_2 = A0_2.tempData
    L33_2 = L33_2.DrugStatue
    L33_2 = L33_2.C
    L32_2.checked = L33_2
    L33_2 = {}
    L33_2.Cam = "DrugStatueC"
    L32_2.args = L33_2
    L33_2 = {}
    L33_2.label = "Electronic"
    L33_2.description = "Enable/disable electronic!"
    L34_2 = A0_2.tempData
    L34_2 = L34_2.Electronic
    L34_2 = L34_2.A
    L33_2.checked = L34_2
    L34_2 = {}
    L34_2.Cam = "ElectronicA"
    L33_2.args = L34_2
    L34_2 = {}
    L34_2.label = "Electronic"
    L34_2.description = "Enable/disable electronic!"
    L35_2 = A0_2.tempData
    L35_2 = L35_2.Electronic
    L35_2 = L35_2.B
    L34_2.checked = L35_2
    L35_2 = {}
    L35_2.Cam = "ElectronicB"
    L34_2.args = L35_2
    L35_2 = {}
    L35_2.label = "Electronic"
    L35_2.description = "Enable/disable electronic!"
    L36_2 = A0_2.tempData
    L36_2 = L36_2.Electronic
    L36_2 = L36_2.C
    L35_2.checked = L36_2
    L36_2 = {}
    L36_2.Cam = "ElectronicC"
    L35_2.args = L36_2
    L8_2[1] = L9_2
    L8_2[2] = L10_2
    L8_2[3] = L11_2
    L8_2[4] = L12_2
    L8_2[5] = L13_2
    L8_2[6] = L14_2
    L8_2[7] = L15_2
    L8_2[8] = L16_2
    L8_2[9] = L17_2
    L8_2[10] = L18_2
    L8_2[11] = L19_2
    L8_2[12] = L20_2
    L8_2[13] = L21_2
    L8_2[14] = L22_2
    L8_2[15] = L23_2
    L8_2[16] = L24_2
    L8_2[17] = L25_2
    L8_2[18] = L26_2
    L8_2[19] = L27_2
    L8_2[20] = L28_2
    L8_2[21] = L29_2
    L8_2[22] = L30_2
    L8_2[23] = L31_2
    L8_2[24] = L32_2
    L8_2[25] = L33_2
    L8_2[26] = L34_2
    L8_2[27] = L35_2
    L7_2.options = L8_2
    function L8_2(A0_3, A1_3, A2_3)
      local L3_3, L4_3, L5_3, L6_3
      if 1 == A0_3 then
        L3_3 = A0_2
        L4_3 = L3_3
        L3_3 = L3_3.editOrganization
        L3_3(L4_3)
      end
      L3_3 = lib
      L3_3 = L3_3.print
      L3_3 = L3_3.debug
      L4_3 = A0_3
      L5_3 = A1_3
      L6_3 = A2_3
      L3_3(L4_3, L5_3, L6_3)
    end
    L6_2(L7_2, L8_2)
    L6_2 = lib
    L6_2 = L6_2.showMenu
    L7_2 = "office_ipl_menu"
    L6_2(L7_2)
  else
    L1_2 = string
    L1_2 = L1_2.sub
    L2_2 = A0_2.iplName
    L3_2 = 1
    L4_2 = "ExecApartment"
    L4_2 = #L4_2
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    if "ExecApartment" == L1_2 then
      L1_2 = lib
      L1_2 = L1_2.registerMenu
      L2_2 = {}
      L2_2.id = "execapartment_ipl_menu"
      L2_2.title = "Menu title"
      L2_2.position = "top-right"
      function L3_2(A0_3, A1_3, A2_3)
        local L3_3, L4_3, L5_3, L6_3
        if 1 == A0_3 then
          L3_3 = A0_2.tempData
          L3_3.Theme = A1_3
          L3_3 = string
          L3_3 = L3_3.lower
          L4_3 = ExecApartmentsInfo
          L4_3 = L4_3.Themes
          L4_3 = L4_3[A1_3]
          L3_3 = L3_3(L4_3)
          L4_3 = A0_2.ipl
          L4_3 = L4_3.Style
          L4_3 = L4_3.Set
          L5_3 = A0_2.ipl
          L5_3 = L5_3.Style
          L5_3 = L5_3.Theme
          L5_3 = L5_3[L3_3]
          L6_3 = true
          L4_3(L5_3, L6_3)
          L4_3 = A0_2
          L5_3 = L4_3
          L4_3 = L4_3.export
          L4_3 = L4_3(L5_3)
          A0_2.ipl = L4_3
        end
      end
      L2_2.onSideScroll = L3_2
      function L3_2(A0_3, A1_3, A2_3)
        local L3_3, L4_3, L5_3
        L3_3 = A2_3.Cam
        if L3_3 then
          L3_3 = A0_2
          L4_3 = L3_3
          L3_3 = L3_3.setCamera
          L5_3 = A2_3.Cam
          L3_3(L4_3, L5_3)
        end
      end
      L2_2.onSelected = L3_2
      function L3_2(A0_3, A1_3, A2_3)
      end
      L2_2.onCheck = L3_2
      function L3_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
        L1_3 = Config
        L1_3 = L1_3.PaidIplChanges
        if L1_3 then
          L1_3 = A0_2
          L2_3 = L1_3
          L1_3 = L1_3.calculatePrice
          L1_3, L2_3 = L1_3(L2_3)
          L3_3 = lib
          L3_3 = L3_3.alertDialog
          L4_3 = {}
          L5_3 = locale
          L6_3 = "save_changes"
          L7_3 = L1_3
          L5_3 = L5_3(L6_3, L7_3)
          L4_3.header = L5_3
          L4_3.content = L2_3
          L4_3.centered = true
          L4_3.cancel = true
          L3_3 = L3_3(L4_3)
          if "confirm" == L3_3 then
            L4_3 = TriggerServerEvent
            L5_3 = "nolag_properties:server:property:saveIplChanges"
            L6_3 = A0_2.propertyId
            L7_3 = A0_2.tempData
            L4_3(L5_3, L6_3, L7_3)
            L4_3 = A0_2
            L5_3 = L4_3
            L4_3 = L4_3.setData
            L4_3(L5_3)
          else
            L4_3 = A0_2
            L5_3 = L4_3
            L4_3 = L4_3.setData
            L4_3(L5_3)
          end
        else
          L1_3 = lib
          L1_3 = L1_3.alertDialog
          L2_3 = {}
          L3_3 = locale
          L4_3 = "save_changes_no_price"
          L3_3 = L3_3(L4_3)
          L2_3.header = L3_3
          L2_3.content = ""
          L2_3.centered = true
          L2_3.cancel = true
          L1_3 = L1_3(L2_3)
          if "confirm" == L1_3 then
            L2_3 = TriggerServerEvent
            L3_3 = "nolag_properties:server:property:saveIplChanges"
            L4_3 = A0_2.propertyId
            L5_3 = A0_2.tempData
            L2_3(L3_3, L4_3, L5_3)
            L2_3 = A0_2
            L3_3 = L2_3
            L2_3 = L2_3.setData
            L2_3(L3_3)
          else
            L2_3 = A0_2
            L3_3 = L2_3
            L2_3 = L2_3.setData
            L2_3(L3_3)
          end
        end
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3.setCamera
        L3_3 = "default"
        L1_3(L2_3, L3_3)
      end
      L2_2.onClose = L3_2
      L3_2 = {}
      L4_2 = {}
      L4_2.label = "Style"
      L4_2.close = false
      L4_2.description = "Change your office style!"
      L5_2 = ExecApartmentsInfo
      L5_2 = L5_2.Themes
      L4_2.values = L5_2
      L5_2 = A0_2.tempData
      L5_2 = L5_2.Theme
      L4_2.defaultIndex = L5_2
      L5_2 = {}
      L5_2.Cam = "General"
      L4_2.args = L5_2
      L3_2[1] = L4_2
      L2_2.options = L3_2
      function L3_2(A0_3, A1_3, A2_3)
        local L3_3, L4_3, L5_3, L6_3
        L3_3 = lib
        L3_3 = L3_3.print
        L3_3 = L3_3.debug
        L4_3 = A0_3
        L5_3 = A1_3
        L6_3 = A2_3
        L3_3(L4_3, L5_3, L6_3)
      end
      L1_2(L2_2, L3_2)
      L1_2 = lib
      L1_2 = L1_2.showMenu
      L2_2 = "execapartment_ipl_menu"
      L1_2(L2_2)
    else
      L1_2 = A0_2.iplName
      if "AfterHoursNightclubs" == L1_2 then
        function L1_2(A0_3, A1_3)
          local L2_3, L3_3, L4_3, L5_3
          L2_3 = A0_3.tempData
          L2_3.Name = A1_3
          L2_3 = NightClubsInfo
          L2_3 = L2_3.Names
          L2_3 = L2_3[A1_3]
          L2_3 = L2_3.name
          L3_3 = A0_3.ipl
          L3_3 = L3_3.Interior
          L3_3 = L3_3.Name
          L3_3 = L3_3.Set
          L4_3 = A0_3.ipl
          L4_3 = L4_3.Interior
          L4_3 = L4_3.Name
          L4_3 = L4_3[L2_3]
          L5_3 = true
          L3_3(L4_3, L5_3)
        end
        function L2_2(A0_3, A1_3)
          local L2_3, L3_3, L4_3, L5_3
          L2_3 = A0_3.tempData
          L2_3.Style = A1_3
          L2_3 = NightClubsInfo
          L2_3 = L2_3.Styles
          L2_3 = L2_3[A1_3]
          L2_3 = L2_3.name
          L3_3 = A0_3.ipl
          L3_3 = L3_3.Interior
          L3_3 = L3_3.Style
          L3_3 = L3_3.Set
          L4_3 = A0_3.ipl
          L4_3 = L4_3.Interior
          L4_3 = L4_3.Style
          L4_3 = L4_3[L2_3]
          L5_3 = true
          L3_3(L4_3, L5_3)
        end
        function L3_2(A0_3, A1_3)
          local L2_3, L3_3, L4_3, L5_3
          L2_3 = A0_3.tempData
          L2_3.Podium = A1_3
          L2_3 = NightClubsInfo
          L2_3 = L2_3.Podiums
          L2_3 = L2_3[A1_3]
          L2_3 = L2_3.name
          L3_3 = A0_3.ipl
          L3_3 = L3_3.Interior
          L3_3 = L3_3.Podium
          L3_3 = L3_3.Set
          L4_3 = A0_3.ipl
          L4_3 = L4_3.Interior
          L4_3 = L4_3.Podium
          L4_3 = L4_3[L2_3]
          L5_3 = true
          L3_3(L4_3, L5_3)
        end
        function L4_2(A0_3, A1_3)
          local L2_3, L3_3, L4_3, L5_3
          L2_3 = A0_3.tempData
          L2_3.Speakers = A1_3
          L2_3 = NightClubsInfo
          L2_3 = L2_3.Speakers
          L2_3 = L2_3[A1_3]
          L2_3 = L2_3.name
          L3_3 = A0_3.ipl
          L3_3 = L3_3.Interior
          L3_3 = L3_3.Speakers
          L3_3 = L3_3.Set
          L4_3 = A0_3.ipl
          L4_3 = L4_3.Interior
          L4_3 = L4_3.Speakers
          L4_3 = L4_3[L2_3]
          L5_3 = true
          L3_3(L4_3, L5_3)
        end
        function L5_2(A0_3, A1_3)
          local L2_3, L3_3, L4_3, L5_3
          L2_3 = A0_3.tempData
          L2_3.Security = A1_3
          L2_3 = NightClubsInfo
          L2_3 = L2_3.Security
          L2_3 = L2_3[A1_3]
          L2_3 = L2_3.name
          L3_3 = A0_3.ipl
          L3_3 = L3_3.Interior
          L3_3 = L3_3.Security
          L3_3 = L3_3.Set
          L4_3 = A0_3.ipl
          L4_3 = L4_3.Interior
          L4_3 = L4_3.Security
          L4_3 = L4_3[L2_3]
          L5_3 = true
          L3_3(L4_3, L5_3)
        end
        L6_2 = {}
        L7_2 = {}
        L8_2 = {}
        function L9_2(A0_3, A1_3, A2_3)
          local L3_3, L4_3, L5_3
          L3_3 = L1_2
          L4_3 = A0_3
          L5_3 = A1_3
          return L3_3(L4_3, L5_3)
        end
        L8_2[1] = L9_2
        function L9_2(A0_3, A1_3, A2_3)
          local L3_3, L4_3, L5_3
          L3_3 = L2_2
          L4_3 = A0_3
          L5_3 = A1_3
          return L3_3(L4_3, L5_3)
        end
        L8_2[2] = L9_2
        function L9_2(A0_3, A1_3, A2_3)
          local L3_3, L4_3, L5_3
          L3_3 = L3_2
          L4_3 = A0_3
          L5_3 = A1_3
          return L3_3(L4_3, L5_3)
        end
        L8_2[3] = L9_2
        function L9_2(A0_3, A1_3, A2_3)
          local L3_3, L4_3, L5_3
          L3_3 = L4_2
          L4_3 = A0_3
          L5_3 = A1_3
          return L3_3(L4_3, L5_3)
        end
        L8_2[4] = L9_2
        function L9_2(A0_3, A1_3, A2_3)
          local L3_3, L4_3, L5_3
          L3_3 = L5_2
          L4_3 = A0_3
          L5_3 = A1_3
          return L3_3(L4_3, L5_3)
        end
        L8_2[5] = L9_2
        L9_2 = lib
        L9_2 = L9_2.registerMenu
        L10_2 = {}
        L10_2.id = "nightclub_ipl_menu"
        L10_2.title = "Night Club"
        L10_2.position = "top-right"
        function L11_2(A0_3, A1_3, A2_3)
          local L3_3, L4_3, L5_3, L6_3, L7_3
          L3_3 = L8_2
          L3_3 = L3_3[A0_3]
          if L3_3 then
            L4_3 = L3_3
            L5_3 = A0_2
            L6_3 = A1_3
            L7_3 = A2_3
            L4_3(L5_3, L6_3, L7_3)
          end
        end
        L10_2.onSideScroll = L11_2
        function L11_2(A0_3, A1_3, A2_3)
          local L3_3, L4_3, L5_3
          L3_3 = A2_3.Cam
          if L3_3 then
            L3_3 = A0_2
            L4_3 = L3_3
            L3_3 = L3_3.setCamera
            L5_3 = A2_3.Cam
            L3_3(L4_3, L5_3)
          end
        end
        L10_2.onSelected = L11_2
        function L11_2(A0_3, A1_3, A2_3)
          local L3_3, L4_3, L5_3, L6_3
          L3_3 = L6_2
          L3_3 = L3_3[A0_3]
          if L3_3 then
            L4_3 = L3_3
            L5_3 = A0_2
            L6_3 = A1_3
            L4_3(L5_3, L6_3)
          end
          L4_3 = RefreshInterior
          L5_3 = A0_2.ipl
          L5_3 = L5_3.currentInteriorId
          L4_3(L5_3)
        end
        L10_2.onCheck = L11_2
        function L11_2(A0_3)
          local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
          L1_3 = Config
          L1_3 = L1_3.PaidIplChanges
          if L1_3 then
            L1_3 = A0_2
            L2_3 = L1_3
            L1_3 = L1_3.calculatePrice
            L1_3, L2_3 = L1_3(L2_3)
            L3_3 = lib
            L3_3 = L3_3.alertDialog
            L4_3 = {}
            L5_3 = locale
            L6_3 = "save_changes"
            L7_3 = L1_3
            L5_3 = L5_3(L6_3, L7_3)
            L4_3.header = L5_3
            L4_3.content = L2_3
            L4_3.centered = true
            L4_3.cancel = true
            L3_3 = L3_3(L4_3)
            if "confirm" == L3_3 then
              L4_3 = lib
              L4_3 = L4_3.callback
              L4_3 = L4_3.await
              L5_3 = "nolag_properties:server:buyFurniture"
              L6_3 = false
              L7_3 = L1_3
              L8_3 = "Bought ipl changes for property "
              L9_3 = A0_2.propertyId
              L8_3 = L8_3 .. L9_3
              L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
              if L4_3 then
                L4_3 = TriggerServerEvent
                L5_3 = "nolag_properties:server:property:saveIplChanges"
                L6_3 = A0_2.propertyId
                L7_3 = A0_2.tempData
                L4_3(L5_3, L6_3, L7_3)
                L4_3 = lib
                L4_3 = L4_3.table
                L4_3 = L4_3.deepclone
                L5_3 = A0_2.tempData
                L4_3 = L4_3(L5_3)
                A0_2.data = L4_3
                L4_3 = A0_2
                L5_3 = L4_3
                L4_3 = L4_3.setData
                L4_3(L5_3)
              else
                L4_3 = A0_2
                L5_3 = L4_3
                L4_3 = L4_3.setData
                L4_3(L5_3)
              end
            else
              L4_3 = A0_2
              L5_3 = L4_3
              L4_3 = L4_3.setData
              L4_3(L5_3)
            end
          else
            L1_3 = lib
            L1_3 = L1_3.alertDialog
            L2_3 = {}
            L3_3 = locale
            L4_3 = "save_changes_no_price"
            L3_3 = L3_3(L4_3)
            L2_3.header = L3_3
            L2_3.content = ""
            L2_3.centered = true
            L2_3.cancel = true
            L1_3 = L1_3(L2_3)
            if "confirm" == L1_3 then
              L2_3 = TriggerServerEvent
              L3_3 = "nolag_properties:server:property:saveIplChanges"
              L4_3 = A0_2.propertyId
              L5_3 = A0_2.tempData
              L2_3(L3_3, L4_3, L5_3)
              L2_3 = lib
              L2_3 = L2_3.table
              L2_3 = L2_3.deepclone
              L3_3 = A0_2.tempData
              L2_3 = L2_3(L3_3)
              A0_2.data = L2_3
              L2_3 = A0_2
              L3_3 = L2_3
              L2_3 = L2_3.setData
              L2_3(L3_3)
            else
              L2_3 = A0_2
              L3_3 = L2_3
              L2_3 = L2_3.setData
              L2_3(L3_3)
            end
          end
          L1_3 = A0_2
          L2_3 = L1_3
          L1_3 = L1_3.setCamera
          L3_3 = "default"
          L1_3(L2_3, L3_3)
        end
        L10_2.onClose = L11_2
        L11_2 = {}
        L12_2 = {}
        L12_2.label = "Change name"
        L12_2.description = "Change your club name!"
        L14_2 = A0_2
        L13_2 = A0_2.getLabels
        L15_2 = NightClubsInfo
        L15_2 = L15_2.Names
        L13_2 = L13_2(L14_2, L15_2)
        L12_2.values = L13_2
        L13_2 = {}
        L13_2.Cam = "ClubName"
        L12_2.args = L13_2
        L13_2 = {}
        L13_2.label = "Change style"
        L13_2.description = "Change your club style!"
        L15_2 = A0_2
        L14_2 = A0_2.getLabels
        L16_2 = NightClubsInfo
        L16_2 = L16_2.Styles
        L14_2 = L14_2(L15_2, L16_2)
        L13_2.values = L14_2
        L14_2 = {}
        L14_2.Cam = "ClubName"
        L13_2.args = L14_2
        L14_2 = {}
        L14_2.label = "Change podium"
        L14_2.description = "Change your club podiums!"
        L16_2 = A0_2
        L15_2 = A0_2.getLabels
        L17_2 = NightClubsInfo
        L17_2 = L17_2.Podiums
        L15_2 = L15_2(L16_2, L17_2)
        L14_2.values = L15_2
        L15_2 = {}
        L15_2.Cam = "Podiums"
        L14_2.args = L15_2
        L15_2 = {}
        L15_2.label = "Change speakers"
        L15_2.description = "Change your club speakers!"
        L17_2 = A0_2
        L16_2 = A0_2.getLabels
        L18_2 = NightClubsInfo
        L18_2 = L18_2.Speakers
        L16_2 = L16_2(L17_2, L18_2)
        L15_2.values = L16_2
        L16_2 = {}
        L17_2 = {}
        L18_2 = "Speakers1"
        L19_2 = "Speakers2"
        L17_2[1] = L18_2
        L17_2[2] = L19_2
        L16_2.Cam = L17_2
        L15_2.args = L16_2
        L16_2 = {}
        L16_2.label = "Change security"
        L16_2.description = "Change your club security!"
        L18_2 = A0_2
        L17_2 = A0_2.getLabels
        L19_2 = NightClubsInfo
        L19_2 = L19_2.Security
        L17_2 = L17_2(L18_2, L19_2)
        L16_2.values = L17_2
        L17_2 = {}
        L17_2.Cam = "Security"
        L16_2.args = L17_2
        L11_2[1] = L12_2
        L11_2[2] = L13_2
        L11_2[3] = L14_2
        L11_2[4] = L15_2
        L11_2[5] = L16_2
        L10_2.options = L11_2
        function L11_2(A0_3, A1_3, A2_3)
          local L3_3, L4_3, L5_3, L6_3
          L3_3 = lib
          L3_3 = L3_3.print
          L3_3 = L3_3.debug
          L4_3 = A0_3
          L5_3 = A1_3
          L6_3 = A2_3
          L3_3(L4_3, L5_3, L6_3)
        end
        L9_2(L10_2, L11_2)
        L9_2 = lib
        L9_2 = L9_2.showMenu
        L10_2 = "nightclub_ipl_menu"
        L9_2(L10_2)
      end
    end
  end
end
L0_1.edit = L1_1
L0_1 = IplCreator
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.label
    L2_2[L7_2] = L9_2
  end
  return L2_2
end
L0_1.getLabels = L1_1
L0_1 = IplCreator
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = 0
  L2_2 = ""
  L3_2 = string
  L3_2 = L3_2.sub
  L4_2 = A0_2.iplName
  L5_2 = 1
  L6_2 = "FinanceOffice"
  L6_2 = #L6_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if "FinanceOffice" == L3_2 then
    L3_2 = A0_2.data
    L4_2 = A0_2.tempData
    L5_2 = {}
    L6_2 = tostring
    L7_2 = L3_2.Organization
    L7_2 = L7_2.name
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = L4_2.Organization
    L8_2 = L8_2.name
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 ~= L7_2
    L5_2.Title = L6_2
    L6_2 = tostring
    L7_2 = L3_2.Organization
    L7_2 = L7_2.color
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = L4_2.Organization
    L8_2 = L8_2.color
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 ~= L7_2
    L5_2.TitleColor = L6_2
    L6_2 = tostring
    L7_2 = L3_2.Organization
    L7_2 = L7_2.style
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = L4_2.Organization
    L8_2 = L8_2.style
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 ~= L7_2
    L5_2.TitleStyle = L6_2
    L6_2 = tostring
    L7_2 = L3_2.Organization
    L7_2 = L7_2.font
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = L4_2.Organization
    L8_2 = L8_2.font
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 ~= L7_2
    L5_2.TitleFont = L6_2
    L6_2 = tostring
    L7_2 = L3_2.Theme
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = L4_2.Theme
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 ~= L7_2
    L5_2.Theme = L6_2
    L6_2 = tostring
    L7_2 = L3_2.Safe
    L7_2 = L7_2.leftdoor
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = L4_2.Safe
    L8_2 = L8_2.leftdoor
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 ~= L7_2
    L5_2.SafeLeftDoor = L6_2
    L6_2 = tostring
    L7_2 = L3_2.Safe
    L7_2 = L7_2.rightdoor
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = L4_2.Safe
    L8_2 = L8_2.rightdoor
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 ~= L7_2
    L5_2.SafeRightDoor = L6_2
    L6_2 = tostring
    L7_2 = L3_2.Chairs
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = L4_2.Chairs
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 ~= L7_2
    L5_2.Chairs = L6_2
    L6_2 = tostring
    L7_2 = L3_2.Booze
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = L4_2.Booze
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 ~= L7_2
    L5_2.Booze = L6_2
    L6_2 = tostring
    L7_2 = L3_2.BoozeCigs
    L7_2 = L7_2.A
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = L4_2.BoozeCigs
    L8_2 = L8_2.A
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 ~= L7_2
    L5_2.BoozeCigsA = L6_2
    L6_2 = tostring
    L7_2 = L3_2.BoozeCigs
    L7_2 = L7_2.B
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = L4_2.BoozeCigs
    L8_2 = L8_2.B
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 ~= L7_2
    L5_2.BoozeCigsB = L6_2
    L6_2 = tostring
    L7_2 = L3_2.BoozeCigs
    L7_2 = L7_2.C
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = L4_2.BoozeCigs
    L8_2 = L8_2.C
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 ~= L7_2
    L5_2.BoozeCigsC = L6_2
    L6_2 = tostring
    L7_2 = L3_2.Counterfeit
    L7_2 = L7_2.A
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = L4_2.Counterfeit
    L8_2 = L8_2.A
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 ~= L7_2
    L5_2.CounterfeitA = L6_2
    L6_2 = tostring
    L7_2 = L3_2.Counterfeit
    L7_2 = L7_2.B
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = L4_2.Counterfeit
    L8_2 = L8_2.B
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 ~= L7_2
    L5_2.CounterfeitB = L6_2
    L6_2 = tostring
    L7_2 = L3_2.Counterfeit
    L7_2 = L7_2.C
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = L4_2.Counterfeit
    L8_2 = L8_2.C
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 ~= L7_2
    L5_2.CounterfeitC = L6_2
    L6_2 = tostring
    L7_2 = L3_2.Guns
    L7_2 = L7_2.A
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = L4_2.Guns
    L8_2 = L8_2.A
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 ~= L7_2
    L5_2.GunsA = L6_2
    L6_2 = tostring
    L7_2 = L3_2.Guns
    L7_2 = L7_2.B
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = L4_2.Guns
    L8_2 = L8_2.B
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 ~= L7_2
    L5_2.GunsB = L6_2
    L6_2 = tostring
    L7_2 = L3_2.Guns
    L7_2 = L7_2.C
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = L4_2.Guns
    L8_2 = L8_2.C
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 ~= L7_2
    L5_2.GunsC = L6_2
    L6_2 = tostring
    L7_2 = L3_2.DrugBags
    L7_2 = L7_2.A
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = L4_2.DrugBags
    L8_2 = L8_2.A
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 ~= L7_2
    L5_2.DrugBagsA = L6_2
    L6_2 = tostring
    L7_2 = L3_2.DrugBags
    L7_2 = L7_2.B
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = L4_2.DrugBags
    L8_2 = L8_2.B
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 ~= L7_2
    L5_2.DrugBagsB = L6_2
    L6_2 = tostring
    L7_2 = L3_2.DrugBags
    L7_2 = L7_2.C
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = L4_2.DrugBags
    L8_2 = L8_2.C
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 ~= L7_2
    L5_2.DrugBagsC = L6_2
    L6_2 = tostring
    L7_2 = L3_2.DrugStatue
    L7_2 = L7_2.A
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = L4_2.DrugStatue
    L8_2 = L8_2.A
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 ~= L7_2
    L5_2.DrugStatueA = L6_2
    L6_2 = tostring
    L7_2 = L3_2.DrugStatue
    L7_2 = L7_2.B
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = L4_2.DrugStatue
    L8_2 = L8_2.B
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 ~= L7_2
    L5_2.DrugStatueB = L6_2
    L6_2 = tostring
    L7_2 = L3_2.DrugStatue
    L7_2 = L7_2.C
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = L4_2.DrugStatue
    L8_2 = L8_2.C
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 ~= L7_2
    L5_2.DrugStatueC = L6_2
    L6_2 = tostring
    L7_2 = L3_2.Electronic
    L7_2 = L7_2.A
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = L4_2.Electronic
    L8_2 = L8_2.A
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 ~= L7_2
    L5_2.ElectronicA = L6_2
    L6_2 = tostring
    L7_2 = L3_2.Electronic
    L7_2 = L7_2.B
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = L4_2.Electronic
    L8_2 = L8_2.B
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 ~= L7_2
    L5_2.ElectronicB = L6_2
    L6_2 = tostring
    L7_2 = L3_2.Electronic
    L7_2 = L7_2.C
    L6_2 = L6_2(L7_2)
    L7_2 = tostring
    L8_2 = L4_2.Electronic
    L8_2 = L8_2.C
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 ~= L7_2
    L5_2.ElectronicC = L6_2
    L6_2 = pairs
    L7_2 = L5_2
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      if L11_2 then
        L12_2 = OfficesInfo
        L12_2 = L12_2.prices
        L12_2 = L12_2[L10_2]
        L1_2 = L1_2 + L12_2
        L12_2 = L2_2
        L13_2 = L10_2
        L14_2 = " - "
        L15_2 = OfficesInfo
        L15_2 = L15_2.prices
        L15_2 = L15_2[L10_2]
        L16_2 = "$   \n"
        L12_2 = L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2
        L2_2 = L12_2
      end
    end
  else
    L3_2 = string
    L3_2 = L3_2.sub
    L4_2 = A0_2.iplName
    L5_2 = 1
    L6_2 = "ExecApartment"
    L6_2 = #L6_2
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    if "ExecApartment" == L3_2 then
      L3_2 = A0_2.data
      L4_2 = A0_2.tempData
      L5_2 = {}
      L6_2 = tostring
      L7_2 = L3_2.Theme
      L6_2 = L6_2(L7_2)
      L7_2 = tostring
      L8_2 = L4_2.Theme
      L7_2 = L7_2(L8_2)
      L6_2 = L6_2 ~= L7_2
      L5_2.Theme = L6_2
      L6_2 = pairs
      L7_2 = L5_2
      L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
      for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
        if L11_2 then
          L12_2 = ExecApartmentsInfo
          L12_2 = L12_2.prices
          L12_2 = L12_2[L10_2]
          L1_2 = L1_2 + L12_2
          L12_2 = L2_2
          L13_2 = L10_2
          L14_2 = " - "
          L15_2 = ExecApartmentsInfo
          L15_2 = L15_2.prices
          L15_2 = L15_2[L10_2]
          L16_2 = "$   \n"
          L12_2 = L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2
          L2_2 = L12_2
        end
      end
    else
      L3_2 = A0_2.iplName
      if "AfterHoursNightclubs" == L3_2 then
        L3_2 = A0_2.data
        L4_2 = A0_2.tempData
        L5_2 = {}
        L6_2 = tostring
        L7_2 = L3_2.Name
        L6_2 = L6_2(L7_2)
        L7_2 = tostring
        L8_2 = L4_2.Name
        L7_2 = L7_2(L8_2)
        L6_2 = L6_2 ~= L7_2
        L5_2.Name = L6_2
        L6_2 = tostring
        L7_2 = L3_2.Style
        L6_2 = L6_2(L7_2)
        L7_2 = tostring
        L8_2 = L4_2.Style
        L7_2 = L7_2(L8_2)
        L6_2 = L6_2 ~= L7_2
        L5_2.Style = L6_2
        L6_2 = tostring
        L7_2 = L3_2.Podium
        L6_2 = L6_2(L7_2)
        L7_2 = tostring
        L8_2 = L4_2.Podium
        L7_2 = L7_2(L8_2)
        L6_2 = L6_2 ~= L7_2
        L5_2.Podium = L6_2
        L6_2 = tostring
        L7_2 = L3_2.Speakers
        L6_2 = L6_2(L7_2)
        L7_2 = tostring
        L8_2 = L4_2.Speakers
        L7_2 = L7_2(L8_2)
        L6_2 = L6_2 ~= L7_2
        L5_2.Speakers = L6_2
        L6_2 = tostring
        L7_2 = L3_2.Security
        L6_2 = L6_2(L7_2)
        L7_2 = tostring
        L8_2 = L4_2.Security
        L7_2 = L7_2(L8_2)
        L6_2 = L6_2 ~= L7_2
        L5_2.Security = L6_2
        L6_2 = pairs
        L7_2 = L5_2
        L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
        for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
          if L11_2 then
            L12_2 = NightClubsInfo
            L12_2 = L12_2.prices
            L12_2 = L12_2[L10_2]
            L1_2 = L1_2 + L12_2
            L12_2 = L2_2
            L13_2 = L10_2
            L14_2 = " - "
            L15_2 = NightClubsInfo
            L15_2 = L15_2.prices
            L15_2 = L15_2[L10_2]
            L16_2 = "$   \n"
            L12_2 = L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2
            L2_2 = L12_2
          end
        end
      end
    end
  end
  L3_2 = L1_2
  L4_2 = L2_2
  return L3_2, L4_2
end
L0_1.calculatePrice = L1_1
L0_1 = IplCreator
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.camera
  if L2_2 == A1_2 then
    return
  end
  L2_2 = IPLsData
  L3_2 = A0_2.iplName
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.cams
  if "default" ~= A1_2 and A1_2 then
    L3_2 = type
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if "string" == L3_2 then
      L3_2 = SetCamCoords
      L4_2 = L2_2[A1_2]
      L4_2 = L4_2.camCoords
      L5_2 = L2_2[A1_2]
      L5_2 = L5_2.camRotation
      L3_2(L4_2, L5_2)
      A0_2.camera = A1_2
    else
      L3_2 = "loopingCams"
      L4_2 = math
      L4_2 = L4_2.random
      L5_2 = 1
      L6_2 = 100000
      L4_2 = L4_2(L5_2, L6_2)
      L3_2 = L3_2 .. L4_2
      L4_2 = A1_2
      A0_2.camera = L3_2
      L5_2 = CreateThread
      function L6_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
        while true do
          L0_3 = A0_2.camera
          L1_3 = L3_2
          if L0_3 ~= L1_3 then
            break
          end
          L0_3 = ipairs
          L1_3 = L4_2
          L0_3, L1_3, L2_3, L3_3 = L0_3(L1_3)
          for L4_3, L5_3 in L0_3, L1_3, L2_3, L3_3 do
            L6_3 = A0_2.camera
            L7_3 = L3_2
            if L6_3 ~= L7_3 then
              break
            end
            L6_3 = SetCamCoords
            L7_3 = L2_2
            L7_3 = L7_3[L5_3]
            L7_3 = L7_3.camCoords
            L8_3 = L2_2
            L8_3 = L8_3[L5_3]
            L8_3 = L8_3.camRotation
            L6_3(L7_3, L8_3)
            L6_3 = Wait
            L7_3 = L2_2
            L7_3 = L7_3[L5_3]
            L7_3 = L7_3.duration
            if not L7_3 then
              L7_3 = 5000
            end
            L6_3(L7_3)
          end
        end
      end
      L5_2(L6_2)
    end
  else
    L3_2 = DestroyCamera
    L3_2()
    A0_2.camera = "default"
  end
end
L0_1.setCamera = L1_1
L0_1 = IplCreator
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 then
    L2_2 = A0_2.tempData
    if L2_2 then
      goto lbl_7
    end
  end
  L2_2 = A0_2.data
  ::lbl_7::
  L3_2 = FinanceOrganization
  L3_2 = L3_2.Office
  L3_2 = L3_2.Enable
  L4_2 = true
  L3_2(L4_2)
  L3_2 = {}
  L4_2 = L2_2.Organization
  L4_2 = L4_2.name
  L3_2.name = L4_2
  L4_2 = L2_2.Organization
  L4_2 = L4_2.style
  L3_2.style = L4_2
  L4_2 = OfficesInfo
  L4_2 = L4_2.Organization
  L4_2 = L4_2.colors
  L5_2 = L2_2.Organization
  L5_2 = L5_2.color
  L4_2 = L4_2[L5_2]
  L3_2.color = L4_2
  L4_2 = OfficesInfo
  L4_2 = L4_2.Organization
  L4_2 = L4_2.fonts
  L5_2 = L2_2.Organization
  L5_2 = L5_2.font
  L4_2 = L4_2[L5_2]
  L3_2.font = L4_2
  L4_2 = FinanceOrganization
  L4_2 = L4_2.Name
  L4_2 = L4_2.Set
  L5_2 = L3_2.name
  if not L5_2 then
    L5_2 = "No Name"
  end
  L6_2 = FinanceOrganization
  L6_2 = L6_2.Name
  L6_2 = L6_2.Style
  L7_2 = L3_2.style
  if not L7_2 then
    L7_2 = "normal"
  end
  L6_2 = L6_2[L7_2]
  L7_2 = FinanceOrganization
  L7_2 = L7_2.Name
  L7_2 = L7_2.Colors
  L8_2 = L3_2.color
  if not L8_2 then
    L8_2 = "black"
  end
  L7_2 = L7_2[L8_2]
  L8_2 = FinanceOrganization
  L8_2 = L8_2.Name
  L8_2 = L8_2.Fonts
  L9_2 = L3_2.font
  if not L9_2 then
    L9_2 = "font1"
  end
  L8_2 = L8_2[L9_2]
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.setOrganization = L1_1
L0_1 = IplCreator
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = lib
  L1_2 = L1_2.inputDialog
  L2_2 = locale
  L3_2 = "organization_settings"
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = {}
  L4_2.type = "input"
  L5_2 = locale
  L6_2 = "organization_name"
  L5_2 = L5_2(L6_2)
  L4_2.label = L5_2
  L4_2.required = true
  L3_2[1] = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L2_2 = lib
    L2_2 = L2_2.showMenu
    L3_2 = "office_ipl_menu"
    L2_2(L3_2)
    return
  end
  L2_2 = lib
  L2_2 = L2_2.print
  L2_2 = L2_2.debug
  L3_2 = json
  L3_2 = L3_2.encode
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2.tempData
  L2_2 = L2_2.Organization
  L3_2 = L1_2[1]
  L2_2.name = L3_2
  L3_2 = A0_2
  L2_2 = A0_2.setOrganization
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = lib
  L2_2 = L2_2.showMenu
  L3_2 = "office_ipl_menu"
  L2_2(L3_2)
end
L0_1.editOrganization = L1_1
L0_1 = IplCreator
return L0_1
