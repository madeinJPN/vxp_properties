local L0_1, L1_1
L0_1 = {}
PropertySQL = L0_1
L0_1 = {}
BuildingSQL = L0_1
L0_1 = MySQL
L0_1 = L0_1.ready
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L0_2 = Config
  L0_2 = L0_2.ManualSQLInjection
  if not L0_2 then
    L0_2 = LoadResourceFile
    L1_2 = cache
    L1_2 = L1_2.resource
    L2_2 = "sql/properties.sql"
    L0_2 = L0_2(L1_2, L2_2)
    if L0_2 then
      function L1_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
        L0_3 = {}
        L1_3 = {}
        L2_3 = L0_2
        L3_3 = L2_3
        L2_3 = L2_3.gmatch
        L4_3 = "([^;]+);"
        L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3, L4_3)
        for L6_3 in L2_3, L3_3, L4_3, L5_3 do
          if L6_3 then
            L8_3 = L6_3
            L7_3 = L6_3.match
            L9_3 = "%S"
            L7_3 = L7_3(L8_3, L9_3)
            if L7_3 then
              L8_3 = L6_3
              L7_3 = L6_3.gsub
              L9_3 = "^%s+"
              L10_3 = ""
              L7_3 = L7_3(L8_3, L9_3, L10_3)
              L8_3 = L7_3
              L7_3 = L7_3.gsub
              L9_3 = "%s+$"
              L10_3 = ""
              L7_3 = L7_3(L8_3, L9_3, L10_3)
              L6_3 = L7_3
              L8_3 = L6_3
              L7_3 = L6_3.match
              L9_3 = "^CREATE TABLE"
              L7_3 = L7_3(L8_3, L9_3)
              if L7_3 then
                L7_3 = #L0_3
                L7_3 = L7_3 + 1
                L0_3[L7_3] = L6_3
              else
                L8_3 = L6_3
                L7_3 = L6_3.match
                L9_3 = "^ALTER TABLE"
                L7_3 = L7_3(L8_3, L9_3)
                if L7_3 then
                  L7_3 = #L1_3
                  L7_3 = L7_3 + 1
                  L1_3[L7_3] = L6_3
                else
                  L7_3 = #L0_3
                  L7_3 = L7_3 + 1
                  L0_3[L7_3] = L6_3
                end
              end
            end
          end
        end
        L2_3 = ipairs
        L3_3 = L0_3
        L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
        for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
          L8_3 = pcall
          function L9_3()
            local L0_4, L1_4
            L0_4 = MySQL
            L0_4 = L0_4.query
            L0_4 = L0_4.await
            L1_4 = L7_3
            L0_4(L1_4)
          end
          L8_3, L9_3 = L8_3(L9_3)
          if not L8_3 then
            L10_3 = lib
            L10_3 = L10_3.print
            L10_3 = L10_3.warn
            L11_3 = "^3Table creation note: "
            L12_3 = L9_3
            L13_3 = "^7"
            L11_3 = L11_3 .. L12_3 .. L13_3
            L10_3(L11_3)
          end
        end
        return L1_3
      end
      function L2_2(A0_3, A1_3)
        local L2_3, L3_3, L4_3, L5_3, L6_3
        L2_3 = MySQL
        L2_3 = L2_3.query
        L2_3 = L2_3.await
        L3_3 = [[
                    SELECT COUNT(*) as count FROM information_schema.table_constraints
                    WHERE constraint_name = ? AND table_name = ?
                ]]
        L4_3 = {}
        L5_3 = A0_3
        L6_3 = A1_3
        L4_3[1] = L5_3
        L4_3[2] = L6_3
        L2_3 = L2_3(L3_3, L4_3)
        L3_3 = L2_3 or L3_3
        if L2_3 then
          L3_3 = L2_3[1]
          if L3_3 then
            L3_3 = L2_3[1]
            L3_3 = L3_3.count
            L3_3 = L3_3 > 0
          end
        end
        return L3_3
      end
      L3_2 = L1_2
      L3_2 = L3_2()
      L4_2 = #L3_2
      if L4_2 > 0 then
        L4_2 = ipairs
        L5_2 = L3_2
        L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
        for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
          L11_2 = L9_2
          L10_2 = L9_2.match
          L12_2 = "ALTER TABLE `([^`]+)`"
          L10_2 = L10_2(L11_2, L12_2)
          L12_2 = L9_2
          L11_2 = L9_2.match
          L13_2 = "CONSTRAINT `([^`]+)`"
          L11_2 = L11_2(L12_2, L13_2)
          if L10_2 and L11_2 then
            L12_2 = L2_2
            L13_2 = L11_2
            L14_2 = L10_2
            L12_2 = L12_2(L13_2, L14_2)
            if not L12_2 then
              L12_2 = pcall
              function L13_2()
                local L0_3, L1_3
                L0_3 = MySQL
                L0_3 = L0_3.query
                L0_3 = L0_3.await
                L1_3 = L9_2
                L0_3(L1_3)
              end
              L12_2, L13_2 = L12_2(L13_2)
              if not L12_2 then
                L14_2 = lib
                L14_2 = L14_2.print
                L14_2 = L14_2.warn
                L15_2 = "^3Constraint note: "
                L16_2 = L13_2
                L17_2 = "^7"
                L15_2 = L15_2 .. L16_2 .. L17_2
                L14_2(L15_2)
              else
                L14_2 = lib
                L14_2 = L14_2.print
                L14_2 = L14_2.debug
                L15_2 = "^2Added constraint "
                L16_2 = L11_2
                L17_2 = " to table "
                L18_2 = L10_2
                L19_2 = "^7"
                L15_2 = L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2
                L14_2(L15_2)
              end
          end
          else
            L12_2 = lib
            L12_2 = L12_2.print
            L12_2 = L12_2.debug
            L13_2 = "^3Skipping existing constraint "
            L14_2 = L11_2 or L14_2
            if not L11_2 then
              L14_2 = "unknown"
            end
            L15_2 = "^7"
            L13_2 = L13_2 .. L14_2 .. L15_2
            L12_2(L13_2)
          end
        end
      end
      L4_2 = lib
      L4_2 = L4_2.print
      L4_2 = L4_2.debug
      L5_2 = "^2Database schema initialized from combined SQL file^7"
      L4_2(L5_2)
    end
    L1_2 = MySQL
    L1_2 = L1_2.query
    L1_2 = L1_2.await
    L2_2 = "SHOW TRIGGERS LIKE \"update_%\""
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = #L1_2
      if L2_2 > 0 then
        L2_2 = {}
        L3_2 = "update_ownerid"
        L4_2 = "update_priceid"
        L5_2 = "update_properties_renters"
        L6_2 = "update_renterid"
        L7_2 = "update_rentpriceid"
        L2_2[1] = L3_2
        L2_2[2] = L4_2
        L2_2[3] = L5_2
        L2_2[4] = L6_2
        L2_2[5] = L7_2
        L3_2 = ipairs
        L4_2 = L2_2
        L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
        for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
          L9_2 = MySQL
          L9_2 = L9_2.query
          L9_2 = L9_2.await
          L10_2 = "DROP TRIGGER IF EXISTS `%s`"
          L11_2 = L10_2
          L10_2 = L10_2.format
          L12_2 = L8_2
          L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L10_2(L11_2, L12_2)
          L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
        end
        L3_2 = lib
        L3_2 = L3_2.print
        L3_2 = L3_2.debug
        L4_2 = "^2All property triggers dropped successfully^7"
        L3_2(L4_2)
      end
    end
  else
    L0_2 = MySQL
    L0_2 = L0_2.query
    L0_2 = L0_2.await
    L1_2 = "SHOW TABLES LIKE \"properties\""
    L0_2 = L0_2(L1_2)
    L1_2 = #L0_2
    if 0 == L1_2 then
      L1_2 = print
      L2_2 = "properties table does not exist"
      return L1_2(L2_2)
    end
  end
  L0_2 = LoadBuildingsFromDatabase
  L0_2()
  L0_2 = EnsureAutoRenewColumn
  L0_2()
  L0_2 = LoadPropertiesFromDatabase
  L0_2()
  L0_2 = LoadDoorsFromDatabase
  L0_2()
  L0_2 = MigrateFurnitureData
  L0_2()
end
L0_1(L1_1)
L0_1 = PropertySQL
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2
  L8_2 = MySQL
  L8_2 = L8_2.insert
  L8_2 = L8_2.await
  L9_2 = "INSERT INTO properties (address, label, type, metadata, buildingid, forsale, forrent, formortgage) "
  L10_2 = "VALUES (:address, :label, :type, :metadata, :buildingid, :forsale, :forrent, :formortgage)"
  L9_2 = L9_2 .. L10_2
  L10_2 = {}
  L10_2.address = A0_2
  L10_2.label = A1_2
  L10_2.type = A2_2
  L11_2 = json
  L11_2 = L11_2.encode
  L12_2 = A3_2
  L11_2 = L11_2(L12_2)
  L10_2.metadata = L11_2
  if "" == A4_2 then
  end
  L10_2.buildingid = A4_2
  if A5_2 then
    L11_2 = 1
    if L11_2 then
      goto lbl_26
    end
  end
  L11_2 = 0
  ::lbl_26::
  L10_2.forsale = L11_2
  if A6_2 then
    L11_2 = 1
    if L11_2 then
      goto lbl_33
    end
  end
  L11_2 = 0
  ::lbl_33::
  L10_2.forrent = L11_2
  if A7_2 then
    L11_2 = 1
    if L11_2 then
      goto lbl_40
    end
  end
  L11_2 = 0
  ::lbl_40::
  L10_2.formortgage = L11_2
  L8_2 = L8_2(L9_2, L10_2)
  return L8_2
end
L0_1.CreateProperty = L1_1
L0_1 = PropertySQL
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = A0_2.property_id
  L2_2["@property_id"] = L3_2
  L3_2 = A0_2.label
  if nil ~= L3_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L1_2
    L5_2 = "`label` = @label"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.label
    L2_2["@label"] = L3_2
  end
  L3_2 = A0_2.keyHolders
  if nil ~= L3_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L1_2
    L5_2 = "`keyholders` = @keyholders"
    L3_2(L4_2, L5_2)
    L3_2 = json
    L3_2 = L3_2.encode
    L4_2 = A0_2.keyHolders
    L3_2 = L3_2(L4_2)
    L2_2["@keyholders"] = L3_2
  end
  L3_2 = A0_2.metadata
  if nil ~= L3_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L1_2
    L5_2 = "`metadata` = @metadata"
    L3_2(L4_2, L5_2)
    L3_2 = json
    L3_2 = L3_2.encode
    L4_2 = A0_2.metadata
    L3_2 = L3_2(L4_2)
    L2_2["@metadata"] = L3_2
  end
  L3_2 = A0_2.buildingId
  if nil ~= L3_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L1_2
    L5_2 = "`buildingid` = @buildingid"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.buildingId
    L2_2["@buildingid"] = L3_2
  end
  L3_2 = A0_2.forSale
  if nil ~= L3_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L1_2
    L5_2 = "`forsale` = @forsale"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.forSale
    if L3_2 then
      L3_2 = 1
      if L3_2 then
        goto lbl_68
      end
    end
    L3_2 = 0
    ::lbl_68::
    L2_2["@forsale"] = L3_2
  end
  L3_2 = A0_2.forRent
  if nil ~= L3_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L1_2
    L5_2 = "`forrent` = @forrent"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.forRent
    if L3_2 then
      L3_2 = 1
      if L3_2 then
        goto lbl_84
      end
    end
    L3_2 = 0
    ::lbl_84::
    L2_2["@forrent"] = L3_2
  end
  L3_2 = A0_2.forMortgage
  if nil ~= L3_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L1_2
    L5_2 = "`formortgage` = @formortgage"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.forMortgage
    if L3_2 then
      L3_2 = 1
      if L3_2 then
        goto lbl_100
      end
    end
    L3_2 = 0
    ::lbl_100::
    L2_2["@formortgage"] = L3_2
  end
  L3_2 = "UPDATE `properties` SET "
  L4_2 = table
  L4_2 = L4_2.concat
  L5_2 = L1_2
  L6_2 = ", "
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = " WHERE `id` = @property_id"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L4_2 = MySQL
  L4_2 = L4_2.query
  L4_2 = L4_2.await
  L5_2 = L3_2
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
end
L0_1.UpdateProperty = L1_1
L0_1 = PropertySQL
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = MySQL
  L5_2 = L5_2.insert
  L5_2 = L5_2.await
  L6_2 = "INSERT INTO properties_owners (property_id, type, identifier, purchase_price, note) VALUES (?, ?, ?, ?, ?)"
  L7_2 = {}
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = A4_2 or L12_2
  if not A4_2 then
    L12_2 = "unknown"
  end
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L7_2[5] = L12_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L6_2 = MySQL
    L6_2 = L6_2.update
    L6_2 = L6_2.await
    L7_2 = "UPDATE properties SET ownerid = ? WHERE id = ?"
    L8_2 = {}
    L9_2 = L5_2
    L10_2 = A0_2
    L8_2[1] = L9_2
    L8_2[2] = L10_2
    L6_2(L7_2, L8_2)
  end
  return L5_2
end
L0_1.SetOwner = L1_1
L0_1 = PropertySQL
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2, A7_2)
  local L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L8_2 = MySQL
  L8_2 = L8_2.insert
  L8_2 = L8_2.await
  L9_2 = "INSERT INTO properties_renters (property_id, type, identifier, rent_data, rented_from, rented_to, rented_price, auto_renew) VALUES (?, ?, ?, ?, ?, ?, ?, ?)"
  L10_2 = {}
  L11_2 = A0_2
  L12_2 = A1_2
  L13_2 = A2_2
  L14_2 = json
  L14_2 = L14_2.encode
  L15_2 = A3_2
  L14_2 = L14_2(L15_2)
  L15_2 = A4_2
  L16_2 = A5_2
  L17_2 = A6_2
  if A7_2 then
    L18_2 = 1
    if L18_2 then
      goto lbl_23
    end
  end
  L18_2 = 0
  ::lbl_23::
  L10_2[1] = L11_2
  L10_2[2] = L12_2
  L10_2[3] = L13_2
  L10_2[4] = L14_2
  L10_2[5] = L15_2
  L10_2[6] = L16_2
  L10_2[7] = L17_2
  L10_2[8] = L18_2
  L8_2 = L8_2(L9_2, L10_2)
  if L8_2 then
    L9_2 = MySQL
    L9_2 = L9_2.update
    L9_2 = L9_2.await
    L10_2 = "UPDATE properties SET renterid = ? WHERE id = ?"
    L11_2 = {}
    L12_2 = L8_2
    L13_2 = A0_2
    L11_2[1] = L12_2
    L11_2[2] = L13_2
    L9_2(L10_2, L11_2)
  end
  return L8_2
end
L0_1.SetRenter = L1_1
L0_1 = PropertySQL
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = MySQL
  L4_2 = L4_2.update
  L4_2 = L4_2.await
  L5_2 = "UPDATE properties_renters SET rented_to = ?, rented_price = ?, rent_data = ? WHERE property_id = ?"
  L6_2 = {}
  L7_2 = A1_2
  L8_2 = A2_2
  L9_2 = json
  L9_2 = L9_2.encode
  L10_2 = A3_2
  L9_2 = L9_2(L10_2)
  L10_2 = A0_2
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L6_2[4] = L10_2
  L4_2(L5_2, L6_2)
end
L0_1.ContinueRent = L1_1
L0_1 = PropertySQL
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = MySQL
  L2_2 = L2_2.update
  L2_2 = L2_2.await
  L3_2 = "UPDATE properties_renters SET auto_renew = ? WHERE property_id = ? AND canceled_on IS NULL"
  L4_2 = {}
  if A1_2 then
    L5_2 = 1
    if L5_2 then
      goto lbl_13
    end
  end
  L5_2 = 0
  ::lbl_13::
  L6_2 = A0_2
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L2_2(L3_2, L4_2)
end
L0_1.SetAutoRenew = L1_1
L0_1 = PropertySQL
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = MySQL
  L3_2 = L3_2.update
  L3_2 = L3_2.await
  L4_2 = "UPDATE properties_renters SET canceled_on = CURRENT_DATE(), rent_data = ? WHERE property_id = ? AND id = ?"
  L5_2 = {}
  L6_2 = json
  L6_2 = L6_2.encode
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  L7_2 = A0_2
  L8_2 = A1_2
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L3_2(L4_2, L5_2)
  L3_2 = MySQL
  L3_2 = L3_2.update
  L3_2 = L3_2.await
  L4_2 = "UPDATE properties SET renterid = NULL WHERE id = ?"
  L5_2 = {}
  L6_2 = A0_2
  L5_2[1] = L6_2
  L3_2(L4_2, L5_2)
end
L0_1.CancelRent = L1_1
L0_1 = PropertySQL
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = MySQL
  L4_2 = L4_2.insert
  L4_2 = L4_2.await
  L5_2 = "INSERT INTO properties_prices (property_id, price, set_by) VALUES (?, ?, ?)"
  L6_2 = {}
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2 or L9_2
  if not A2_2 then
    L9_2 = "unknown"
  end
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L5_2 = MySQL
    L5_2 = L5_2.update
    L5_2 = L5_2.await
    L6_2 = "UPDATE properties SET priceid = ? WHERE id = ?"
    L7_2 = {}
    L8_2 = L4_2
    L9_2 = A0_2
    L7_2[1] = L8_2
    L7_2[2] = L9_2
    L5_2(L6_2, L7_2)
  end
  return L4_2
end
L0_1.SetPrice = L1_1
L0_1 = PropertySQL
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = MySQL
  L2_2 = L2_2.query
  L2_2 = L2_2.await
  L3_2 = "SELECT * FROM properties_renters WHERE property_id = ? AND rented_from >= ? ORDER BY id DESC"
  L4_2 = {}
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L2_2 = L2_2(L3_2, L4_2)
  return L2_2
end
L0_1.getRenters = L1_1
L0_1 = PropertySQL
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = MySQL
  L1_2 = L1_2.update
  L1_2 = L1_2.await
  L2_2 = "UPDATE properties SET last_entered = CURRENT_TIMESTAMP() WHERE id = ?"
  L3_2 = {}
  L4_2 = A0_2
  L3_2[1] = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  return L1_2
end
L0_1.updateLastEntered = L1_1
L0_1 = PropertySQL
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = MySQL
  L2_2 = L2_2.query
  L2_2 = L2_2.await
  L3_2 = "SELECT last_entered FROM properties WHERE id = ? AND last_entered < DATE_SUB(CURRENT_TIMESTAMP(), INTERVAL ? DAY)"
  L4_2 = {}
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = #L2_2
    if L3_2 > 0 then
      L3_2 = true
      if L3_2 then
        goto lbl_20
      end
    end
  end
  L3_2 = false
  ::lbl_20::
  return L3_2
end
L0_1.checkLastEntered = L1_1
L0_1 = PropertySQL
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = MySQL
  L4_2 = L4_2.insert
  L4_2 = L4_2.await
  L5_2 = "INSERT INTO properties_rentprices (property_id, price, set_by) VALUES (?, ?, ?)"
  L6_2 = {}
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2 or L9_2
  if not A2_2 then
    L9_2 = "unknown"
  end
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L5_2 = MySQL
    L5_2 = L5_2.update
    L5_2 = L5_2.await
    L6_2 = "UPDATE properties SET rentpriceid = ? WHERE id = ?"
    L7_2 = {}
    L8_2 = L4_2
    L9_2 = A0_2
    L7_2[1] = L8_2
    L7_2[2] = L9_2
    L5_2(L6_2, L7_2)
  end
  return L4_2
end
L0_1.SetRentPrice = L1_1
L0_1 = PropertySQL
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = [[
        SELECT p.*
        FROM properties p
        LEFT JOIN properties_owners po ON po.id = p.ownerid
        LEFT JOIN properties_renters pr ON pr.id = p.renterid
        WHERE JSON_EXTRACT(p.metadata, '$.isStarter') = true
        AND (
            (po.identifier = ? AND po.type = 'user')
            OR
            (pr.identifier = ? AND pr.type = 'user')
        )
        LIMIT 1
    ]]
  L2_2 = MySQL
  L2_2 = L2_2.query
  L2_2 = L2_2.await
  L3_2 = L1_2
  L4_2 = {}
  L5_2 = A0_2
  L6_2 = A0_2
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = #L2_2
    if L3_2 > 0 then
      L3_2 = L2_2[1]
      if L3_2 then
        goto lbl_21
      end
    end
  end
  L3_2 = nil
  ::lbl_21::
  return L3_2
end
L0_1.GetStarterApartment = L1_1
L0_1 = BuildingSQL
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = MySQL
  L3_2 = L3_2.insert
  L3_2 = L3_2.await
  L4_2 = "INSERT INTO buildings (name, label, metadata) "
  L5_2 = "VALUES (:name, :label, :metadata)"
  L4_2 = L4_2 .. L5_2
  L5_2 = {}
  L5_2.name = A0_2
  L5_2.label = A1_2
  L6_2 = json
  L6_2 = L6_2.encode
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  L5_2.metadata = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  return L3_2
end
L0_1.CreateBuilding = L1_1
L0_1 = BuildingSQL
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = A0_2.building_id
  L2_2["@building_id"] = L3_2
  L3_2 = A0_2.label
  if nil ~= L3_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L1_2
    L5_2 = "`label` = @label"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.label
    L2_2["@label"] = L3_2
  end
  L3_2 = A0_2.name
  if nil ~= L3_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L1_2
    L5_2 = "`name` = @name"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.name
    L2_2["@name"] = L3_2
  end
  L3_2 = A0_2.metadata
  if nil ~= L3_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L1_2
    L5_2 = "`metadata` = @metadata"
    L3_2(L4_2, L5_2)
    L3_2 = json
    L3_2 = L3_2.encode
    L4_2 = A0_2.metadata
    L3_2 = L3_2(L4_2)
    L2_2["@metadata"] = L3_2
  end
  L3_2 = "UPDATE `buildings` SET "
  L4_2 = table
  L4_2 = L4_2.concat
  L5_2 = L1_2
  L6_2 = ", "
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = " WHERE `id` = @building_id"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L4_2 = MySQL
  L4_2 = L4_2.query
  L4_2 = L4_2.await
  L5_2 = L3_2
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
end
L0_1.UpdateBuilding = L1_1
