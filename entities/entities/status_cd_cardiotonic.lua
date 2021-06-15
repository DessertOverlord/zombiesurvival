AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "status__base"

function ENT:Think()
    local owner = self.GetOwner()

    owner.CardiotonicCD = true

    if self.DieTime <= CurTime() then
        owner.CardiotonicCD = nil
        self:Remove()
	end
end