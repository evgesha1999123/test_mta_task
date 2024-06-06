function salutations_sir ( )
	local player_name = getPlayerName ( source )
	outputChatBox ( "Добро пожаловать, " .. player_name .."!" )
end

function rgb_message( player, cmd, r, g, b, text )  
		if cmd == 'chatmessage' then
			r = tonumber(r)
			g = tonumber(g)
			b = tonumber(b)

			if (r == nil) or (g == nil) or (b == nil) then 
				outputChatBox('[использование] /chatmessage [r] [g] [b] in range from 0 to 255 [text]', player)
			end

			if (r ~= nil) and (g ~= nil) and (b ~= nil) then
				if (r >= 0 and r <= 255) and (g >= 0 and g <= 255) and (b >= 0 and b <= 255) and (text ~= nil) then
					outputChatBox(text, player, r, g, b, true)
				else outputChatBox('[использование] /chatmessage [r] [g] [b] in range from 0 to 255 [text]', player)
				end
			end

		end
end

addEventHandler ( "onPlayerJoin", root, salutations_sir )

addCommandHandler ( "chatmessage", rgb_message ) 
--Спасибо за внимание =)
