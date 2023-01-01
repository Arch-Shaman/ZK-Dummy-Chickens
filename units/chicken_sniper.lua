return { chicken_sniper = {
  unitname            = [[chicken_sniper]],
  name                = [[Dummy Sniper]],
  description         = [[Elite Marksman]],
  acceleration        = 1.08,
  activateWhenBuilt   = true,
  brakeRate           = 1.23,
  buildCostEnergy     = 0,
  buildCostMetal      = 900,
  builder             = false,
  buildPic            = [[sniper.png]],
  buildTime           = 900,
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  category            = [[LAND SINK SMALL]],
  collisionVolumeScales  = [[45 70 45]],
  collisionVolumeType    = [[cylY]],
  usePieceSelectionVolumes = true,

  customParams        = {
    outline_x = 70,
    outline_y = 70,
    outline_yoff = 15,
  },

  explodeAs           = [[NOWEAPON]],
  footprintX          = 2,
  footprintZ          = 2,
  iconType            = [[c_sniper]],
  idleAutoHeal        = 20,
  idleTime            = 300,
  maxDamage           = 2100,
  maxSlope            = 36,
  maxVelocity         = 2.5,
  movementClass       = [[AKBOT2]],
  noAutoFire          = false,
  noChaseCategory     = [[SHIP FLOAT SWIM TERRAFORM FIXEDWING SATELLITE GUNSHIP]],
  objectName          = [[sniper.dae]],
  script              = [[chicken_sniper.lua]],
  power               = 100,
  reclaimable         = false,
  selfDestructAs      = [[NOWEAPON]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:sniper_rifle]],
      [[custom:headhunter]],
    },

  },
  sightDistance       = 660,
  sonarDistance       = 660,
  turnRate            = 3000,
  upright             = true,
  workerTime          = 0,

  weapons             = {

    {
      def                = [[LMB1]],
      mainDir            = [[0 0 1]],
      onlyTargetCategory = [[SWIM LAND SUB SINK TURRET FLOAT SHIP HOVER]],
    },
	{
      def                = [[AB1]],
      mainDir            = [[0 0 1]],
      onlyTargetCategory = [[SWIM LAND SUB SINK TURRET FLOAT SHIP HOVER]],
    },
	{
      def                = [[CRT]],
      mainDir            = [[0 0 1]],
      onlyTargetCategory = [[SWIM LAND SUB SINK TURRET FLOAT SHIP HOVER]],
    },

  },


  weaponDefs          = {

    LMB1 = {
      name                    = [[Sniper Rifle]],
      avoidFeature            = false,
      avoidFriendly           = false,
      collideFeature          = false,
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,
	  turret                  = true,

      damage                  = {
        default = 112.5,
      },

      explosionGenerator      = [[custom:NONE]],
	  model                   = [[snipershot1.dae]],
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      range                   = 1200,
      reloadtime              = 1,
      size                    = 5,
      soundStart              = [[dummy/snipershot]],
      targetborder            = 10,
      tolerance               = 5000,
      turret                  = true,
      waterWeapon             = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 1000,
    },
	AB1 = {
      name                    = [[Bouncing Bullets]],
      avoidFeature            = false,
      avoidFriendly           = false,
      collideFeature          = false,
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,
	  turret                  = true,
	  burst                   = 2,
	  burstRate               = 0.2,
	  groundBounce            = true,
	  numbounce               = 2,

      damage                  = {
        default = 75,
      },
	  customparams            = {
	    timeslow_damagefactor = 2,
	  },

      explosionGenerator      = [[custom:NONE]],
	  model                   = [[snipershot2.dae]],
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      range                   = 1200,
      reloadtime              = 5,
      size                    = 5,
      soundStart              = [[dummy/sniperdouble]],
	  soundTrigger            = true,
      targetborder            = 10,
      tolerance               = 5000,
      turret                  = true,
      waterWeapon             = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 1250,
    },
	CRT = {
      name                    = [[Headhunter]],
      avoidFeature            = false,
      avoidFriendly           = false,
      collideFeature          = false,
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,
	  turret                  = true,
	  noExplode               = true,

      damage                  = {
        default = 150,
      },
	  customParams            = {
	    single_hit = true,
	  },

      explosionGenerator      = [[custom:NONE]],
	  model                   = [[snipershot3.dae]],
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      range                   = 1200,
      reloadtime              = 5,
      size                    = 5,
      soundStart              = [[dummy/sniperheavyshot]],
      targetborder            = 10,
      tolerance               = 5000,
      turret                  = true,
      waterWeapon             = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 1500,
    },
  },

} }