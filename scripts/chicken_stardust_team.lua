
include "constants.lua"

local base = piece 'base'
local body = piece 'body'
local turret = piece 'turret'
local sleeve = piece 'sleeve'
local barrel = piece 'barrel'
local flare = piece 'flare'

local SIG_Aim = 2

local function RestoreAfterDelay()
	Sleep(1000)
    
	Turn(sleeve, x_axis, math.rad(0), 3)
	Turn(turret, z_axis, math.rad(0), 3)
end

function script.QueryWeapon(num)
	return flare
end

function script.AimFromWeapon(num)
	return sleeve
end

function script.AimWeapon(num, heading, pitch)
	Signal(SIG_Aim)
	SetSignalMask(SIG_Aim)
	
	Move(barrel, z_axis, 0, 20)
	Turn(sleeve, x_axis, -pitch, 6)
	Turn(turret, z_axis, heading, 6)
	WaitForTurn(sleeve, x_axis)
	WaitForTurn(turret, z_axis)
	StartThread (RestoreAfterDelay)
	return true
end

function script.FireWeapon(num)
    Move(barrel, z_axis, -10, 1000)
end

function script.Killed(recentDamage, maxHealth)
    return 1
end