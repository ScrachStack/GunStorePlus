function GenerateRandomLetters()
    local letters = "abcdefghijklmnopqrstuvwxyz"
    local result = ""
    
    for _ = 1, 10 do
        local random_index = math.random(1, #letters)
        result = result .. string.sub(letters, random_index, random_index)
    end
    
    return result
end

local menu = MenuV:CreateMenu(false, 'Gun Store', config.menuPosition, 255, 0, 0, config.menuWidth, 'default', 'menuv', GenerateRandomLetters(), 'native')
local categoryMenus = {}


function ClearGunStoreButtons()
    for _, categoryMenu in pairs(categoryMenus) do
        categoryMenu:ClearItems()
    end
end

function CreateGunStoreButtons()
    ClearGunStoreButtons()
    categoryMenus = {}

    for category, weapons in pairs(config.weapons) do
        local categoryMenu = MenuV:CreateMenu(false, category, config.menuPosition, 255, 0, 0, config.menuWidth, 'default', 'menuv', GenerateRandomLetters(), 'native')
        categoryMenus[category] = categoryMenu

        for _, weaponData in pairs(weapons) do
            local weaponButton = categoryMenu:AddButton({
                icon = '🔫',
                label = weaponData[1],
                value = weaponData[2],
                description = weaponData[4],
                select = function(btn)
              
                    BuyItem(weaponData[2])
                
                        
                        
  
                end
            })
        end

        local categoryButton = menu:AddButton({
            icon = '🔫',
            label = category,
            value = category,
            description = 'Browse ' .. category .. ' weapons',
            select = function(btn)
                categoryMenu:Open()
            end
        })
    end
 

end




function BuyItem(weaponHash)
        GiveWeaponToPed(PlayerPedId(), GetHashKey(weaponHash), 100, false, true)
        SetNotificationTextEntry("STRING")
        AddTextComponentString("You've received a " .. "~b~" .. weaponHash .. "~w~.")
        DrawNotification(true, true)
    end


local gunStoreMarkers = {}

function CreateGunStoreMarkers()
    for _, store in ipairs(config.gunStores) do
        local marker = {
            position = store.position,
            scale = vector3(1.0, 1.0, 1.0),
            color = { r = 255, g = 0, b = 0 },
            visible = true
        }

        table.insert(gunStoreMarkers, marker)
    end
end

function IsNearGunStoreMarker()
    local playerCoords = GetEntityCoords(PlayerPedId())

    for _, marker in ipairs(gunStoreMarkers) do
        local distance = #(playerCoords - marker.position)

        if distance < 3.0 then
            return true
        end
    end

    return false
end

CreateGunStoreMarkers()
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        if IsNearGunStoreMarker() then

       
            SetTextComponentFormat("STRING")
            AddTextComponentString("Press ~INPUT_PICKUP~ to open the gun store")
            DisplayHelpTextFromStringLabel(0, 0, 1, -1)

            if IsControlJustReleased(0, 38) then
                menu:ClearItems()
                CreateGunStoreButtons()
                menu:Open()
            end
        end
    end
end)
