-- Package script "CCSyrinCatalog": top-level names below are its members (CCSyrinCatalog.sounds etc.).

---------------------------------------------------------------------------
-- SOUNDS
-- All elements sourced from Syrinscape Online sci-fi soundsets.
-- Verified against syrinscape_remote_control_links_255782.csv
-- v0.3.0 – 79 sounds across 12 categories
---------------------------------------------------------------------------
sounds = {

  ---------------------------------------------------------------------------
  -- Initiative / Comms
  ---------------------------------------------------------------------------
  comms_hail = {
    name = "Incoming Hail",
    sound_id = "ss|4487229|element|oneshot|Incoming Hail",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/4487229/play/?auth_token=",
  },
  comms_warning = {
    name = "Warning Alarm",
    sound_id = "ss|3118|element|oneshot|Warning Alarm",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/3118/play/?auth_token=",
  },
  comms_distress = {
    name = "Distress Signal",
    sound_id = "ss|995|element|oneshot|Distress Signal",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/995/play/?auth_token=",
  },
  comms_alien = {
    name = "Alien Transmission",
    sound_id = "ss|4487231|element|oneshot|Alien Transmission",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/4487231/play/?auth_token=",
  },
  alert_sound = {
    name = "Alert sound",
    sound_id = "ss|4509066|element|oneshot|Alert sound",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/4509066/play/?auth_token=",
  },
  radio_signoff = {
    name = "Radio signoff",
    sound_id = "ss|2043109|element|oneshot|Radio signoff",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/2043109/play/?auth_token=",
  },
  pager_beep = {
    name = "Pager beeps",
    sound_id = "ss|4287424|element|oneshot|Pager beeps",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/4287424/play/?auth_token=",
  },

  ---------------------------------------------------------------------------
  -- Pistols
  ---------------------------------------------------------------------------
  pistol_light = {
    name = "Pistol - Light",
    sound_id = "ss|65172|element|oneshot|Pistol - Light",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/65172/play/?auth_token=",
  },
  pistol_heavy = {
    name = "Pistol - Heavy",
    sound_id = "ss|65192|element|oneshot|Pistol - Heavy",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/65192/play/?auth_token=",
  },
  revolver = {
    name = "Revolver",
    sound_id = "ss|1377658|element|oneshot|Revolver",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/1377658/play/?auth_token=",
  },

  ---------------------------------------------------------------------------
  -- Rifles
  ---------------------------------------------------------------------------
  rifle_light = {
    name = "Rifle - Light",
    sound_id = "ss|65166|element|oneshot|Rifle - Light",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/65166/play/?auth_token=",
  },
  rifle_heavy = {
    name = "Rifle - Heavy",
    sound_id = "ss|65193|element|oneshot|Rifle - Heavy",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/65193/play/?auth_token=",
  },
  shotgun = {
    name = "Scatter - pump",
    sound_id = "ss|65179|element|oneshot|Scatter - pump",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/65179/play/?auth_token=",
  },
  shotgun_heavy = {
    name = "Scatter - Heavy",
    sound_id = "ss|65180|element|oneshot|Scatter - Heavy",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/65180/play/?auth_token=",
  },
  machinegun_light = {
    name = "Machine gun - Light",
    sound_id = "ss|65173|element|oneshot|Machine gun - Light",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/65173/play/?auth_token=",
  },
  machinegun_heavy = {
    name = "Machine gun - Heavy",
    sound_id = "ss|65167|element|oneshot|Machine gun - Heavy",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/65167/play/?auth_token=",
  },
  sniper_shot = {
    name = "Rifle shot",
    sound_id = "ss|4287427|element|oneshot|Rifle shot",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/4287427/play/?auth_token=",
  },

  ---------------------------------------------------------------------------
  -- Laser Weapons (personal)
  ---------------------------------------------------------------------------
  laser_pistol = {
    name = "Laser - Small",
    sound_id = "ss|65165|element|oneshot|Laser - Small",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/65165/play/?auth_token=",
  },
  laser_carbine = {
    name = "Laser - Long",
    sound_id = "ss|65171|element|oneshot|Laser - Long",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/65171/play/?auth_token=",
  },
  laser_rifle = {
    name = "Laser - Sniper",
    sound_id = "ss|65169|element|oneshot|Laser - Sniper",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/65169/play/?auth_token=",
  },
  laser_heavy = {
    name = "Laser - Heavy",
    sound_id = "ss|65168|element|oneshot|Laser - Heavy",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/65168/play/?auth_token=",
  },

  ---------------------------------------------------------------------------
  -- Plasma / Energy Weapons (personal)
  ---------------------------------------------------------------------------
  plasma_pistol = {
    name = "Plasma - Small",
    sound_id = "ss|65175|element|oneshot|Plasma - Small",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/65175/play/?auth_token=",
  },
  plasma_rifle = {
    name = "Plasma - Long",
    sound_id = "ss|65181|element|oneshot|Plasma - Long",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/65181/play/?auth_token=",
  },
  plasma_heavy = {
    name = "Plasma - Heavy",
    sound_id = "ss|65176|element|oneshot|Plasma - Heavy",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/65176/play/?auth_token=",
  },

  ---------------------------------------------------------------------------
  -- Gauss / Magnetic Weapons (personal)
  ---------------------------------------------------------------------------
  gauss_pistol = {
    name = "Shock - Small",
    sound_id = "ss|65182|element|oneshot|Shock - Small",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/65182/play/?auth_token=",
  },
  gauss_rifle = {
    name = "Shock - Long",
    sound_id = "ss|65185|element|oneshot|Shock - Long",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/65185/play/?auth_token=",
  },
  gauss_sniper = {
    name = "Shock - Sniper",
    sound_id = "ss|65184|element|oneshot|Shock - Sniper",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/65184/play/?auth_token=",
  },

  ---------------------------------------------------------------------------
  -- Stun / Sonic Weapons (personal)
  ---------------------------------------------------------------------------
  stun_fire = {
    name = "Sonic - Small",
    sound_id = "ss|65187|element|oneshot|Sonic - Small",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/65187/play/?auth_token=",
  },
  stun_heavy = {
    name = "Sonic - Heavy",
    sound_id = "ss|65188|element|oneshot|Sonic - Heavy",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/65188/play/?auth_token=",
  },

  ---------------------------------------------------------------------------
  -- Cryo / Flame Weapons (personal)
  ---------------------------------------------------------------------------
  cryo_weapon = {
    name = "Cryo - Small",
    sound_id = "ss|65160|element|oneshot|Cryo - Small",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/65160/play/?auth_token=",
  },
  flame_weapon = {
    name = "Flame - Small/Long",
    sound_id = "ss|65170|element|oneshot|Flame - Small/Long",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/65170/play/?auth_token=",
  },
  flame_heavy = {
    name = "Flame - Heavy",
    sound_id = "ss|65195|element|oneshot|Flame - Heavy",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/65195/play/?auth_token=",
  },

  ---------------------------------------------------------------------------
  -- Melee Weapons
  ---------------------------------------------------------------------------
  blade_strike = {
    name = "Swords",
    sound_id = "ss|4287430|element|oneshot|Swords",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/4287430/play/?auth_token=",
  },
  unarmed_strike = {
    name = "Punched",
    sound_id = "ss|1886487|element|oneshot|Punched",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/1886487/play/?auth_token=",
  },

  ---------------------------------------------------------------------------
  -- Grenades / Explosives / Heavy Weapons
  ---------------------------------------------------------------------------
  grenade = {
    name = "Grenade",
    sound_id = "ss|67025|element|oneshot|Grenade",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/67025/play/?auth_token=",
  },
  grenade_launcher = {
    name = "Grenade launcher",
    sound_id = "ss|2043104|element|oneshot|Grenade launcher",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/2043104/play/?auth_token=",
  },
  rocket_launcher = {
    name = "Rocket launcher",
    sound_id = "ss|4007528|element|oneshot|Rocket launcher",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/4007528/play/?auth_token=",
  },
  explosion = {
    name = "Explosion",
    sound_id = "ss|917|element|oneshot|Explosion",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/917/play/?auth_token=",
  },
  explosion_large = {
    name = "Large explosion",
    sound_id = "ss|2043107|element|oneshot|Large explosion",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/2043107/play/?auth_token=",
  },
  explosion_shattering = {
    name = "Shattering explosion",
    sound_id = "ss|1085298|element|oneshot|Shattering explosion",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/1085298/play/?auth_token=",
  },
  explosion_destruction = {
    name = "Explosion with destruction",
    sound_id = "ss|4132914|element|oneshot|Explosion with destruction",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/4132914/play/?auth_token=",
  },
  nuclear_detonation = {
    name = "Tactical nuclear missle launcher",
    sound_id = "ss|63150|element|oneshot|Tactical nuclear missle launcher",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/63150/play/?auth_token=",
  },

  ---------------------------------------------------------------------------
  -- Damage Impacts (by damage type)
  ---------------------------------------------------------------------------
  kinetic_impact = {
    name = "Blaster impact",
    sound_id = "ss|5128|element|oneshot|Blaster impact",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/5128/play/?auth_token=",
  },
  laser_impact = {
    name = "Forcefield Hit",
    sound_id = "ss|8119|element|oneshot|Forcefield Hit",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/8119/play/?auth_token=",
  },
  stun_impact = {
    name = "Pulsecaster",
    sound_id = "ss|3926431|element|oneshot|Pulsecaster",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/3926431/play/?auth_token=",
  },
  energy_impact = {
    name = "Disrupter beam",
    sound_id = "ss|3829454|element|oneshot|Disrupter beam",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/3829454/play/?auth_token=",
  },

  ---------------------------------------------------------------------------
  -- Ship Weapons
  ---------------------------------------------------------------------------
  ship_beam_laser = {
    name = "Light laser cannon",
    sound_id = "ss|63137|element|oneshot|Light laser cannon",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/63137/play/?auth_token=",
  },
  ship_pulse_laser = {
    name = "Gyrolaser",
    sound_id = "ss|63131|element|oneshot|Gyrolaser",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/63131/play/?auth_token=",
  },
  ship_heavy_laser = {
    name = "Heavy laser cannon",
    sound_id = "ss|63133|element|oneshot|Heavy laser cannon",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/63133/play/?auth_token=",
  },
  ship_particle_beam = {
    name = "Light particle beam",
    sound_id = "ss|63217|element|oneshot|Light particle beam",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/63217/play/?auth_token=",
  },
  ship_missile = {
    name = "High explosive missile launcher",
    sound_id = "ss|63134|element|oneshot|High explosive missile launcher",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/63134/play/?auth_token=",
  },
  ship_torpedo = {
    name = "Heavy torpedo launcher",
    sound_id = "ss|63221|element|oneshot|Heavy torpedo launcher",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/63221/play/?auth_token=",
  },
  ship_railgun = {
    name = "Railgun",
    sound_id = "ss|63236|element|oneshot|Railgun",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/63236/play/?auth_token=",
  },
  ship_sandcaster = {
    name = "Flak thrower",
    sound_id = "ss|59167|element|oneshot|Flak thrower",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/59167/play/?auth_token=",
  },
  ship_meson = {
    name = "Graser",
    sound_id = "ss|63216|element|oneshot|Graser",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/63216/play/?auth_token=",
  },
  ship_plasma = {
    name = "Plasma cannon",
    sound_id = "ss|63228|element|oneshot|Plasma cannon",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/63228/play/?auth_token=",
  },
  ship_coilgun = {
    name = "Coilgun",
    sound_id = "ss|63152|element|oneshot|Coilgun",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/63152/play/?auth_token=",
  },
  ship_nuclear = {
    name = "Heavy nuclear missile launcher",
    sound_id = "ss|63222|element|oneshot|Heavy nuclear missile launcher",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/63222/play/?auth_token=",
  },

  ---------------------------------------------------------------------------
  -- Ship Damage / Status
  ---------------------------------------------------------------------------
  ship_hit = {
    name = "Severe Missile Hits",
    sound_id = "ss|2038|element|oneshot|Severe Missile Hits",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/2038/play/?auth_token=",
  },
  ship_explosion = {
    name = "Shattering explosion",
    sound_id = "ss|5132|element|oneshot|Shattering explosion",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/5132/play/?auth_token=",
  },
  ship_close = {
    name = "A big ship close by",
    sound_id = "ss|4509067|element|oneshot|A big ship close by",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/4509067/play/?auth_token=",
  },

  ---------------------------------------------------------------------------
  -- Starship Operations
  ---------------------------------------------------------------------------
  warp_drive = {
    name = "Warp",
    sound_id = "ss|4487227|element|oneshot|Warp",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/4487227/play/?auth_token=",
  },
  warp_exit = {
    name = "Exiting Warp",
    sound_id = "ss|4487228|element|oneshot|Exiting Warp",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/4487228/play/?auth_token=",
  },
  thruster_sound = {
    name = "Maneuvering thrusters",
    sound_id = "ss|561933|element|oneshot|Maneuvering thrusters",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/561933/play/?auth_token=",
  },
  engine_sound = {
    name = "Engine check",
    sound_id = "ss|898857|element|oneshot|Engine check",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/898857/play/?auth_token=",
  },
  airlock_open = {
    name = "Hissing airlock",
    sound_id = "ss|2435988|element|oneshot|Hissing airlock",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/2435988/play/?auth_token=",
  },
  airlock_close = {
    name = "Airlock Close",
    sound_id = "ss|2435987|element|oneshot|Airlock Close",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/2435987/play/?auth_token=",
  },
  landing = {
    name = "Landing the Primorata",
    sound_id = "ss|2436001|element|oneshot|Landing the Primorata",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/2436001/play/?auth_token=",
  },

  ---------------------------------------------------------------------------
  -- Wound / Status
  ---------------------------------------------------------------------------
  light_hit = {
    name = "Taking Fire",
    sound_id = "ss|2196|element|oneshot|Taking Fire",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/2196/play/?auth_token=",
  },
  wound_moderate = {
    name = "Scream low",
    sound_id = "ss|4132912|element|oneshot|Scream low",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/4132912/play/?auth_token=",
  },
  wound_heavy = {
    name = "Scream high",
    sound_id = "ss|4132913|element|oneshot|Scream high",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/4132913/play/?auth_token=",
  },
  body_fall = {
    name = "Thump body fall",
    sound_id = "ss|3050517|element|oneshot|Thump body fall",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/3050517/play/?auth_token=",
  },
  death_sound = {
    name = "Major Impact",
    sound_id = "ss|2182|element|oneshot|Major Impact",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/2182/play/?auth_token=",
  },

  ---------------------------------------------------------------------------
  -- Medical
  ---------------------------------------------------------------------------
  medkit = {
    name = "Medication",
    sound_id = "ss|1919218|element|oneshot|Medication",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/1919218/play/?auth_token=",
  },
  defibrillator = {
    name = "Defibrillator",
    sound_id = "ss|1924121|element|oneshot|Defibrillator",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/1924121/play/?auth_token=",
  },

  ---------------------------------------------------------------------------
  -- Computer / Tech / Skills
  ---------------------------------------------------------------------------
  computer_success = {
    name = "Computer hacking success",
    sound_id = "ss|2572591|element|oneshot|Computer hacking success",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/2572591/play/?auth_token=",
  },
  computer_fail = {
    name = "Computer hacking fail",
    sound_id = "ss|2572592|element|oneshot|Computer hacking fail",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/2572592/play/?auth_token=",
  },
  computer_beep = {
    name = "Computer turned on",
    sound_id = "ss|3913705|element|oneshot|Computer turned on",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/3913705/play/?auth_token=",
  },
  access_denied = {
    name = "Door passcode denied",
    sound_id = "ss|3913711|element|oneshot|Door passcode denied",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/3913711/play/?auth_token=",
  },
  picking_lock = {
    name = "Picking lock",
    sound_id = "ss|1377668|element|oneshot|Picking lock",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/1377668/play/?auth_token=",
  },

  ---------------------------------------------------------------------------
  -- v0.6.0 additions (one-shots from the imported Syrinscape library)
  ---------------------------------------------------------------------------
  point_defence = {
    name = "Flak thrower",
    sound_id = "ss|63145|element|oneshot|Flak thrower",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/63145/play/?auth_token=",
  },
  missile_impact = {
    name = "Missile Impact",
    sound_id = "ss|3045|element|oneshot|Missile Impact",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/3045/play/?auth_token=",
  },
  psi_telepathy = {
    name = "Mind Reading Telepathy",
    sound_id = "ss|8007|element|oneshot|Mind Reading Telepathy",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/8007/play/?auth_token=",
  },
  psi_telekinesis = {
    name = "Telekinetic projectile spell",
    sound_id = "ss|2800013|element|oneshot|Telekinetic projectile spell",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/2800013/play/?auth_token=",
  },
  psi_blast = {
    name = "Mental Blast",
    sound_id = "ss|8008|element|oneshot|Mental Blast",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/8008/play/?auth_token=",
  },
  radiation_geiger = {
    name = "(high) Geiger counter",
    sound_id = "ss|1456186|element|oneshot|(high) Geiger counter",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/1456186/play/?auth_token=",
  },
  attack_miss = {
    name = "Closecall - ricochet or whiz-by",
    sound_id = "ss|4132915|element|oneshot|Closecall - ricochet or whiz-by",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/4132915/play/?auth_token=",
  },
  mishap_spark = {
    name = "Short Circuit",
    sound_id = "ss|2404|element|oneshot|Short Circuit",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/2404/play/?auth_token=",
  },
  crew_rally = {
    name = "Hatchbusters Battle Cry",
    sound_id = "ss|81805|element|oneshot|Hatchbusters Battle Cry",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/81805/play/?auth_token=",
  },
  armour_impact = {
    name = "Steel Impact",
    sound_id = "ss|3136|element|oneshot|Steel Impact",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/3136/play/?auth_token=",
  },

  ---------------------------------------------------------------------------
  -- Ammo
  ---------------------------------------------------------------------------
  ammo_click = {
    name = "Shotgun pump",
    sound_id = "ss|35047|element|oneshot|Shotgun pump",
    so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/35047/play/?auth_token=",
  },
}

---------------------------------------------------------------------------
-- CATEGORIES
-- Each trigger belongs to a category that can be toggled on/off by the GM.
-- All categories are enabled by default.
---------------------------------------------------------------------------
categories = {
  { id = "ship",    name = "Ship Combat",       desc = "Ship weapons, launches, point defence, damage, criticals, vehicles" },
  { id = "comms",   name = "Communications",    desc = "Initiative, ammo warnings, crew morale, tactics" },
  { id = "weapons", name = "Personal Weapons",  desc = "Ranged and melee weapon attacks" },
  { id = "damage",  name = "Damage Impacts",    desc = "Damage types, armour, weapon mishaps and explosions" },
  { id = "status",  name = "Wounds / Status",   desc = "Wounds, death, unconscious, fire, radiation, healing" },
  { id = "skills",  name = "Skill Rolls",       desc = "Skill and psionic rolls (medic, pilot, telepathy, etc.)" },
  { id = "tasks",   name = "Task Results",      desc = "Success / failure, hit / miss result sounds" },
}

---------------------------------------------------------------------------
-- TRIGGERS
-- Evaluated in order; FIRST MATCH WINS.  Place specific patterns before
-- generic fallbacks.
--
-- plain = true  → literal substring match (after lowercasing)
-- plain = false → Lua pattern match (after lowercasing)
-- cat           → category id for toggle control
--
-- All patterns verified against real MGT2 chatlog.html output from the
-- DM Greg Marches Campaign (sessions Nov 2025 – Mar 2026).
-- v0.4.0 – 106 triggers across 7 categories
-- v0.6.0 – MGT2 2026-05 event tags added (launch, missile impact, point
--          defence, psionics, radiation, hit/miss, mishaps, morale, fire,
--          vehicle criticals); every catalog sound now has a trigger.
-- sound = "none" marks a line that must stay silent (matched, nothing played).
---------------------------------------------------------------------------
triggers = {

  -----------------------------------------------------------------------
  -- SHIP COMBAT  (highest priority – very specific tags)
  --   [SHIP ATTACK] Beam One (2D +4) [+2]          (older ruleset)
  --   [SHIP ATTACK (R)] Pulse Laser (2D+2)         (MGT2 2026-05)
  --   [SHIP DAMAGE #2] Pulse Laser ...             (MGT2 2026-05)
  --   [SHIP DAMAGE] Beam One [+9 DMG] [TYPE: laser (1d6+9=12)] [CRITICAL]
  --   Free Trader: [CRITICAL HIT] Armour  Severity 1: …
  --   Applied 10 points of damage to hull
  -----------------------------------------------------------------------

  -- MGT2 2026-05 ship events (before the attack/damage patterns)
  --   [POINT DEFENCE] Free Trader intercepted 2 missiles; 1 remain.
  --   [MISSILE IMPACT] Missile Rack ... [DAMAGE 12] [ARMOUR 2]
  --   [SHIP LAUNCH] Missile Rack -> Corsair [TTI 2] ...
  --   [VEHICLE CRITICAL HIT] / [VEHICLE FOLLOW-UP CRITICAL]
  --   Range -> Close (1200 Km measured)
  { id = "point_defence",        pattern = "[point defence]",                  plain = true,  sound = "point_defence",    cat = "ship" },
  { id = "missile_impact",       pattern = "[missile impact]",                 plain = true,  sound = "missile_impact",   cat = "ship" },
  { id = "ship_launch_select",   pattern = "[ship launch] select",             plain = true,  sound = "none",             cat = "ship" },
  { id = "ship_launch_unable",   pattern = "[ship launch] unable",             plain = true,  sound = "none",             cat = "ship" },
  { id = "ship_launch_torpedo",  pattern = "%[ship launch%][^%[]*torpedo",     plain = false, sound = "ship_torpedo",     cat = "ship" },
  { id = "ship_launch",          pattern = "[ship launch]",                    plain = true,  sound = "ship_missile",     cat = "ship" },
  { id = "ship_very_high_yield", pattern = "[very high yield]",                plain = true,  sound = "nuclear_detonation", cat = "ship" },
  { id = "vehicle_followup_crit", pattern = "[vehicle follow-up critical]",     plain = true,  sound = "comms_distress",   cat = "ship" },
  { id = "vehicle_critical",     pattern = "[vehicle critical hit]",           plain = true,  sound = "comms_warning",    cat = "ship" },
  { id = "ship_range_adjacent",  pattern = "range -> adjacent",                plain = true,  sound = "ship_close",       cat = "ship" },
  { id = "ship_range_close",     pattern = "range -> close",                   plain = true,  sound = "ship_close",       cat = "ship" },

  -- Ship damage critical
  { id = "ship_damage_crit",     pattern = "%[ship damage[^%]]*%].*%[critical%]",  plain = false, sound = "ship_explosion",    cat = "ship" },

  -- Ship weapon-specific attacks (before generic ship attack)
  { id = "ship_att_laser_bay",   pattern = "%[ship attack[^%]]*%][^%[]*laser bay",plain = false, sound = "ship_heavy_laser", cat = "ship" },
  { id = "ship_att_laser_barb",  pattern = "%[ship attack[^%]]*%][^%[]*laser barbette",plain = false, sound = "ship_heavy_laser", cat = "ship" },
  { id = "ship_att_heavy_laser", pattern = "%[ship attack[^%]]*%][^%[]*heavy laser",plain = false, sound = "ship_heavy_laser", cat = "ship" },
  { id = "ship_att_pulse",       pattern = "%[ship attack[^%]]*%][^%[]*pulse",            plain = false, sound = "ship_pulse_laser",  cat = "ship" },
  { id = "ship_att_beam",        pattern = "%[ship attack[^%]]*%][^%[]*beam",             plain = false, sound = "ship_beam_laser",   cat = "ship" },
  { id = "ship_att_particle",    pattern = "%[ship attack[^%]]*%][^%[]*particle",         plain = false, sound = "ship_particle_beam",cat = "ship" },
  { id = "ship_att_missile",     pattern = "%[ship attack[^%]]*%][^%[]*missile",          plain = false, sound = "ship_missile",      cat = "ship" },
  { id = "ship_att_torpedo",     pattern = "%[ship attack[^%]]*%][^%[]*torpedo",          plain = false, sound = "ship_torpedo",      cat = "ship" },
  { id = "ship_att_railgun",     pattern = "%[ship attack[^%]]*%][^%[]*railgun",          plain = false, sound = "ship_railgun",      cat = "ship" },
  { id = "ship_att_sandcaster",  pattern = "%[ship attack[^%]]*%][^%[]*sand",             plain = false, sound = "ship_sandcaster",   cat = "ship" },
  { id = "ship_att_meson",       pattern = "%[ship attack[^%]]*%][^%[]*meson",            plain = false, sound = "ship_meson",        cat = "ship" },
  { id = "ship_att_plasma",      pattern = "%[ship attack[^%]]*%][^%[]*plasma",           plain = false, sound = "ship_plasma",       cat = "ship" },
  { id = "ship_att_fusion",      pattern = "%[ship attack[^%]]*%][^%[]*fusion",           plain = false, sound = "ship_plasma",       cat = "ship" },
  { id = "ship_att_nuclear",     pattern = "%[ship attack[^%]]*%][^%[]*nuclear",          plain = false, sound = "ship_nuclear",      cat = "ship" },
  { id = "ship_att_coilgun",     pattern = "%[ship attack[^%]]*%][^%[]*coilgun",          plain = false, sound = "ship_coilgun",      cat = "ship" },

  -- Generic ship combat (fallback for unrecognized weapon names)
  { id = "ship_attack",          pattern = "[ship attack",                   plain = true,  sound = "ship_beam_laser",   cat = "ship" },
  { id = "ship_damage",          pattern = "[ship damage",                   plain = true,  sound = "ship_hit",          cat = "ship" },
  -- [CRITICAL HIT] roll, and the applied lines "Free Trader: Critical Hit: Hull" (MGT2 2026-05)
  { id = "ship_critical_sys",    pattern = "critical hit",                   plain = true,  sound = "ship_explosion",    cat = "ship" },
  { id = "hull_damage",          pattern = "points of damage to hull",       plain = true,  sound = "explosion_large",   cat = "ship" },

  -----------------------------------------------------------------------
  -- INITIATIVE
  --   Corbin Corona: [INIT][MOD +1]  Initiative Effect Score: [+3]
  -----------------------------------------------------------------------
  { id = "initiative",           pattern = "[init]",                         plain = true,  sound = "alert_sound",       cat = "comms" },

  -----------------------------------------------------------------------
  -- AMMO WARNINGS
  --   [ATTACKING WHILE OUT OF AMMO]
  --   [ATTACKING WITHOUT ENOUGH AMMO]
  -----------------------------------------------------------------------
  { id = "ammo_out",             pattern = "out of ammo]",                   plain = true,  sound = "ammo_click",        cat = "comms" },
  { id = "crew_morale",          pattern = "[crew morale]",                    plain = true,  sound = "crew_rally",       cat = "comms" },
  { id = "tactics",              pattern = "[tactics]",                        plain = true,  sound = "radio_signoff",    cat = "comms" },
  { id = "ammo_low",             pattern = "without enough ammo]",           plain = true,  sound = "ammo_click",        cat = "comms" },

  -----------------------------------------------------------------------
  -- WEAPON-SPECIFIC ATTACKS  (before generic ranged / melee)
  --   [ATTACK (R)] Laser Sniper Rifle (TL 12) …
  --   [ATTACK (R)] Gauss Submachine Gun (TL 12) …
  --   [ATTACK (R)] Stunner (TL 12) …
  --   [ATTACK (R)] Autorifle …
  --   [ATTACK (R)] Stun Grenade …
  --   [ATTACK (R)] Autopistol …
  -----------------------------------------------------------------------

  -- Grenades & heavy weapons (most specific – before other ranged)
  { id = "att_pocket_nuke",      pattern = "pocket nuke",                      plain = true,  sound = "nuclear_detonation", cat = "weapons" },
  { id = "att_stun_grenade",     pattern = "stun grenade",                   plain = true,  sound = "grenade",           cat = "weapons" },
  { id = "att_frag_grenade",     pattern = "frag grenade",                   plain = true,  sound = "grenade",           cat = "weapons" },
  { id = "att_aerosol_grenade",  pattern = "aerosol grenade",                plain = true,  sound = "grenade",           cat = "weapons" },
  { id = "att_smoke_grenade",    pattern = "smoke grenade",                  plain = true,  sound = "grenade",           cat = "weapons" },
  { id = "att_grenade",          pattern = "grenade",                        plain = true,  sound = "grenade",           cat = "weapons" },
  { id = "att_rocket_launch",    pattern = "rocket launcher",                plain = true,  sound = "rocket_launcher",   cat = "weapons" },
  { id = "att_ram_grenade",      pattern = "ram grenade",                    plain = true,  sound = "grenade_launcher",  cat = "weapons" },

  -- Laser weapons (personal)
  { id = "att_laser_sniper",     pattern = "laser sniper",                   plain = true,  sound = "laser_rifle",       cat = "weapons" },
  { id = "att_laser_rifle",      pattern = "laser rifle",                    plain = true,  sound = "laser_rifle",       cat = "weapons" },
  { id = "att_laser_carbine",    pattern = "laser carbine",                  plain = true,  sound = "laser_carbine",     cat = "weapons" },
  { id = "att_laser_pistol",     pattern = "laser pistol",                   plain = true,  sound = "laser_pistol",      cat = "weapons" },
  { id = "att_laser_generic",    pattern = "[attack (r)] laser",             plain = true,  sound = "laser_carbine",     cat = "weapons" },

  -- Plasma / Energy weapons (PGMP, FGMP, plasma rifle)
  { id = "att_fgmp",             pattern = "fgmp",                           plain = true,  sound = "plasma_heavy",      cat = "weapons" },
  { id = "att_pgmp",             pattern = "pgmp",                           plain = true,  sound = "plasma_heavy",      cat = "weapons" },
  { id = "att_plasma_rifle",     pattern = "plasma rifle",                   plain = true,  sound = "plasma_rifle",      cat = "weapons" },
  { id = "att_plasma",           pattern = "plasma",                         plain = true,  sound = "plasma_pistol",     cat = "weapons" },

  -- Gauss weapons
  { id = "att_gauss_sniper",     pattern = "gauss sniper",                   plain = true,  sound = "gauss_sniper",      cat = "weapons" },
  { id = "att_gauss_rifle",      pattern = "gauss rifle",                    plain = true,  sound = "gauss_rifle",       cat = "weapons" },
  { id = "att_gauss_smg",        pattern = "gauss submachine",               plain = true,  sound = "gauss_pistol",      cat = "weapons" },
  { id = "att_gauss_pistol",     pattern = "gauss pistol",                   plain = true,  sound = "gauss_pistol",      cat = "weapons" },
  { id = "att_gauss_generic",    pattern = "[attack (r)] gauss",             plain = true,  sound = "gauss_rifle",       cat = "weapons" },

  -- Stun weapons
  { id = "att_stunner",          pattern = "[attack (r)] stunner",           plain = true,  sound = "stun_fire",         cat = "weapons" },
  { id = "att_stun_baton",       pattern = "stun baton",                     plain = true,  sound = "stun_fire",         cat = "weapons" },
  { id = "att_stun_staff",       pattern = "stun staff",                     plain = true,  sound = "stun_heavy",        cat = "weapons" },

  -- Shotguns
  { id = "att_combat_shotgun",   pattern = "combat shotgun",                 plain = true,  sound = "shotgun_heavy",     cat = "weapons" },
  { id = "att_shotgun",          pattern = "shotgun",                        plain = true,  sound = "shotgun",           cat = "weapons" },
  { id = "att_accelerator",      pattern = "accelerator rifle",              plain = true,  sound = "shotgun_heavy",     cat = "weapons" },

  -- Automatic weapons (autorifle, SMG, machinegun, ACR)
  { id = "att_machinegun",       pattern = "machinegun",                     plain = true,  sound = "machinegun_heavy",  cat = "weapons" },
  { id = "att_machine_gun",      pattern = "machine gun",                    plain = true,  sound = "machinegun_heavy",  cat = "weapons" },
  { id = "att_smg",              pattern = "submachine gun",                 plain = true,  sound = "machinegun_light",  cat = "weapons" },
  { id = "att_acr",              pattern = "[attack (r)] acr",               plain = true,  sound = "rifle_heavy",       cat = "weapons" },
  { id = "att_autorifle",        pattern = "[attack (r)] autorifle",         plain = true,  sound = "rifle_heavy",       cat = "weapons" },
  { id = "att_assault_rifle",    pattern = "assault rifle",                  plain = true,  sound = "rifle_light",       cat = "weapons" },

  -- Specific pistols
  { id = "att_autopistol",       pattern = "[attack (r)] autopistol",        plain = true,  sound = "pistol_light",      cat = "weapons" },
  { id = "att_body_pistol",      pattern = "body pistol",                    plain = true,  sound = "pistol_light",      cat = "weapons" },
  { id = "att_snub_pistol",      pattern = "snub pistol",                    plain = true,  sound = "pistol_light",      cat = "weapons" },
  { id = "att_revolver",         pattern = "[attack (r)] revolver",          plain = true,  sound = "revolver",          cat = "weapons" },

  -- Sniper-class
  { id = "att_sniper",           pattern = "sniper rifle",                   plain = true,  sound = "sniper_shot",       cat = "weapons" },

  -- Flame / Cryo
  { id = "att_flamethrower",     pattern = "flamethrower",                   plain = true,  sound = "flame_weapon",      cat = "weapons" },
  { id = "att_flame",            pattern = "flame",                          plain = true,  sound = "flame_weapon",      cat = "weapons" },
  { id = "att_cryo",             pattern = "cryo",                           plain = true,  sound = "cryo_weapon",       cat = "weapons" },

  -- Melee weapon specifics
  { id = "att_cutlass",          pattern = "cutlass",                        plain = true,  sound = "blade_strike",      cat = "weapons" },
  { id = "att_broadsword",       pattern = "broadsword",                     plain = true,  sound = "blade_strike",      cat = "weapons" },
  { id = "att_blade",            pattern = "blade",                          plain = true,  sound = "blade_strike",      cat = "weapons" },
  { id = "att_dagger",           pattern = "dagger",                         plain = true,  sound = "blade_strike",      cat = "weapons" },
  { id = "att_knife",            pattern = "knife",                          plain = true,  sound = "blade_strike",      cat = "weapons" },
  { id = "att_club",             pattern = "club",                           plain = true,  sound = "unarmed_strike",    cat = "weapons" },
  { id = "att_staff",            pattern = "staff",                          plain = true,  sound = "unarmed_strike",    cat = "weapons" },

  -- Generic ranged/melee (fallback)
  { id = "attack_ranged",        pattern = "[attack (r)]",                   plain = true,  sound = "pistol_heavy",      cat = "weapons" },
  { id = "attack_melee",         pattern = "[attack (m)]",                   plain = true,  sound = "blade_strike",      cat = "weapons" },

  -----------------------------------------------------------------------
  -- DAMAGE BY TYPE  (from the damage-roll line)
  --   [DAMAGE (50m)] Gauss SMG [AP 3] [TYPE: kinetic (3d6+7=22)]
  --   [DAMAGE (600m)] Laser Sniper Rifle [TYPE: laser (5d6+5=25)]
  --   [DAMAGE (10m)] Stunner (TL 12) [TYPE: stun (3d6=16)]
  -----------------------------------------------------------------------
  { id = "damage_laser",         pattern = "type: laser",                    plain = true,  sound = "laser_impact",      cat = "damage" },
  { id = "damage_stun",          pattern = "type: stun",                     plain = true,  sound = "stun_impact",       cat = "damage" },
  { id = "damage_kinetic",       pattern = "type: kinetic",                  plain = true,  sound = "kinetic_impact",    cat = "damage" },
  { id = "damage_energy",        pattern = "type: energy",                   plain = true,  sound = "energy_impact",     cat = "damage" },
  { id = "damage_plasma",        pattern = "type: plasma",                   plain = true,  sound = "energy_impact",     cat = "damage" },
  { id = "damage_fire",          pattern = "type: fire",                     plain = true,  sound = "explosion",         cat = "damage" },
  { id = "damage_explosion",     pattern = "type: explosion",                plain = true,  sound = "explosion_large",   cat = "damage" },

  -----------------------------------------------------------------------
  -- CRITICAL ATTACK RESOLUTION  (ship combat attack result)
  --   Attack [17] -> [at Free Trader]  [CRITICAL]
  -----------------------------------------------------------------------
  -- Attack results (their own narrator line after the attack roll)
  --   [HIT]   [HIT] [Effect 3]   [MISS]   [MISS] [Out of Range]   Sandcaster [9] [HIT]
  --   Dangerous weapon EXPLODES!   [COMBAT MISHAP]
  { id = "weapon_explodes",      pattern = "weapon explodes!",                 plain = true,  sound = "explosion_shattering", cat = "damage" },
  { id = "combat_mishap",        pattern = "[combat mishap]",                  plain = true,  sound = "mishap_spark",     cat = "damage" },
  { id = "attack_hit",           pattern = "[hit]",                            plain = true,  sound = "light_hit",        cat = "tasks" },
  { id = "attack_miss",          pattern = "[miss]",                           plain = true,  sound = "attack_miss",      cat = "tasks" },

  --   MGT2 2026-05 puts a line break before it: "Attack [14] -> [at Free Trader]\r[CRITICAL]"
  { id = "critical_attack",      pattern = "%]%s*%[critical%]",              plain = false, sound = "explosion_destruction", cat = "damage" },

  -----------------------------------------------------------------------
  -- DEATH / STATUS  (from the damage-result line)
  --   [Egil Tedorsson is DEAD]
  --   [DAMAGE EXCEEDS WOUNDTRACK BY 12] [STATUS: Dead]
  --   [UNCONSCIOUS] [STATUS: Heavy]
  --   Damage [12] -> [to Egil] [STATUS: Moderate]
  --   Damage [4] -> [to Cyrus] [ARMOUR reduced damage] [STATUS: Light]
  -----------------------------------------------------------------------
  { id = "death",                pattern = "is dead]",                       plain = true,  sound = "death_sound",       cat = "status" },
  { id = "unconscious",          pattern = "[unconscious]",                  plain = true,  sound = "body_fall",         cat = "status" },
  { id = "status_dead",          pattern = "[status: dead]",                 plain = true,  sound = "death_sound",       cat = "status" },
  { id = "status_heavy",         pattern = "[status: heavy]",                plain = true,  sound = "wound_heavy",       cat = "status" },
  { id = "status_moderate",      pattern = "[status: moderate]",             plain = true,  sound = "wound_moderate",    cat = "status" },
  { id = "status_light",         pattern = "[status: light]",                plain = true,  sound = "light_hit",         cat = "status" },
  -- after the wound status lines, which share the damage-result line
  { id = "armour_reduced",       pattern = "[armour protection",               plain = true,  sound = "armour_impact",    cat = "damage" },
  { id = "disabling_wound",      pattern = "[disabling wound effect]",         plain = true,  sound = "wound_heavy",      cat = "status" },
  { id = "fire_burning",         pattern = "[auto extinguish fire",            plain = true,  sound = "flame_heavy",      cat = "status" },
  { id = "radiation",            pattern = "[radiation",                       plain = true,  sound = "radiation_geiger", cat = "status" },
  { id = "heal",                 pattern = "[heal]",                           plain = true,  sound = "defibrillator",    cat = "status" },

  -----------------------------------------------------------------------
  -- SPECIAL SKILLS  (flavour sound on the roll line)
  --   [SKILL] Medic (2D+2) [+2]  (vs Difficulty 8)
  --   [TASK] Astrogation (2D+1)   (vs Difficulty 4)
  --   [SKILL] Pilot (spacecraft) (2D+3)  (vs Difficulty 6)
  --   [TOWER] [SKILL] Engineer (j-drive) (2D+3)  (vs Difficulty 4)
  --   [SKILL] Electronic (Computer) (2D+4)  (vs Difficulty 6)
  --   [SKILL] Mechanic (2D+2)
  --   [SKILL] Gun Combat (2D+1)
  --   [SKILL] Recon (2D+0)
  --   [SKILL] Stealth (2D+1)
  --   [SKILL] Investigate (2D+2)
  --   [SKILL] Broker (2D+1)
  -----------------------------------------------------------------------
  { id = "psi_telepathy",        pattern = "[psi ability] telepathy",          plain = true,  sound = "psi_telepathy",    cat = "skills" },
  { id = "psi_telekinesis",      pattern = "[psi ability] telekinesis",        plain = true,  sound = "psi_telekinesis",  cat = "skills" },
  { id = "psi_ability",          pattern = "[psi ability]",                    plain = true,  sound = "psi_blast",        cat = "skills" },
  { id = "pilot_small_craft",    pattern = "[skill] pilot (small craft",       plain = true,  sound = "landing",          cat = "skills" },
  { id = "engineer_j_drive",     pattern = "[skill] engineer (j-drive",        plain = true,  sound = "warp_exit",        cat = "skills" },
  { id = "engineer_life_supp",   pattern = "[skill] engineer (life support",   plain = true,  sound = "airlock_close",    cat = "skills" },
  { id = "medic_skill",          pattern = "[skill] medic",                  plain = true,  sound = "medkit",            cat = "skills" },
  { id = "astrogation",          pattern = "] astrogation (",                plain = true,  sound = "warp_drive",        cat = "skills" },
  { id = "pilot_skill",          pattern = "[skill] pilot",                  plain = true,  sound = "thruster_sound",    cat = "skills" },
  { id = "engineer_skill",       pattern = "[skill] engineer",               plain = true,  sound = "engine_sound",      cat = "skills" },
  { id = "electronic_skill",     pattern = "[skill] electronic",             plain = true,  sound = "computer_beep",     cat = "skills" },
  { id = "mechanic_skill",       pattern = "[skill] mechanic",               plain = true,  sound = "engine_sound",      cat = "skills" },
  { id = "recon_skill",          pattern = "[skill] recon",                  plain = true,  sound = "pager_beep",        cat = "skills" },
  { id = "stealth_skill",        pattern = "[skill] stealth",                plain = true,  sound = "pager_beep",        cat = "skills" },
  { id = "investigate_skill",    pattern = "[skill] investigate",             plain = true,  sound = "computer_beep",     cat = "skills" },
  { id = "broker_skill",         pattern = "[skill] broker",                 plain = true,  sound = "computer_beep",     cat = "skills" },
  { id = "science_skill",        pattern = "[skill] science",                plain = true,  sound = "computer_beep",     cat = "skills" },
  { id = "comms_skill",          pattern = "[skill] comms",                  plain = true,  sound = "comms_hail",        cat = "skills" },
  { id = "sensors_skill",        pattern = "[skill] sensors",                plain = true,  sound = "pager_beep",        cat = "skills" },
  { id = "vacc_suit_skill",      pattern = "[skill] vacc suit",              plain = true,  sound = "airlock_open",      cat = "skills" },
  { id = "explosives_skill",     pattern = "[skill] explosives",               plain = true,  sound = "explosion",        cat = "skills" },
  { id = "heavy_weapons_skill",  pattern = "[skill] heavy weapons",            plain = true,  sound = "laser_heavy",      cat = "skills" },
  { id = "language_skill",       pattern = "[skill] language",                 plain = true,  sound = "comms_alien",      cat = "skills" },
  { id = "admin_skill",          pattern = "[skill] admin",                    plain = true,  sound = "access_denied",    cat = "skills" },
  { id = "deception_skill",      pattern = "[skill] deception",                plain = true,  sound = "picking_lock",     cat = "skills" },
  { id = "demolitions_skill",    pattern = "[skill] demolitions",            plain = true,  sound = "explosion",         cat = "skills" },
  { id = "drive_skill",          pattern = "[skill] drive",                  plain = true,  sound = "engine_sound",      cat = "skills" },
  { id = "flyer_skill",          pattern = "[skill] flyer",                  plain = true,  sound = "thruster_sound",    cat = "skills" },
  { id = "gunner_skill",         pattern = "[skill] gunner",                 plain = true,  sound = "ship_beam_laser",   cat = "skills" },
  { id = "guncombat_skill",      pattern = "[skill] gun combat",             plain = true,  sound = "pistol_light",      cat = "skills" },

  -----------------------------------------------------------------------
  -- SKILL / TASK RESULTS  (generic fallback – always last)
  --   [ +7 Effect] [Exceptional SUCCESS]
  --   [ +2 Effect] [Average SUCCESS]
  --   [ +0 Effect] [Marginal SUCCESS]
  --   [ -3 Effect] [Average FAILURE]
  --   [ -1 Effect] [Marginal FAILURE]
  -----------------------------------------------------------------------
  { id = "exceptional_success",  pattern = "effect%] %[exceptional success", plain = false, sound = "computer_success",  cat = "tasks" },
  { id = "task_success",         pattern = "effect%] %[.*success",           plain = false, sound = "computer_success",  cat = "tasks" },
  { id = "task_failure",         pattern = "effect%] %[.*failure",           plain = false, sound = "computer_fail",     cat = "tasks" },
}

---------------------------------------------------------------------------
-- SPELLS  (empty – Traveller has no spell system)
---------------------------------------------------------------------------
spells = {}
