-- Script chamando as funções da biblioteca

-- Requer as bibliotecas MathUtil, StringUtil e PlayersUtil
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local function requireModule(moduleName)
	local success, module = pcall(require, ReplicatedStorage:FindFirstChild(moduleName))
	if success then
		return module
	else
		warn("Erro ao carregar o módulo", moduleName, ":", module)
		return nil
	end
end

-- Carrega as bibliotecas
local MathUtil = requireModule("MathUtil")
local StringUtil = requireModule("StringUtil")
local PlayersUtil = requireModule("PlayersUtil")

-- Exemplo de uso das funções
local resultSum = MathUtil.Sum(5, 3)
local resultUpperCase = StringUtil.ToUpperCase("hello")

local localPlayer = game.Players.LocalPlayer
local friendsInServer = PlayersUtil.GetFriendsInServer(localPlayer)
local playersQuantity = PlayersUtil.GetPlayersQuantity()

-- Imprime os resultados
print("Resultado da soma: " .. resultSum)
print("Texto em maiúsculas: " .. resultUpperCase)

-- Imprime os resultados específicos de PlayersUtil
if friendsInServer then
	print("Amigos no servidor: " .. table.concat(friendsInServer, ", "))
else
	warn("Erro ao obter amigos no servidor")
end

if playersQuantity then
	print("Quantidade de jogadores: " .. playersQuantity)
else
	warn("Erro ao obter a quantidade de jogadores")
end
