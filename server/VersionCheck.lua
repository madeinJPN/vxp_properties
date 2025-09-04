local L0_1, L1_1
L0_1 = CreateThread
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = Config
  L0_2 = L0_2.CheckForUpdates
  if not L0_2 then
    return
  end
  L0_2 = GetResourceMetadata
  L1_2 = cache
  L1_2 = L1_2.resource
  L2_2 = "version"
  L3_2 = 0
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  L1_2 = "https://portal.cfx.re/assets/granted-assets"
  L2_2 = PerformHttpRequest
  L3_2 = "https://raw.githubusercontent.com/TeamsGG-Development/tgg-versions/main/"
  L4_2 = cache
  L4_2 = L4_2.resource
  L5_2 = ".txt"
  L3_2 = L3_2 .. L4_2 .. L5_2
  function L4_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    if not A1_3 then
      L3_3 = print
      L4_3 = "^1Version check disabled because github is having issues.^0"
      L3_3(L4_3)
      return
    end
    L3_3 = json
    L3_3 = L3_3.decode
    L5_3 = A1_3
    L4_3 = A1_3.sub
    L6_3 = 1
    L7_3 = -2
    L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L4_3(L5_3, L6_3, L7_3)
    L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
    function L4_3(A0_4, A1_4)
      local L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4
      L2_4 = 1
      L3_4 = #A0_4
      L4_4 = 1
      for L5_4 = L2_4, L3_4, L4_4 do
        L6_4 = tonumber
        L7_4 = A0_4[L5_4]
        L6_4 = L6_4(L7_4)
        L7_4 = tonumber
        L8_4 = A1_4[L5_4]
        L7_4 = L7_4(L8_4)
        if L6_4 > L7_4 then
          L8_4 = true
          return L8_4
        elseif L6_4 < L7_4 then
          L8_4 = false
          return L8_4
        end
      end
      L2_4 = false
      return L2_4
    end
    L5_3 = {}
    L6_3 = {}
    L7_3 = string
    L7_3 = L7_3.match
    L8_3 = L0_2
    L9_3 = "(%d+)%.(%d+)%.(%d+)"
    L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L7_3(L8_3, L9_3)
    L6_3[1] = L7_3
    L6_3[2] = L8_3
    L6_3[3] = L9_3
    L6_3[4] = L10_3
    L6_3[5] = L11_3
    L6_3[6] = L12_3
    L6_3[7] = L13_3
    L6_3[8] = L14_3
    L6_3[9] = L15_3
    L6_3[10] = L16_3
    L6_3[11] = L17_3
    L5_3.current_table = L6_3
    L6_3 = {}
    L7_3 = string
    L7_3 = L7_3.match
    L8_3 = L3_3.version
    L9_3 = "(%d+)%.(%d+)%.(%d+)"
    L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L7_3(L8_3, L9_3)
    L6_3[1] = L7_3
    L6_3[2] = L8_3
    L6_3[3] = L9_3
    L6_3[4] = L10_3
    L6_3[5] = L11_3
    L6_3[6] = L12_3
    L6_3[7] = L13_3
    L6_3[8] = L14_3
    L6_3[9] = L15_3
    L6_3[10] = L16_3
    L6_3[11] = L17_3
    L5_3.new_table = L6_3
    L6_3 = L4_3
    L7_3 = L5_3.new_table
    L8_3 = L5_3.current_table
    L6_3 = L6_3(L7_3, L8_3)
    if L6_3 then
      L6_3 = ""
      L7_3 = ""
      L8_3 = ipairs
      L9_3 = L5_3.current_table
      L8_3, L9_3, L10_3, L11_3 = L8_3(L9_3)
      for L12_3, L13_3 in L8_3, L9_3, L10_3, L11_3 do
        L14_3 = L5_3.new_table
        L14_3 = L14_3[L12_3]
        if L13_3 == L14_3 then
          L14_3 = L6_3
          L15_3 = "^5"
          L16_3 = L13_3
          L17_3 = ".^0"
          L14_3 = L14_3 .. L15_3 .. L16_3 .. L17_3
          L6_3 = L14_3
          L14_3 = L7_3
          L15_3 = "^5"
          L16_3 = L5_3.new_table
          L16_3 = L16_3[L12_3]
          L17_3 = ".^0"
          L14_3 = L14_3 .. L15_3 .. L16_3 .. L17_3
          L7_3 = L14_3
        else
          L14_3 = L6_3
          L15_3 = "^1"
          L16_3 = L13_3
          L17_3 = ".^0"
          L14_3 = L14_3 .. L15_3 .. L16_3 .. L17_3
          L6_3 = L14_3
          L14_3 = L7_3
          L15_3 = "^2"
          L16_3 = L5_3.new_table
          L16_3 = L16_3[L12_3]
          L17_3 = ".^0"
          L14_3 = L14_3 .. L15_3 .. L16_3 .. L17_3
          L7_3 = L14_3
        end
      end
      L9_3 = L6_3
      L8_3 = L6_3.sub
      L10_3 = 1
      L11_3 = -4
      L8_3 = L8_3(L9_3, L10_3, L11_3)
      L6_3 = L8_3
      L9_3 = L7_3
      L8_3 = L7_3.sub
      L10_3 = 1
      L11_3 = -4
      L8_3 = L8_3(L9_3, L10_3, L11_3)
      L7_3 = L8_3
      L8_3 = print
      L9_3 = string
      L9_3 = L9_3.format
      L10_3 = [[
^0[^3WARNING^0] ^0%s is ^1OUTDATED^0!
^0[^3WARNING^0] Your Version: %s^0
^0[^3WARNING^0] Latest Version: %s^0
^0[^3WARNING^0] Notes: ^5%s^0.
^0[^3WARNING^0] Download: ^3%s^0
^0[^3WARNING^0] Changelog: ^3%s^0]]
      L11_3 = cache
      L11_3 = L11_3.resource
      L12_3 = L6_3
      L13_3 = L7_3
      L14_3 = L3_3.notes
      L15_3 = L1_2
      L16_3 = L3_3.discordLink
      L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
      L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
    end
  end
  L5_2 = "GET"
  L2_2(L3_2, L4_2, L5_2)
end
L0_1(L1_1)
