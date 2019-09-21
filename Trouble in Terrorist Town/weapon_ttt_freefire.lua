AddCSLuaFile()

SWEP.HoldType              = "pistol"

if CLIENT then
   SWEP.PrintName          = "Freefire Pistol"
   SWEP.Slot               = 1

   SWEP.ViewModelFlip      = false
   SWEP.ViewModelFOV       = 54

   SWEP.EquipMenuData = {
      type = "item_weapon",
      desc = "An unlimited ammo emergancy detective pistol."
   };

   SWEP.Icon               = "vgui/ttt/icon_silenced"
   SWEP.IconLetter         = "a"
end

SWEP.Base                  = "weapon_tttbase"

SWEP.Primary.Recoil        = 0.9
SWEP.Primary.Damage        = 12
SWEP.Primary.Delay         = 0.10
SWEP.Primary.Cone          = 0.028
SWEP.Primary.ClipSize      = 100
SWEP.Primary.Automatic     = true
SWEP.Primary.DefaultClip   = 100
SWEP.Primary.ClipMax       = -1
SWEP.Primary.Ammo          = "none"
SWEP.Primary.Sound         = Sound( "Weapon_Glock.Single" )


SWEP.Kind                  = WEAPON_PISTOL
SWEP.CanBuy                = {ROLE_DETECTIVE} -- only detectives can buy
SWEP.WeaponID              = AMMO_FREEFIRE

SWEP.AmmoEnt               = "none"
SWEP.IsSilent              = true

SWEP.UseHands              = true
SWEP.ViewModel             = "models/weapons/cstrike/c_pist_usp.mdl"
SWEP.WorldModel            = "models/weapons/w_pist_usp_silencer.mdl"

SWEP.IronSightsPos         = Vector( -5.91, -4, 2.84 )
SWEP.IronSightsAng         = Vector(-0.5, 0, 0)

SWEP.PrimaryAnim           = ACT_VM_PRIMARYATTACK
SWEP.ReloadAnim            = ACT_VM_RELOAD

SWEP.HeadshotMultiplier    = 1.0

function SWEP:Deploy()
   self:SendWeaponAnim(ACT_VM_DRAW_SILENCED)
   return self.BaseClass.Deploy(self)
end
