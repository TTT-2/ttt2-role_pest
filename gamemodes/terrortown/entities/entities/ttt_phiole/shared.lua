if SERVER then
	AddCSLuaFile()
end

ENT.Base = "base_anim"

ENT.model = Model("models/props_junk/PopCan01a.mdl")
ENT.CanHavePrints = true
ENT.CanUseKey = true

function ENT:Initialize()
	self:SetModel(self.model)

	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)

	local phys = self:GetPhysicsObject()

	if IsValid(phys) then
		phys:Wake()
	end
end
