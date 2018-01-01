script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index]
	
	if defines.controllers.god == player.controller_type then
		return
	end
	if defines.controllers.ghost == player.controller_type then
		return
	end

	local items
	local armor

	items = {
		{"modular-armor", 1},
		{"construction-robot", 20},
	}
	armor = {
		{"personal-roboport-equipment"},
		{"personal-roboport-equipment"},
		{"battery-equipment"},
		{"solar-panel-equipment"},
		{"solar-panel-equipment"},
		{"solar-panel-equipment"},
		{"solar-panel-equipment"},
		{"solar-panel-equipment"},
		{"solar-panel-equipment"},
		{"solar-panel-equipment"},
		{"solar-panel-equipment"},
		{"solar-panel-equipment"},
		{"solar-panel-equipment"},
		{"solar-panel-equipment"},
		{"solar-panel-equipment"},
		{"solar-panel-equipment"},
		{"solar-panel-equipment"},
		{"solar-panel-equipment"},
	}

	for i, v in pairs(items) do
		player.insert{name = v[1], count = v[2]}
	end

	local grid = player.get_inventory(defines.inventory.player_armor)[1].grid
	for  i, v in pairs(armor) do
		grid.put({name = v[1]})
	end

end)
