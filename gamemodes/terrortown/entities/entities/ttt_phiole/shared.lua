if SERVER then
	AddCSLuaFile()
end

ENT.Base = "base_anim"

ENT.model = Model("models/props_junk/PopCan01a.mdl")
ENT.CanHavePrints = true
ENT.CanUseKey = true

if SERVER then
	local soundsPlace = {
		"phiole.place_1",
		"phiole.place_2",
		"phiole.place_3",
		"phiole.place_4",
		"phiole.place_5",
	}

	function ENT:Initialize()
		self:SetModel(self.model)

		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)

		local phys = self:GetPhysicsObject()

		if IsValid(phys) then
			phys:Wake()
		end

		self:EmitSound(table.Random(soundsPlace))
	end
end

if CLIENT then
	function ENT:Initialize()
		self:SetGlowColor(Color(105, 50, 65, 255))
	end

	function ENT:SetGlowColor(color)
		self.color = color
	end

	function ENT:LightUp(color)
		if not IsColor(color) then return end

		local dlight = DynamicLight(self:EntIndex())

		dlight.r = color.r
		dlight.g = color.g
		dlight.b = color.b

		dlight.brightness = 5
		dlight.Decay = 1000
		dlight.Size = 25
		dlight.DieTime = CurTime() + 0.1
		dlight.Pos = self:GetPos()
	end

	function ENT:Think()
		self:LightUp(self.color)
	end
end
