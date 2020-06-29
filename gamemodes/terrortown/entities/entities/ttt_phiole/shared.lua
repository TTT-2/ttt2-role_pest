if SERVER then
	AddCSLuaFile()
end

ENT.Type = "anim"
ENT.Model = Model("models/props_junk/PopCan01a.mdl")
ENT.CanHavePrints = true
ENT.CanUseKey = true

function ENT:Initialize()
	self:SetModel(self.Model)

	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)

	local phys = self:GetPhysicsObject()

	if IsValid(phys) then
		phys:Wake()
	end
end
