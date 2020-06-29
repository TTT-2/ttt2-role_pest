if SERVER then
	AddCSLuaFile()

	resource.AddFile("materials/vgui/ttt/dynamic/roles/icon_pest.vmt")
end

ROLE.Base = "ttt_role_base"

roles.InitCustomTeam(ROLE.name, {
	icon = "vgui/ttt/dynamic/roles/icon_pest",
	color = Color(80, 25, 50, 255)
})

function ROLE:PreInitialize()
	self.color = Color(80, 25, 50, 255)

	self.abbr = "pest"
	self.surviveBonus = 0
	self.scoreKillsMultiplier = 1
	self.scoreTeamKillsMultiplier = -16
	self.preventFindCredits = false
	self.preventKillCredits = false
	self.preventTraitorAloneCredits = false
	self.notSelectable = true

	self.defaultTeam = TEAM_PESTILENCE

	self.conVarData = {
		pct = 0.17, -- necessary: percentage of getting this role selected (per player)
		maximum = 1, -- maximum amount of roles in a round
		minPlayers = 6, -- minimum amount of players until this role is able to get selected
		credits = 0, -- the starting credits of a specific role
		shopFallback = SHOP_DISABLED,
		togglable = true, -- option to toggle a role for a client if possible (F1 menu)
		traitorButton = 1, -- can use traitor buttons
		random = 50
	}
end

function ROLE:Initialize()
	roles.SetBaseRole(self, ROLE_PLAGUEHOST)
end
