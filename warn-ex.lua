require 'warn'
local handlers = {}

function handlers.nginx(warn)
	if ngx and ngx.log then
		return function(...)
			if select('#', ...) == 1 and (...):byte()==64 then
				-- Do Nothing; we're gonna print either way :D
			else
				ngx.log(ngx.WARN, table.concat({...}, ' '))
			end
		end
	end
end

-- Pick the first handler that feels up to the task
for name, handler in pairs(handlers) do
	local result = handler(warn)
	if result then
		warn = result
	end
end
