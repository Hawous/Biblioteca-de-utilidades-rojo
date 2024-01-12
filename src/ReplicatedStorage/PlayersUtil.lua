-- PlayersUtil

local PlayersUtil = {}

function PlayersUtil.GetFriendsInServer(player)
	local friends = {}

	for _, otherPlayer in pairs(game.Players:GetPlayers()) do
		if otherPlayer ~= player and player:IsFriendsWith(otherPlayer.UserId) then
			table.insert(friends, otherPlayer.Name)
		end
	end

	return friends
end

function PlayersUtil.GetPlayersQuantity()
	return #game.Players:GetPlayers()
end

return PlayersUtil
