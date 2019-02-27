script.on_event(defines.events.on_player_created, function(event)
	local items
	local armor

	items = {
		{"power-armor-mk2", 1},
		{"construction-robot", 50},
	}
	armor = {
		{"fusion-reactor-equipment"},
		{"fusion-reactor-equipment"},
		{"personal-roboport-mk2-equipment"},
		{"personal-roboport-mk2-equipment"},
		{"fusion-reactor-equipment"},
		{"fusion-reactor-equipment"},
		{"personal-roboport-mk2-equipment"},
		{"personal-roboport-mk2-equipment"},
		{"battery-mk2-equipment"},
		{"battery-mk2-equipment"},
		{"energy-shield-mk2-equipment"},
		{"energy-shield-mk2-equipment"},
		{"energy-shield-mk2-equipment"},
		{"energy-shield-mk2-equipment"},
	}

	local player = game.players[event.player_index]
	for i, v in pairs(items) do
		player.insert{name = v[1], count = v[2]}
    end

	local grid = player.get_inventory(defines.inventory.player_armor)[1].grid
	for  i, v in pairs(armor) do
		grid.put({name = v[1]})
	end

end)
