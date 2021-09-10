local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRPrp = {}
vRP = Proxy.getInterface("vRP")
vRPserver = Tunnel.getInterface("vRP")
Tunnel.bindInterface("nyo_lojaderoupas", vRPrp)

emP = Tunnel.getInterface("nyo_lojaderoupas")

local lojaderoupa = {
    -- LOJA DE ROUPA 01
    { name = "Loja de Roupas", id = 73, color = 13, x = 70.87, y = -1399.49, z = 29.39, provador = {x = 70.87, y = -1399.49, z = 29.39, heading = 359.29}},
    { name = "Loja de Roupas", x = 72.41, y = -1399.49, z = 29.39, provador = {x = 72.41, y = -1399.49, z = 29.39, heading = 356.65}},
    { name = "Loja de Roupas", x = 73.85, y = -1399.49, z = 29.39, provador = {x = 73.85, y = -1399.49, z = 29.39, heading = 3.41}},
    { name = "Loja de Roupas", x = 75.37, y = -1399.49, z = 29.39, provador = {x = 75.37, y = -1399.49, z = 29.39, heading = 0.1}},

    -- LOJA DE ROUPA 02
    { name = "Loja de Roupas", id = 73, color = 13, x = 430.1, y = -799.67, z = 29.52, provador = {x = 430.1, y = -799.67, z = 29.52, heading = 177.1}},
    { name = "Loja de Roupas", x = 428.62, y = -799.67, z = 29.52, provador = {x = 428.62, y = -799.67, z = 29.52, heading = 173.11}},
    { name = "Loja de Roupas", x = 427.06, y = -799.67, z = 29.52, provador = {x = 427.06, y = -799.67, z = 29.52, heading = 192.52}},
    { name = "Loja de Roupas", x = 425.62, y = -799.67, z = 29.52, provador = {x = 425.62, y = -799.67, z = 29.52, heading = 181.76}},

    -- LOJA DE ROUPA 03
    { name = "Loja de Roupas", id = 73, color = 13, x = 128.63, y = -220.14, z = 54.56, provador = {x = 128.63, y = -220.14, z = 54.56, heading = 115.46}},
    { name = "Loja de Roupas", x = 129.23, y = -218.53, z = 54.56, provador = {x = 129.23, y = -218.53, z = 54.56, heading = 107.44}},
    { name = "Loja de Roupas", x = 129.94, y = -216.27, z = 54.56, provador = {x = 129.94, y = -216.27, z = 54.56, heading = 128.95}},
    { name = "Loja de Roupas", x = 130.7, y = -214.05, z = 54.56, provador = {x = 130.7, y = -214.05, z = 54.56, heading = 95.77}},

    -- LOJA DE ROUPA 04
    { name = "Loja de Roupas", id = 73, color = 13, x = -165.9, y = -310.94, z = 39.74, provador = {x = -165.9, y = -310.94, z = 39.74, heading = 248.85}},
    { name = "Loja de Roupas", x = -165.6, y = -309.52, z = 39.74, provador = {x = -165.6, y = -309.52, z = 39.74, heading = 251.32}},
    { name = "Loja de Roupas", x = -165.09, y = -308.15, z = 39.74, provador = {x = -165.09, y = -308.15, z = 39.74, heading = 213.57}},
    { name = "Loja de Roupas", x = -164.74, y = -306.74, z = 39.74, provador = {x = -164.74, y = -306.74, z = 39.74, heading = 286.29}},

    -- LOJA DE ROUPA 05
    { name = "Loja de Roupas", id = 73, color = 13, x = -830.4, y = -1072.88, z = 11.33, provador = {x = -830.4, y = -1072.88, z = 11.33, heading = 292.33}},
    { name = "Loja de Roupas", x = -829.63, y = -1074.25, z = 11.33, provador = {x = -829.63, y = -1074.25, z = 11.33, heading = 311.26}},
    { name = "Loja de Roupas", x = -828.85, y = -1075.51, z = 11.33, provador = {x = -828.85, y = -1075.51, z = 11.33, heading = 304.74}},
    { name = "Loja de Roupas", x = -828.07, y = -1076.79, z = 11.33, provador = {x = -828.07, y = -1076.79, z = 11.33, heading = 312.29}},

    -- LOJA DE ROUPA 06
    { name = "Loja de Roupas", id = 73, color = 13, x = -714.24, y = -145.74, z = 37.42, provador = {x = -714.24, y = -145.74, z = 37.42, heading = 141.83}},
    { name = "Loja de Roupas", x = -713.1, y = -147.37, z = 37.42, provador = {x = -713.1, y = -147.37, z = 37.42, heading = 130.49}},
    { name = "Loja de Roupas", x = -712.46, y = -148.6, z = 37.42, provador = {x = -712.46, y = -148.6, z = 37.42, heading = 80.07}},
    { name = "Loja de Roupas", x = -711.74, y = -149.56, z = 37.42, provador = {x = -711.74, y = -149.56, z = 37.42, heading = 178.12}},

    -- LOJA DE ROUPA 07
    { name = "Loja de Roupas", id = 73, color = 13, x = -1198.0, y = -769.28, z = 17.32, provador = {x = -1198.0, y = -769.28, z = 17.32, heading = 222.52}}, 
    { name = "Loja de Roupas", x = -1199.6, y = -770.57, z = 17.32, provador = {x = -1199.6, y = -770.57, z = 17.32, heading = 217.49}}, 
    { name = "Loja de Roupas", x = -1201.26, y = -771.96, z = 17.32, provador = {x = -1201.26, y = -771.96, z = 17.32, heading = 179.08}}, 
    { name = "Loja de Roupas", x = -1202.65, y = -773.12, z = 17.32, provador = {x = -1202.65, y = -773.12, z = 17.32, heading = 214.11}}, 

    -- LOJA DE ROUPA 08 
    { name = "Loja de Roupas", id = 73, color = 13, x = -1448.24, y = -235.21, z = 49.82, provador = {x = -1448.24, y = -235.21, z = 49.82, heading = 95.97}},
    { name = "Loja de Roupas", x = -1446.95, y = -233.58, z = 49.82, provador = {x = -1446.95, y = -233.58, z = 49.82, heading = 10.74}},
    { name = "Loja de Roupas", x = -1445.87, y = -232.37, z = 49.82, provador = {x = -1445.87, y = -232.37, z = 49.82, heading = 56.05}},
    { name = "Loja de Roupas", x = -1444.85, y = -231.29, z = 49.82, provador = {x = -1444.85, y = -231.29, z = 49.82, heading = 50.59}},

    -- LOJA DE ROUPA 09
    { name = "Loja de Roupas", id = 73, color = 13, x = -3167.29, y = 1047.19, z = 20.87, provador = {x = -3167.29, y = 1047.19, z = 20.87, heading = 84.66}},
    { name = "Loja de Roupas", x = -3166.22, y = 1049.4, z = 20.87, provador = {x = -3166.22, y = 1049.4, z = 20.87, heading = 95.4}},
    { name = "Loja de Roupas", x = -3165.14, y = 1051.79, z = 20.87, provador = {x = -3165.14, y = 1051.79, z = 20.87, heading = 74.04}},
    { name = "Loja de Roupas", x = -3164.5, y = 1053.44, z = 20.87, provador = {x = -3164.5, y = 1053.44, z = 20.87, heading = 66.15}},

    -- LOJA DE ROUPA 10
    { name = "Loja de Roupas", id = 73, color = 13, x = -1109.44, y = 2709.55, z = 19.11, provador = {x = -1109.44, y = 2709.55, z = 19.11, heading = 311.52}},
    { name = "Loja de Roupas", x = -1108.37, y = 2708.43, z = 19.11, provador = {x = -1108.37, y = 2708.43, z = 19.11, heading = 314.75}},
    { name = "Loja de Roupas", x = -1107.43, y = 2707.32, z = 19.11, provador = {x = -1107.43, y = 2707.32, z = 19.11, heading = 307.39}},
    { name = "Loja de Roupas", x = -1106.33, y = 2706.17, z = 19.11, provador = {x = -1106.33, y = 2706.17, z = 19.11, heading = 325.3}},

    -- LOJA DE ROUPA 11
    { name = "Loja de Roupas", id = 73, color = 13, x = 612.87, y = 2758.49, z = 42.09, provador = {x = 612.87, y = 2758.49, z = 42.09, heading = 292.48}},
    { name = "Loja de Roupas", x = 613.12, y = 2756.56, z = 42.09, provador = {x = 613.12, y = 2756.56, z = 42.09, heading = 283.19}},
    { name = "Loja de Roupas", x = 613.13, y = 2753.29, z = 42.09, provador = {x = 613.13, y = 2753.29, z = 42.09, heading = 264.95}},
    { name = "Loja de Roupas", x = 613.26, y = 2751.39, z = 42.09, provador = {x = 613.26, y = 2751.39, z = 42.09, heading = 280.25}},
    
    -- LOJA DE ROUPA 12
    { name = "Loja de Roupas", id = 73, color = 13, x = 1190.08, y = 2714.76, z = 38.23, provador = {x = 1190.08, y = 2714.76, z = 38.23, heading = 267.87}},
    { name = "Loja de Roupas", x = 1190.18, y = 2713.24, z = 38.23, provador = {x = 1190.18, y = 2713.24, z = 38.23, heading = 276.04}},
    { name = "Loja de Roupas", x = 1190.09, y =  2711.73, z = 38.23, provador = {x = 1190.09, y =  2711.73, z = 38.23, heading = 280.45}},
    { name = "Loja de Roupas", x = 1190.07, y = 2710.23, z = 38.23, provador = {x = 1190.07, y = 2710.23, z = 38.23, heading = 283.45}},

    -- LOJA DE ROUPA 13
    { name = "Loja de Roupas", id = 73, color = 13, x = 1697.49, y = 4829.94, z = 42.07, provador = {x = 1697.49, y = 4829.94, z = 42.07, heading = 179.54}},
    { name = "Loja de Roupas", x = 1695.95, y = 4829.75, z = 42.07, provador = {x = 1695.95, y = 4829.75, z = 42.07, heading = 201.35}},
    { name = "Loja de Roupas", x = 1694.54, y = 4829.57, z = 42.07, provador = {x = 1694.54, y = 4829.57, z = 42.07, heading = 186.38}},
    { name = "Loja de Roupas", x = 1693.04, y = 4829.35, z = 42.07, provador = {x = 1693.04, y = 4829.35, z = 42.07, heading = 190.91}},

     -- LOJA DE ROUPA 14
     { name = "Loja de Roupas", id = 73, color = 13, x = 12.7, y = 6513.6, z = 31.878, provador = {x = 12.7, y = 6513.6, z = 31.878, heading = 134.57}},    
     { name = "Loja de Roupas", x = 11.7, y = 6514.76, z = 31.878, provador = {x = 11.7, y = 6514.76, z = 31.878, heading = 134.28}},    
     { name = "Loja de Roupas", x = 10.74, y = 6515.8, z = 31.878, provador = {x = 10.74, y = 6515.8, z = 31.878, heading = 138.6}},    
     { name = "Loja de Roupas", x = 9.66, y = 6516.88, z = 31.878, provador = {x = 9.66, y = 6516.88, z = 31.878, heading = 150.98}},  
}  
local parts = {
    mascara = 1,
    mao = 3,
    calca = 4,
    mochila = 5,
    sapato = 6,
    gravata = 7,
    camisa = 8,
    jaqueta = 11,
    bone = "p0",
    oculos = "p1",
    brinco = "p2",
    relogio = "p6",
    bracelete = "p7"
}

local carroCompras = {
    mascara = false,
    mao = false,
    calca = false,
    mochila = false,
    sapato = false,
    gravata = false,
    camisa = false,
    jaqueta = false,
    bone = false,
    oculos = false,
    brinco = false,
    relogio = false,
    bracelete = false
}

local old_custom = {}
local nCustom = {}

local valor = 0
local precoTotal = 0

local in_loja = false
local atLoja = false

-- Provador
local chegou = false
local noProvador = false

-- Cam controll
local pos = nil
local camPos = nil
local cam = -1
local dataPart = 1
local texturaSelected = 0
local handsup = false
local cooldown = 0

function SetCameraCoords()
    local ped = PlayerPedId()
	RenderScriptCams(false, false, 0, 1, 0)
    DestroyCam(cam, false)
    
	if not DoesCamExist(cam) then
        cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
		SetCamActive(cam, true)
        RenderScriptCams(true, true, 500, true, true)

        pos = GetEntityCoords(PlayerPedId())
        camPos = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, 0.0)
        SetCamCoord(cam, camPos.x, camPos.y, camPos.z+0.75)
        PointCamAtCoord(cam, pos.x, pos.y, pos.z+0.15)
    end

end

function DeleteCam()
	SetCamActive(cam, false)
	RenderScriptCams(false, true, 0, true, true)
	cam = nil
end

RegisterNUICallback("changePart", function(data, cb)
    dataPart = parts[data.part]
    local ped = PlayerPedId()
    if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
        SendNUIMessage({ 
            changeCategory = true, 
            sexo = "Male", prefix = "M", 
            drawa = vRP.getDrawables(dataPart), category = dataPart,
        })
    elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then 
        SendNUIMessage({ 
            changeCategory = true, 
            sexo = "Female", prefix = "F", 
            drawa = vRP.getDrawables(dataPart), category = dataPart,
        })
    end
end)

CreateThread(function()
    criarBlip()
end)

CreateThread(function()
    while true do
        local sleep = 1000
        local ped = PlayerPedId()
        local playerCoords = GetEntityCoords(ped, true)
        
        for k, v in pairs(lojaderoupa) do
            local provador = lojaderoupa[k].provador
            if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, lojaderoupa[k].x, lojaderoupa[k].y, lojaderoupa[k].z, true ) <= 8 and not in_loja and (cooldown == 0) then
                sleep = 4
                DrawMarker(27,lojaderoupa[k].x,lojaderoupa[k].y,lojaderoupa[k].z-1,0,0,0,0,180.0,130.0,1.0,1.0,1.0,255,0,0,75,0,0,0,1)
               -- DrawText3D(lojaderoupa[k].x, lojaderoupa[k].y, lojaderoupa[k].z-0.1, "~b~[Loja de Roupas]\n~w~Pressione ~g~[E]~w~ para acessar a loja")
            end

            if GetDistanceBetweenCoords(GetEntityCoords(ped), lojaderoupa[k].x, lojaderoupa[k].y, lojaderoupa[k].z, true ) < 1 then
                if IsControlJustPressed(0, 38) --[[ and emP.Procurado() ]]  then

                    valor = 0
                    precoTotal = 0
                    noProvador = true
                    old_custom = vRP.getCustomization()
                    Citizen.Wait(40)
                    nCustom = old_custom
                    old = {}

                    lojaProvador()

                    cor = 0
		            dados, tipo = nil

                    TaskGoToCoordAnyMeans(ped, provador.x, provador.y, provador.z, 1.0, 0, 0, 786603, 0xbf800000)
                end
            end

            if noProvador then
                if GetDistanceBetweenCoords(GetEntityCoords(ped), provador.x, provador.y, provador.z, true ) < 0.5 and not chegou then
                    chegou = true

                    valor = 0
                    precoTotal = 0
                    SetEntityHeading(PlayerPedId(), provador.heading)
                    FreezeEntityPosition(ped, true)
                    SetEntityInvincible(ped, false) --MQCU
                    openGuiLojaRoupa()
                end
            end
        end
        Citizen.Wait(sleep)
    end
end)

CreateThread(function()
    while true do 
        if cooldown > 0 then             
            cooldown = cooldown - 1
        end
        Citizen.Wait(1000)
    end
end)

function openGuiLojaRoupa()
    local ped = PlayerPedId()
    SetNuiFocus(true, true)
    SetCameraCoords()
    if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
        SendNUIMessage({ 
            openLojaRoupa = true, 
            sexo = "Male", prefix = "M", 
            drawa = vRP.getDrawables(dataPart), category = dataPart,
            oldCustom = nCustom
        })
    elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then 
        SendNUIMessage({ 
            openLojaRoupa = true, 
            sexo = "Female", prefix = "F", 
            drawa = vRP.getDrawables(dataPart), category = dataPart,
            oldCustom = nCustom
        })
    end
    in_loja = true
end

RegisterNUICallback("leftHeading", function(data, cb)
    local currentHeading = GetEntityHeading(PlayerPedId())
    heading = currentHeading-tonumber(data.value)
    SetEntityHeading(PlayerPedId(), heading)
end)

RegisterNUICallback("handsUp", function(data, cb)
    local dict = "missminuteman_1ig_2"
    
	RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		Citizen.Wait(100)
    end
    
    if not handsup then
        TaskPlayAnim(PlayerPedId(), dict, "handsup_enter", 8.0, 8.0, -1, 50, 0, false, false, false)
        handsup = true
    else
        handsup = false
        ClearPedTasks(PlayerPedId())
    end
end)

RegisterNUICallback("rightHeading", function(data, cb)
    local currentHeading = GetEntityHeading(PlayerPedId())
    heading = currentHeading+tonumber(data.value)
    SetEntityHeading(PlayerPedId(), heading)
end)

function updateCarroCompras()
    valor = 0
    for k, v in pairs(carroCompras) do
        if carroCompras[k] == true then
            valor = valor + 300
        end
    end
    precoTotal = valor
    return valor
end

RegisterNUICallback("changeColor", function(data, cb)
    if type(dados) == "number" then
        max = GetNumberOfPedTextureVariations(PlayerPedId(), dados, tipo)
    elseif type(dados) == "string" then
        max = GetNumberOfPedPropTextureVariations(PlayerPedId(), parse_part(dados), tipo)
    end

    if data.action == "menos" then
        if cor > 0 then cor = cor - 1 else cor = max end
    elseif data.action == "mais" then
        if cor < max then cor = cor + 1 else cor = 0 end
    end
    if dados and tipo then 
            setRoupa(dados, tipo, cor) 
            SendNUIMessage({ 
                atualizaRoupa = true, 
                type = tipo,
                color = cor
            })
    end
end)

function changeClothe(type, id, color)
    dados = type
    tipo = tonumber(parseInt(id))
	cor = color
    setRoupa(dados, tipo, cor)
end

function setRoupa(dados, tipo, cor)
    local ped = PlayerPedId()

    if type(dados) == "number" then
		SetPedComponentVariation(ped, dados, tipo, cor, 1)
    elseif type(dados) == "string" then
        SetPedPropIndex(ped, parse_part(dados), tipo, cor, 1)
        dados = "p" .. (parse_part(dados))
	end
	  
  	custom = vRP.getCustomization()
  	custom.modelhash = nil

	aux = old_custom[dados]
	v = custom[dados]

    if v[1] ~= aux[1] and old[dados] ~= "custom" then
        carroCompras[dados] = true
        price = updateCarroCompras()
        SendNUIMessage({ action = "setPrice", price = price, typeaction = "add" })
    	old[dados] = "custom"
    end
    if v[1] == aux[1] and old[dados] == "custom" then
        carroCompras[dados] = false
        price = updateCarroCompras()
        SendNUIMessage({ action = "setPrice", price = price, typeaction = "remove" })
    	old[dados] = "0"
	end

	SendNUIMessage({ value = price })
end

RegisterNUICallback("changeCustom", function(data, cb)
    changeClothe(data.type, data.id, data.color)
end)

RegisterNUICallback("payament", function(data, cb)
    carroCompras = {
        mascara = false,
        mao = false,
        calca = false,
        mochila = false,
        sapato = false,
        gravata = false,
        camisa = false,
        jaqueta = false,
        bone = false,
        oculos = false,
        brinco = false,
        relogio = false,
        bracelete = false
    }
    TriggerServerEvent("LojaDeRoupas:Comprar", tonumber(data.price), json.encode(data.parts)) 
end)

RegisterNUICallback("reset", function(data, cb)
    vRP.setCustomization(old_custom)
    closeGuiLojaRoupa()
    ClearPedTasks(PlayerPedId())
end)

function closeGuiLojaRoupa()
    local ped = PlayerPedId()
    DeleteCam()
    SetNuiFocus(false, false)
    SendNUIMessage({ openLojaRoupa = false })
    FreezeEntityPosition(ped, false)
    SetEntityInvincible(ped, false)
    PlayerReturnInstancia()
    SendNUIMessage({ action = "setPrice", price = 0, typeaction = "remove" })
    
    in_loja = false
    noProvador = false
    chegou = false
    old_custom = {}
end


function vRPrp.finalizarCompra(comprar) 
    if comprar then
        in_loja = false
        cooldown = 5
        closeGuiLojaRoupa()
    else
        in_loja = false
        vRP.setCustomization(old_custom)
        cooldown = 5
        closeGuiLojaRoupa()
    end
end

function parse_part(key)
    if type(key) == "string" and string.sub(key, 1, 1) == "p" then
        return tonumber(string.sub(key, 2))
    else
        return false, tonumber(key)
    end
end

function PlayerInstancia()
    for _, player in ipairs(GetActivePlayers()) do
        local ped = PlayerPedId()
        local otherPlayer = GetPlayerPed(player)
        if ped ~= otherPlayer then
            SetEntityVisible(otherPlayer, false)
            SetEntityNoCollisionEntity(ped, otherPlayer, true)
        end
    end
end

function PlayerReturnInstancia()
    for _, player in ipairs(GetActivePlayers()) do
        local ped = PlayerPedId()
        local otherPlayer = GetPlayerPed(player)
        if ped ~= otherPlayer then
            SetEntityVisible(otherPlayer, true)
            SetEntityCollision(ped, true)
        end
    end
end

function criarBlip()
    for _, item in pairs(lojaderoupa) do
        if item.id then 
            item.blip = AddBlipForCoord(item.x, item.y, item.z)
            SetBlipSprite(item.blip, item.id)
            SetBlipColour(item.blip, item.color)
            SetBlipScale(item.blip, 0.5)
            SetBlipAsShortRange(item.blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(item.name)
            EndTextCommandSetBlipName(item.blip)
        end       
    end
end

function DrawText3D(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
end

function lojaProvador() 
    Citizen.CreateThread(function()
        while true do
            if noProvador then
                PlayerInstancia()
                DisableControlAction(1, 1, true)
                DisableControlAction(1, 2, true)
                DisableControlAction(1, 24, true)
                DisablePlayerFiring(PlayerPedId(), true)
                DisableControlAction(1, 142, true)
                DisableControlAction(1, 106, true)
                DisableControlAction(1, 37, true)
            else 
                break
            end
            Citizen.Wait(4)
        end
    end)
end

Citizen.CreateThread(function()
    while true do
        N_0xf4f2c0d4ee209e20()
        Citizen.Wait(1000)
    end
end)

AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        closeGuiLojaRoupa()
    end
end)