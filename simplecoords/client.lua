-- Client-side script to copy player coordinates
RegisterKeyMapping('copyvector3', 'Copy Vector3 Coordinates', 'keyboard', 'L')
RegisterKeyMapping('copyvector4', 'Copy Vector4 Coordinates', 'keyboard', 'K')

RegisterCommand('copyvector3', function()
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    local vector3String = string.format("vector3(%.2f, %.2f, %.2f)", playerCoords.x, playerCoords.y, playerCoords.z)

    SendNUIMessage({
        action = 'copyToClipboard',
        text = vector3String
    })

    print('Copied Vector3 to clipboard:', vector3String)
end, false)

RegisterCommand('copyvector4', function()
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    local playerHeading = GetEntityHeading(playerPed)
    local vector4String = string.format("vector4(%.2f, %.2f, %.2f, %.2f)", playerCoords.x, playerCoords.y, playerCoords.z, playerHeading)

    SendNUIMessage({
        action = 'copyToClipboard',
        text = vector4String
    })

    print('Copied Vector4 to clipboard:', vector4String)
end, false)
