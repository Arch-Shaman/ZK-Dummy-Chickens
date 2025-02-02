return { chicken_caretaker_team = {
  unitname                      = [[chicken_caretaker_team]],
  name                          = [[Dummy Caretaker]],
  description                   = [[Construction Assistant]],
  buildCostMetal                = 300,
  buildDistance                 = 500,
  builder                       = true,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 5,
  buildingGroundDecalSizeY      = 5,
  buildingGroundDecalType       = [[staticcon_aoplane.dds]],
  buildPic                      = [[caretakerclone.png]],
  canGuard                      = true,
  canMove                       = false,
  canPatrol                     = true,
  cantBeTransported             = true,
  category                      = [[FLOAT UNARMED]],
  collisionVolumeOffsets        = [[0 4 0]],
  collisionVolumeScales         = [[48 56 48]],
  collisionVolumeType           = [[ellipsoid]],
  corpse                        = [[DEAD]],
  
  buildoptions                  = {
      [[chicken_lotus_team]],
	  [[chicken_picket_team]],
	  [[chicken_stardust_team]],
	  [[chicken_faraday_team]],
	  [[chicken_gauss_team]],
	  [[chicken_stinger_team]],
	  [[chicken_hacksaw_team]],
	  [[chicken_razor_team]],
	  [[chicken_thresher_team]],
	  [[chicken_chainsaw_team]],
	  [[chicken_artemis_team]],
	  [[chicken_desolator_team]],
	  [[chicken_lucifer_team]],
	  [[chicken_cerberus_team]],
	  [[chicken_bigbertha_team]],
  },
  
  customParams                  = {
    aimposoffset     = [[0 18 0]],
    midposoffset     = [[0 -4 0]],
    modelradius      = [[24]],
    default_spacing  = 1,
    like_structure   = 1,
    select_show_eco  = 1,

    outline_x = 80,
    outline_y = 85,
    outline_yoff = 13.5,
  },

  explodeAs                     = [[NANOBOOM2]],
  floater                       = true,
  footprintX                    = 3,
  footprintZ                    = 3,
  iconType                      = [[staticbuilder]],
  levelGround                   = false,
  maxDamage                     = 750,
  maxSlope                      = 15,
  maxVelocity                   = 0,
  movementClass                 = [[KBOT2]],
  objectName                    = [[caretakerclone_team.dae]],
  script                        = [[chicken_caretaker_team.lua]],
  selfDestructAs                = [[NANOBOOM2]],
  showNanoSpray                 = false,
  sightDistance                 = 380,
  upright                       = true,
  useBuildingGroundDecal        = true,
  workerTime                    = 10,

  featureDefs                   = {
    DEAD  = {
      blocking         = false,
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[stud3.dae]],
    },
  },

    weaponDefs = {
        NANOBOOM2 = {
            name = "Nano Explosion",
            areaofeffect = 128,
            craterboost = 1,
            cratermult = 3.5,
            edgeeffectiveness = 0.75,
            explosiongenerator = [[custom:FLASH1]],
            impulseboost = 0,
            impulsefactor = 0.4,
            soundhit = [[explosion/ex_small1]],

            damage = {
                default = 500,
            },
        },
    },
} }
