if SERVER then
	AddCSLuaFile()
end

if CLIENT then
	SWEP.ViewModelFOV = 10
	SWEP.ViewModelFlip = false
	SWEP.DrawCrosshair = false

	SWEP.EquipMenuData = {
		type = "item_weapon",
		name = "ttt2_weapon_phiole_name",
		desc = "ttt2_weapon_ankh_desc"
	}

	SWEP.Icon = "vgui/ttt/icon_phiole"
end

SWEP.Base = "weapon_tttbase"

SWEP.HoldType = "normal"

SWEP.ViewModel = "models/weapons/v_crowbar.mdl"
SWEP.WorldModel = "models/props_lab/reciever01b.mdl"

SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "none"
SWEP.Primary.Delay = 1.0

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = true
SWEP.Secondary.Ammo = "none"
SWEP.Secondary.Delay = 1.0

SWEP.Kind = WEAPON_EXTRA
SWEP.CanBuy = nil
SWEP.LimitedStock = true -- only buyable once

SWEP.AllowDrop = false
SWEP.NoSights = true

function SWEP:Initialize()
	self.nextPrimarayAttack = 0
end

function SWEP:OnDrop()
	self:Remove()
end

function SWEP:SpawnPhiole(pos)
	local phiole = ents.Create("ttt_phiole")
	phiole:SetPos(pos)
	phiole:Spawn()
	phiole:Activate()

	return phiole
end

function SWEP:PrimaryAttack()
	if CLIENT then return end

	if CurTime() < self.nextPrimarayAttack then return end

	self.nextPrimarayAttack = CurTime() + 0.25

	local owner = self:GetOwner()
	local phiole = self:SpawnPhiole(owner:GetShootPos() + owner:GetAimVector() * 10)
	local phys = phiole:GetPhysicsObject()

	phys:ApplyForceCenter(owner:GetAimVector() * 500)
end

function SWEP:SecondaryAttack()
	if CLIENT then return end

	local owner = self:GetOwner()
	local spos = owner:GetShootPos()
	local epos = spos + owner:GetAimVector() * 100

	local tr = util.TraceLine({
		start = spos,
		endpos = epos,
		filter = {owner, self},
		mask = MASK_SOLID
	})

	if not tr.Hit then return end

	self:SpawnPhiole(tr.HitPos + tr.HitNormal * 10)
end
