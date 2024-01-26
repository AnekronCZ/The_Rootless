-- #textdomain wesnoth-rtl

local _ = wesnoth.textdomain "wesnoth-rtl"
local old_unit_status = wesnoth.interface.game_display.unit_status

function wesnoth.interface.game_display.unit_status()
	local u = wesnoth.interface.get_displayed_unit()
	if not u then return {} end
	local s = old_unit_status()
    if u.status.rtlfrozen then
        table.insert(s, { "element", {
            image = "misc/frozen-status-icon.png",
            tooltip = _"frozen: This unit is frozen. It cannot move or attack."
        } })
    end
	return s
end
