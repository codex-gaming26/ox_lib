local printFunction = false

--[[
	-- printFunction = true
local poly = lib.zones.poly({
	name = poly,
	points = {
		vec(447.9, -998.8, 25.8),
		vec(450.3, -998.2, 25.8),
		vec(449.9, -995.5, 25.8),
		vec(447.2, -995.6, 25.8),
		vec(446.3, -997.9, 25.8),
	},
	thickness = 2,
})
	-- printFunction = false
{
	name = poly,
	points = {
		vec(447.9, -998.8, 25.8),
		vec(450.3, -998.2, 25.8),
		vec(449.9, -995.5, 25.8),
		vec(447.2, -995.6, 25.8),
		vec(446.3, -997.9, 25.8),
	},
	thickness = 2,
},
]]

local parse = {
	poly = function(data)
		local points = {}
		for i = 1, #data.points do
			points[#points + 1] = ('\t\tvec3(%s, %s, %s),\n'):format((data.points[i].x), (data.points[i].y), data.zCoord)
		end

		local pattern
		if printFunction then
			pattern = {
				'local poly = lib.zones.poly({\n',
				('\tname = "%s",\n'):format(data.name or 'none'),
				'\tpoints = {\n',
				('%s\t},\n'):format(table.concat(points)),
				('\tthickness = %s,\n'):format(data.height),
				'})\n',
			}
		else
			pattern = {
				'{\n',
				('\tname = "%s",\n'):format(data.name or 'none'),
				'\tpoints = {\n',
				('%s\t},\n'):format(table.concat(points)),
				('\tthickness = %s,\n'):format(data.height),
				'},\n'
			}
		end

		return table.concat(pattern)
	end,
	box = function(data)
		local pattern
		if printFunction then
			pattern = {
				'local box = lib.zones.box({\n',
				('\tname = "%s",\n'):format(data.name or 'none'),
				('\tcoords = vec3(%s, %s, %s),\n'):format(data.xCoord, data.yCoord, data.zCoord),
				('\tsize = vec3(%s, %s, %s),\n'):format(data.width, data.length, data.height),
				('\trotation = %s,\n'):format(data.heading),
				'})\n',
			}
		else
			pattern = {
				'{\n',
				('\tname = "%s",\n'):format(data.name or 'none'),
				('\tcoords = vec3(%s, %s, %s),\n'):format(data.xCoord, data.yCoord, data.zCoord),
				('\tsize = vec3(%s, %s, %s),\n'):format(data.width, data.length, data.height),
				('\trotation = %s,\n'):format(data.heading),
				'},\n',
			}
		end

		return table.concat(pattern)
	end,
	sphere = function(data)
		local pattern
		if printFunction then
			pattern = {
				'local sphere = lib.zones.sphere({\n',
				('\tname = "%s",\n'):format(data.name or 'none'),
				('\tcoords = vec3(%s, %s, %s),\n'):format(data.xCoord, data.yCoord, data.zCoord),
				('\tradius = %s,\n'):format(data.heading),
				'})\n',
			}
		else
			pattern = {
				'{\n',
				('\tname = "%s",\n'):format(data.name or 'none'),
				('\tcoords = vec3(%s, %s, %s),\n'):format(data.xCoord, data.yCoord, data.zCoord),
				('\tradius = %s,\n'):format(data.heading),
				'},\n',
			}
		end

		return table.concat(pattern)
	end,
}

RegisterNetEvent('ox_lib:saveZone', function(data)
    if not source or not IsPlayerAceAllowed(source, 'command') then return end
    local output = (LoadResourceFile(cache.resource, 'created_zones.lua') or '') .. parse[data.zoneType](data)
    SaveResourceFile(cache.resource, 'created_zones.lua', output, -1)
end)
