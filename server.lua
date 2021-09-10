local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","nyo_lojaderoupas")
vRPloja = Tunnel.getInterface("nyo_lojaderoupas")
nyo = Proxy.getInterface("nyo")


-----------------------------------------------------------------------------------------------------------------------------------------
-- PREPARE
-----------------------------------------------------------------------------------------------------------------------------------------
vRP._prepare("nyoLojaRoupas/getGuardaRoupa", "SELECT * FROM vrp_user_data WHERE user_id = @user_id AND dkey = 'nyo:GuardaRoupa'")
vRP._prepare("nyoLojaRoupas/setGuardaRoupa", "REPLACE INTO vrp_user_data(user_id,dkey,dvalue) VALUES(@user_id,'nyo:GuardaRoupa',@value)")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONEXÃO
-----------------------------------------------------------------------------------------------------------------------------------------
func = {}
Tunnel.bindInterface("nyo_lojaderoupas",func)

RegisterServerEvent("LojaDeRoupas:Comprar")
AddEventHandler("LojaDeRoupas:Comprar", function(preco, dataParts)
    local user_id = vRP.getUserId(source)
    local parts = json.decode(dataParts)
    if preco then
        if vRP.tryFullPayment(user_id,parseInt(preco)) then
            local dataParts = vRP.query("nyoLojaRoupas/getGuardaRoupa", {user_id = user_id})
            local playerParts = {}
                if #dataParts > 0 then 
                    playerParts = json.decode(dataParts[1]['dvalue'])
                end

            TriggerClientEvent("Notify",source,"sucesso","Você pagou <b>$"..preco.." dólares</b> em roupas e acessórios.",10000)

            for i = 1, 11 do 
                if(playerParts[tostring(i)]) then 
                    local partId = parts[tostring(i)][1]
                    if not playerParts[tostring(i)][tostring(partId)] then 
                        if parseInt(partId) >= 0 then
                            playerParts[tostring(i)][tostring(partId)] = true
                        end
                    end
                else
                    local partId = parts[tostring(i)][1]
                    if parseInt(partId) >= 0 then                     
                        playerParts[tostring(i)] = {}
                        playerParts[tostring(i)][tostring(partId)] = true
                    end
                end
            end   

            if(playerParts[tostring('p0')]) then 
                local partId = parts[tostring('p0')][1]
                if not playerParts[tostring('p0')][tostring(partId)] then 
                    if parseInt(partId) >= 0 then
                        playerParts[tostring('p0')][tostring(partId)] = true
                    end
                end
            else
                local partId = parts[tostring('p0')][1]
                if parseInt(partId) >= 0 then                     
                    playerParts[tostring('p0')] = {}
                    playerParts[tostring('p0')][tostring(partId)] = true
                end
            end

            if(playerParts[tostring('p1')]) then 
                local partId = parts[tostring('p1')][1]
                if not playerParts[tostring('p1')][tostring(partId)] then 
                    if parseInt(partId) >= 0 then
                        playerParts[tostring('p1')][tostring(partId)] = true
                    end
                end
            else
                local partId = parts[tostring('p1')][1]
                if parseInt(partId) >= 0 then                 
                    playerParts[tostring('p1')] = {}
                    playerParts[tostring('p1')][tostring(partId)] = true
                end
            end

            if(playerParts[tostring('p2')]) then 
                local partId = parts[tostring('p2')][1]
                if not playerParts[tostring('p2')][tostring(partId)] then 
                    if parseInt(partId) >= 0 then
                        playerParts[tostring('p2')][tostring(partId)] = true
                    end
                end
            else
                local partId = parts[tostring('p2')][1]
                if parseInt(partId) >= 0 then                     
                    playerParts[tostring('p2')] = {}
                    playerParts[tostring('p2')][tostring(partId)] = true
                end
            end

            if(playerParts[tostring('p6')]) then                 
                local partId = parts[tostring('p6')][1]                
                if not playerParts[tostring('p6')][tostring(partId)] then                    
                    if parseInt(partId) >= 0 then
                        playerParts[tostring('p6')][tostring(partId)] = true
                    end
                end
            else
                local partId = parts[tostring('p6')][1]
                if parseInt(partId) >= 0 then                     
                    playerParts[tostring('p6')] = {}
                    playerParts[tostring('p6')][tostring(partId)] = true
                end
            end

            if(playerParts[tostring('p7')]) then 
                local partId = parts[tostring('p7')][1]
                if not playerParts[tostring('p7')][tostring(partId)] then 
                    if parseInt(partId) >= 0 then
                        playerParts[tostring('p7')][tostring(partId)] = true
                    end
                end
            else
                local partId = parts[tostring('p7')][1]
                if parseInt(partId) >= 0 then                     
                    playerParts[tostring('p7')] = {}
                    playerParts[tostring('p7')][tostring(partId)] = true
                end
            end
            
            print(json.encode(playerParts['p1']))
            local setGuardaRoupa = vRP.execute("nyoLojaRoupas/setGuardaRoupa", { user_id = user_id, value = json.encode(playerParts)})
            
            if setGuardaRoupa == 2 then 
                local userSource = vRP.getUserSource(user_id)
                vRPloja.finalizarCompra(userSource, true)
            end
            
        else
            local userSource = vRP.getUserSource(user_id)
            TriggerClientEvent("Notify",source,"negado","Você não tem dinheiro suficiente",10000)
            vRPloja.finalizarCompra(userSource, false)
        end 
    end
end)


--------------------------------------------------
-- Check Procurado
function func.checkProcurado()
	local user_id = vRP.getUserId(source)
	return vRP.searchReturn(source,user_id)
end
--------------------------------------------------
