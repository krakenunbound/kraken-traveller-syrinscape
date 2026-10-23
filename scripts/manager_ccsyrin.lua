-- Public functions go in Public; onInit copies them onto the CCSyrin package
-- (the package global does not exist yet while this file loads).
local Public = {}

local DEBUG = false
local WARNED_MISSING_TOKEN = false
local WARNED_MISSING_CATALOG = false
local PLAYED_AT = {}

---------------------------------------------------------------------------
-- Default category list (used by fallback catalog and for initialisation)
---------------------------------------------------------------------------
local DEFAULT_CATEGORIES = {
  { id = "ship",    name = "Ship Combat",       desc = "Ship weapons, launches, point defence, damage, criticals, vehicles" },
  { id = "comms",   name = "Communications",    desc = "Initiative, ammo warnings, crew morale, tactics" },
  { id = "weapons", name = "Personal Weapons",  desc = "Ranged and melee weapon attacks" },
  { id = "damage",  name = "Damage Impacts",    desc = "Damage types, armour, weapon mishaps and explosions" },
  { id = "status",  name = "Wounds / Status",   desc = "Wounds, death, unconscious, fire, radiation, healing" },
  { id = "skills",  name = "Skill Rolls",       desc = "Skill and psionic rolls (medic, pilot, telepathy, etc.)" },
  { id = "tasks",   name = "Task Results",      desc = "Success / failure, hit / miss result sounds" },
}

---------------------------------------------------------------------------
-- Fallback catalog (subset used when external catalog fails to load)
---------------------------------------------------------------------------
local FALLBACK_CATALOG = {
  sounds = {
    comms_hail      = { name = "Incoming Hail",              sound_id = "ss|4487229|element|oneshot|Incoming Hail",              so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/4487229/play/?auth_token=" },
    alert_sound     = { name = "Alert sound",                sound_id = "ss|4509066|element|oneshot|Alert sound",                so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/4509066/play/?auth_token=" },
    pistol_light    = { name = "Pistol - Light",             sound_id = "ss|65172|element|oneshot|Pistol - Light",               so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/65172/play/?auth_token=" },
    pistol_heavy    = { name = "Pistol - Heavy",             sound_id = "ss|65192|element|oneshot|Pistol - Heavy",               so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/65192/play/?auth_token=" },
    laser_carbine   = { name = "Laser - Long",               sound_id = "ss|65171|element|oneshot|Laser - Long",                so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/65171/play/?auth_token=" },
    blade_strike    = { name = "Swords",                     sound_id = "ss|4287430|element|oneshot|Swords",                     so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/4287430/play/?auth_token=" },
    grenade         = { name = "Grenade",                    sound_id = "ss|67025|element|oneshot|Grenade",                      so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/67025/play/?auth_token=" },
    kinetic_impact  = { name = "Blaster impact",             sound_id = "ss|5128|element|oneshot|Blaster impact",                so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/5128/play/?auth_token=" },
    laser_impact    = { name = "Forcefield Hit",             sound_id = "ss|8119|element|oneshot|Forcefield Hit",                so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/8119/play/?auth_token=" },
    stun_impact     = { name = "Pulsecaster",                sound_id = "ss|3926431|element|oneshot|Pulsecaster",                so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/3926431/play/?auth_token=" },
    ship_beam_laser = { name = "Light laser cannon",         sound_id = "ss|63137|element|oneshot|Light laser cannon",           so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/63137/play/?auth_token=" },
    ship_hit        = { name = "Severe Missile Hits",        sound_id = "ss|2038|element|oneshot|Severe Missile Hits",           so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/2038/play/?auth_token=" },
    ship_explosion  = { name = "Shattering explosion",       sound_id = "ss|5132|element|oneshot|Shattering explosion",          so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/5132/play/?auth_token=" },
    explosion       = { name = "Explosion",                  sound_id = "ss|917|element|oneshot|Explosion",                      so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/917/play/?auth_token=" },
    explosion_large = { name = "Large explosion",            sound_id = "ss|2043107|element|oneshot|Large explosion",             so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/2043107/play/?auth_token=" },
    explosion_destruction = { name = "Explosion with destruction", sound_id = "ss|4132914|element|oneshot|Explosion with destruction", so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/4132914/play/?auth_token=" },
    wound_moderate  = { name = "Scream low",                 sound_id = "ss|4132912|element|oneshot|Scream low",                 so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/4132912/play/?auth_token=" },
    wound_heavy     = { name = "Scream high",                sound_id = "ss|4132913|element|oneshot|Scream high",                so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/4132913/play/?auth_token=" },
    light_hit       = { name = "Taking Fire",                sound_id = "ss|2196|element|oneshot|Taking Fire",                   so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/2196/play/?auth_token=" },
    death_sound     = { name = "Major Impact",               sound_id = "ss|2182|element|oneshot|Major Impact",                  so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/2182/play/?auth_token=" },
    body_fall       = { name = "Thump body fall",            sound_id = "ss|3050517|element|oneshot|Thump body fall",            so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/3050517/play/?auth_token=" },
    medkit          = { name = "Medication",                 sound_id = "ss|1919218|element|oneshot|Medication",                 so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/1919218/play/?auth_token=" },
    computer_success = { name = "Computer hacking success",  sound_id = "ss|2572591|element|oneshot|Computer hacking success",   so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/2572591/play/?auth_token=" },
    computer_fail   = { name = "Computer hacking fail",      sound_id = "ss|2572592|element|oneshot|Computer hacking fail",      so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/2572592/play/?auth_token=" },
    computer_beep   = { name = "Computer turned on",         sound_id = "ss|3913705|element|oneshot|Computer turned on",         so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/3913705/play/?auth_token=" },
    warp_drive      = { name = "Warp",                       sound_id = "ss|4487227|element|oneshot|Warp",                       so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/4487227/play/?auth_token=" },
    thruster_sound  = { name = "Maneuvering thrusters",      sound_id = "ss|561933|element|oneshot|Maneuvering thrusters",       so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/561933/play/?auth_token=" },
    engine_sound    = { name = "Engine check",               sound_id = "ss|898857|element|oneshot|Engine check",                so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/898857/play/?auth_token=" },
    pager_beep      = { name = "Pager beeps",                sound_id = "ss|4287424|element|oneshot|Pager beeps",                so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/4287424/play/?auth_token=" },
    ammo_click      = { name = "Shotgun pump",               sound_id = "ss|35047|element|oneshot|Shotgun pump",                 so_play = "syrinscape-online://syrinscape.com/online/frontend-api/elements/35047/play/?auth_token=" },
  },
  categories = DEFAULT_CATEGORIES,
  triggers = {
    { id = "ship_damage_crit",  pattern = "%[ship damage%].*%[critical%]", plain = false, sound = "ship_explosion",       cat = "ship" },
    { id = "ship_attack",       pattern = "[ship attack]",           plain = true,  sound = "ship_beam_laser",      cat = "ship" },
    { id = "ship_damage",       pattern = "[ship damage]",           plain = true,  sound = "ship_hit",             cat = "ship" },
    { id = "ship_critical",     pattern = "[critical hit]",          plain = true,  sound = "ship_explosion",       cat = "ship" },
    { id = "hull_damage",       pattern = "points of damage to hull",plain = true,  sound = "explosion_large",      cat = "ship" },
    { id = "initiative",        pattern = "[init]",                  plain = true,  sound = "alert_sound",          cat = "comms" },
    { id = "ammo_out",          pattern = "out of ammo]",            plain = true,  sound = "ammo_click",           cat = "comms" },
    { id = "att_grenade",       pattern = "grenade",                 plain = true,  sound = "grenade",              cat = "weapons" },
    { id = "att_laser",         pattern = "[attack (r)] laser",      plain = true,  sound = "laser_carbine",        cat = "weapons" },
    { id = "att_stunner",       pattern = "[attack (r)] stunner",    plain = true,  sound = "stun_impact",          cat = "weapons" },
    { id = "attack_ranged",     pattern = "[attack (r)]",            plain = true,  sound = "pistol_heavy",         cat = "weapons" },
    { id = "attack_melee",      pattern = "[attack (m)]",            plain = true,  sound = "blade_strike",         cat = "weapons" },
    { id = "damage_laser",      pattern = "type: laser",             plain = true,  sound = "laser_impact",         cat = "damage" },
    { id = "damage_stun",       pattern = "type: stun",              plain = true,  sound = "stun_impact",          cat = "damage" },
    { id = "damage_kinetic",    pattern = "type: kinetic",           plain = true,  sound = "kinetic_impact",       cat = "damage" },
    { id = "critical_attack",   pattern = "] [critical]",            plain = true,  sound = "explosion_destruction", cat = "damage" },
    { id = "death",             pattern = "is dead]",                plain = true,  sound = "death_sound",          cat = "status" },
    { id = "unconscious",       pattern = "[unconscious]",           plain = true,  sound = "body_fall",            cat = "status" },
    { id = "status_dead",       pattern = "[status: dead]",          plain = true,  sound = "death_sound",          cat = "status" },
    { id = "status_heavy",      pattern = "[status: heavy]",         plain = true,  sound = "wound_heavy",          cat = "status" },
    { id = "status_moderate",   pattern = "[status: moderate]",      plain = true,  sound = "wound_moderate",       cat = "status" },
    { id = "status_light",      pattern = "[status: light]",         plain = true,  sound = "light_hit",            cat = "status" },
    { id = "medic_skill",       pattern = "[skill] medic",           plain = true,  sound = "medkit",               cat = "skills" },
    { id = "astrogation",       pattern = "] astrogation (",         plain = true,  sound = "warp_drive",           cat = "skills" },
    { id = "pilot_skill",       pattern = "[skill] pilot",           plain = true,  sound = "thruster_sound",       cat = "skills" },
    { id = "engineer_skill",    pattern = "[skill] engineer",        plain = true,  sound = "engine_sound",         cat = "skills" },
    { id = "electronic_skill",  pattern = "[skill] electronic",      plain = true,  sound = "computer_beep",        cat = "skills" },
    { id = "task_success",      pattern = "effect%] %[.*success",    plain = false, sound = "computer_success",     cat = "tasks" },
    { id = "task_failure",      pattern = "effect%] %[.*failure",    plain = false, sound = "computer_fail",        cat = "tasks" },
  },
}

---------------------------------------------------------------------------
-- Helpers
---------------------------------------------------------------------------
local function postChat(text)
  Comm.addChatMessage({ text = text })
end

local function getState()
  if not GlobalRegistry.KRAKENTRAVELLER2ESYRIN then
    GlobalRegistry.KRAKENTRAVELLER2ESYRIN = {
      auth_token = "",
      hidden = false,
      enabled = true,
      categories = {},
    }
  end
  -- Migrate: add categories table if missing (upgrading from v0.3.x)
  if not GlobalRegistry.KRAKENTRAVELLER2ESYRIN.categories then
    GlobalRegistry.KRAKENTRAVELLER2ESYRIN.categories = {}
  end
  return GlobalRegistry.KRAKENTRAVELLER2ESYRIN
end

local function trim(text)
  return StringManager.trim(text or "")
end

local function splitCommand(text)
  local cmd, rest = text:match("^(%S+)%s*(.*)$")
  return string.lower(cmd or ""), trim(rest)
end

local function normalize(text)
  return string.lower(text or "")
end

local function escapePattern(text)
  return (text or ""):gsub("(%W)", "%%%1")
end

local function getCatalog()
  if CCSyrinCatalog and CCSyrinCatalog.sounds and CCSyrinCatalog.triggers then
    return CCSyrinCatalog
  end

  if not WARNED_MISSING_CATALOG then
    postChat("[Kraken Traveller 2E] Catalog script not available. Using fallback built-in catalog.")
    WARNED_MISSING_CATALOG = true
  end

  return FALLBACK_CATALOG
end

---------------------------------------------------------------------------
-- Category toggle helpers
---------------------------------------------------------------------------
local function getCategoryList()
  local catalog = getCatalog()
  if catalog.categories then
    return catalog.categories
  end
  return DEFAULT_CATEGORIES
end

---------------------------------------------------------------------------
-- Options (Settings > Options, "Kraken Syrinscape" group; campaign-wide)
---------------------------------------------------------------------------
local OPT_ON = "KTSYON"
local OPT_HIDDEN = "KTSYHID"
local OPT_DEBUG = "KTSYDBG"
local OPT_CAT_PREFIX = "KTSYC_"
local OPT_DAMAGE = "KTSYDMG"     -- damage roll: weapon / impact / both
local OPT_HITMISS = "KTSYHM"     -- attack result: both / hit / miss / off
local OPT_RESULTS = "KTSYRES"    -- skill results: all / exceptional / success / failure / off
local OPT_REPEAT = "KTSYREP"     -- seconds before the same sound can play again
local OPT_WOUNDS = "KTSYWND"
local OPT_INIT = "KTSYINIT"
local OPT_RANGE = "KTSYRNG"
local OPT_PSI = "KTSYPSI"
local OPT_HEAL = "KTSYHEAL"      -- defib / medkit / off
local OPT_STARTUP = "KTSYMSG"

-- Categories that "Hidden GM rolls: Combat only" lets through, plus the hit/miss lines
local COMBAT_CATS = { weapons = true, ship = true, damage = true, status = true }
local COMBAT_TRIGGERS = { attack_hit = true, attack_miss = true }

local function getCategoryOptionKey(catId)
  return OPT_CAT_PREFIX .. string.upper(catId)
end

local function registerOptions()
  local function onOff(sKey, sDefault)
    OptionsManager.registerOptionData({
      sKey = sKey, sGroupRes = "option_header_krakensyrin",
      tCustom = { labelsres = "option_val_on", values = "yes", baselabelres = "option_val_off", baseval = "no", default = sDefault },
    })
  end
  -- first value is the base (shown first), the rest cycle after it
  local function choice(sKey, sBaseVal, sBaseLabel, sValues, sLabels, sDefault)
    OptionsManager.registerOptionData({
      sKey = sKey, sGroupRes = "option_header_krakensyrin",
      tCustom = { baseval = sBaseVal, baselabelres = sBaseLabel, values = sValues, labelsres = sLabels, default = sDefault },
    })
  end

  onOff(OPT_ON, "yes")
  choice(OPT_HIDDEN, "off", "option_val_ktsy_silent", "combat|all", "option_val_ktsy_combat|option_val_ktsy_all", "combat")
  for _, cat in ipairs(DEFAULT_CATEGORIES) do
    onOff(getCategoryOptionKey(cat.id), "yes")
  end
  choice(OPT_DAMAGE, "weapon", "option_val_ktsy_weapon", "impact|both",
    "option_val_ktsy_impact|option_val_ktsy_both", "weapon")
  choice(OPT_HITMISS, "both", "option_val_ktsy_hitmiss", "hit|miss|off",
    "option_val_ktsy_hitonly|option_val_ktsy_missonly|option_val_off", "both")
  choice(OPT_RESULTS, "all", "option_val_ktsy_allresults", "exceptional|success|failure|off",
    "option_val_ktsy_exceptional|option_val_ktsy_successes|option_val_ktsy_failures|option_val_off", "all")
  onOff(OPT_WOUNDS, "yes")
  onOff(OPT_INIT, "yes")
  onOff(OPT_RANGE, "yes")
  onOff(OPT_PSI, "yes")
  choice(OPT_HEAL, "defib", "option_val_ktsy_defib", "medkit|off", "option_val_ktsy_medkit|option_val_off", "defib")
  choice(OPT_REPEAT, "1", "option_val_ktsy_1s", "3|5|10", "option_val_ktsy_3s|option_val_ktsy_5s|option_val_ktsy_10s", "1")
  onOff(OPT_STARTUP, "yes")
  onOff(OPT_DEBUG, "no")
end

local function isCategoryEnabled(catId)
  return not OptionsManager.isOption(getCategoryOptionKey(catId), "no")
end

local function setCategoryEnabled(catId, enabled)
  OptionsManager.setOption(getCategoryOptionKey(catId), enabled and "yes" or "no")
end

-- Settings from v0.6.0 and earlier lived in GlobalRegistry; carry them over once
local function migrateRegistrySettings()
  local state = getState()
  for catId, bEnabled in pairs(state.categories) do
    if bEnabled == false then
      setCategoryEnabled(catId, false)
    end
  end
  state.categories = {}
  if state.enabled == false then
    OptionsManager.setOption(OPT_ON, "no")
  end
  state.enabled = nil
  if state.hidden == true then
    OptionsManager.setOption(OPT_HIDDEN, "all")
  end
  state.hidden = nil
end

local function isValidCategory(catId)
  local cats = getCategoryList()
  for _, cat in ipairs(cats) do
    if cat.id == catId then
      return true
    end
  end
  return false
end

local function getCategoryName(catId)
  local cats = getCategoryList()
  for _, cat in ipairs(cats) do
    if cat.id == catId then
      return cat.name
    end
  end
  return catId
end

---------------------------------------------------------------------------
-- Public API (used by config form and other scripts)
---------------------------------------------------------------------------
function Public.getCategoryList()
  return getCategoryList()
end

function Public.isCategoryEnabled(catId)
  return isCategoryEnabled(catId)
end

function Public.setCategoryEnabled(catId, enabled)
  setCategoryEnabled(catId, enabled)
end

function Public.openConfigWindow()
  Interface.openWindow("krakensyrin_options", "")
end

---------------------------------------------------------------------------
-- Auth token helpers
---------------------------------------------------------------------------
local function hasToken()
  local state = getState()
  return trim(state.auth_token) ~= ""
end

local function getFGSoundState()
  return {
    auth_token = trim(DB.getValue("settings.sound.ss.authtoken", "")),
    session_id = trim(DB.getValue("settings.sound.ss.sessionid", "")),
  }
end

local function getActiveAuthToken()
  local soundState = getFGSoundState()
  if soundState.auth_token ~= "" then
    return soundState.auth_token, "fg"
  end

  local state = getState()
  local sAuth = trim(state.auth_token)
  if sAuth ~= "" then
    return sAuth, "legacy"
  end

  return "", ""
end

local function getFGPlayerUrl()
  local soundState = getFGSoundState()
  if soundState.session_id == "" then
    return ""
  end
  return "https://app.syrinscape.com/" .. soundState.session_id .. "/player/"
end

local function getFGGMUrl()
  local soundState = getFGSoundState()
  if soundState.session_id == "" then
    return ""
  end
  return "https://app.syrinscape.com/" .. soundState.session_id .. "/gm/"
end

local function shareFGSessionLinks()
  -- FG's own invite whispers the GM control link and sends only the player link to the table
  if SoundManagerSyrinscape and SoundManagerSyrinscape.sendPlayerInvite then
    SoundManagerSyrinscape.sendPlayerInvite()
    return
  end

  local soundState = getFGSoundState()
  if soundState.session_id == "" then
    postChat("[Kraken Traveller 2E] No FG Syrinscape session ID found at sound.ss.sessionid. Generate the Web Player Session URL first.")
    return
  end

  Comm.deliverChatMessage({ text = "Syrinscape session controls" })
  Comm.deliverChatMessage({ text = getFGGMUrl() })
  Comm.deliverChatMessage({ text = "Join my Syrinscape session!" })
  Comm.deliverChatMessage({ text = getFGPlayerUrl() })
end

---------------------------------------------------------------------------
-- Sound playback
---------------------------------------------------------------------------
local function playSoundData(soundData, rateKey)
  if not soundData then
    return
  end

  local auth, source = getActiveAuthToken()
  if auth == "" then
    if not WARNED_MISSING_TOKEN then
      postChat("[Kraken Traveller 2E] No Syrinscape auth token found in Fantasy Grounds Sound settings.")
      WARNED_MISSING_TOKEN = true
    end
    return
  end

  local key = rateKey or soundData.sound_id or soundData.name or "sound"
  local now = os.time()
  local last = PLAYED_AT[key] or 0
  local nRepeat = tonumber(OptionsManager.getOption(OPT_REPEAT)) or 1
  if now - last < nRepeat then
    return
  end

  if SoundManager and soundData.sound_id then
    SoundManager.playSound(soundData.sound_id)
  else
    local url = (soundData.so_play or "") .. auth
    url = string.gsub(url, "syrinscape%-online", "https")
    Interface.openURL(url)
  end

  PLAYED_AT[key] = now

  if DEBUG then
    postChat("[Kraken Traveller 2E] Played: " .. (soundData.name or key) .. " (" .. key .. ", auth=" .. source .. ")")
  end
end

local function playSoundKey(soundKey)
  local catalog = getCatalog()
  local soundData = catalog.sounds[soundKey]
  if not soundData then
    if DEBUG then
      postChat("[Kraken Traveller 2E] Unknown sound key: " .. tostring(soundKey))
    end
    return
  end
  playSoundData(soundData, soundKey)
end

-- Used by tests through the Kraken Agent Bridge
function Public.playSoundKey(soundKey)
  playSoundKey(soundKey)
end

function Public.getSoundKeys()
  local keys = {}
  for k, _ in pairs(getCatalog().sounds) do
    table.insert(keys, k)
  end
  table.sort(keys)
  return keys
end

---------------------------------------------------------------------------
-- Trigger matching
---------------------------------------------------------------------------
-- Weapon names ("club", "flame", "plasma") are common words, so weapon
-- triggers only fire on MGT2 attack and damage rolls, not on typed chat:
-- [ATTACK (R)] Name, [DAMAGE (R)] Name, [DAMAGE #2 (R)] Name, [DAMAGE] Name
local function isWeaponRollLine(text)
  return string.find(text, "%[attack[ %]]") ~= nil
    or string.find(text, "%[damage[ %]]") ~= nil
end

local function matchTrigger(text, trigger)
  if trigger.cat == "weapons" and not isWeaponRollLine(text) then
    return false
  end
  if trigger.plain then
    return string.find(text, trigger.pattern, 1, true) ~= nil
  end
  return string.find(text, trigger.pattern) ~= nil
end

-- The sound a matched trigger plays after the GM's options, or nil to stay silent
local WOUND_TRIGGERS = { death = true, unconscious = true, status_dead = true, status_heavy = true,
  status_moderate = true, status_light = true, disabling_wound = true }
local RESULT_TRIGGERS = { exceptional_success = true, task_success = true, task_failure = true }
local HEAL_SOUNDS = { defib = "defibrillator", medkit = "medkit" }

local function getTriggerSound(trigger, text)
  local id = trigger.id
  if id == "attack_hit" or id == "attack_miss" then
    local sMode = OptionsManager.getOption(OPT_HITMISS)
    if sMode == "off" or (sMode == "hit" and id == "attack_miss") or (sMode == "miss" and id == "attack_hit") then
      return nil
    end
  elseif RESULT_TRIGGERS[id] then
    local sMode = OptionsManager.getOption(OPT_RESULTS)
    if sMode == "off"
        or (sMode == "exceptional" and not string.find(text, "%[exceptional "))
        or (sMode == "success" and id == "task_failure")
        or (sMode == "failure" and id ~= "task_failure") then
      return nil
    end
  elseif WOUND_TRIGGERS[id] then
    if OptionsManager.isOption(OPT_WOUNDS, "no") then return nil end
  elseif id == "initiative" then
    if OptionsManager.isOption(OPT_INIT, "no") then return nil end
  elseif id == "ship_range_close" or id == "ship_range_adjacent" then
    if OptionsManager.isOption(OPT_RANGE, "no") then return nil end
  elseif string.sub(id, 1, 4) == "psi_" then
    if OptionsManager.isOption(OPT_PSI, "no") then return nil end
  elseif id == "heal" then
    return HEAL_SOUNDS[OptionsManager.getOption(OPT_HEAL)]
  end
  return trigger.sound
end

local function matchWholePhrase(text, phrase)
  local pattern = "%f[%w]" .. escapePattern(phrase) .. "%f[%W]"
  return string.find(text, pattern) ~= nil
end

local function matchSpell(text)
  if not CCSyrinCatalog or not CCSyrinCatalog.spells then
    return nil
  end

  for _, spell in ipairs(CCSyrinCatalog.spells) do
    if matchWholePhrase(text, spell.pattern) then
      return spell
    end
  end

  return nil
end

---------------------------------------------------------------------------
-- Message processing (core loop)
---------------------------------------------------------------------------
local function processMessage(msg)
  if not Session.IsHost then
    return
  end

  if OptionsManager.isOption(OPT_ON, "no") then
    return
  end

  local sHidden = OptionsManager.getOption(OPT_HIDDEN)
  if msg.secret and sHidden == "off" then
    return
  end

  local text = normalize(msg.text or "")
  if text == "" then
    return
  end

  local spell = matchSpell(text)
  if spell then
    if DEBUG then
      postChat("[Kraken Traveller 2E] Spell matched: " .. spell.pattern)
    end
    playSoundData(spell, "spell:" .. spell.pattern)
    return
  end

  -- Damage roll line: weapon sound, impact sound or both (option KTSYDMG)
  local bDamageLine = string.find(text, "%[damage[ %]]") ~= nil and string.find(text, "%[attack[ %]]") == nil
  local sDamageMode = OptionsManager.getOption(OPT_DAMAGE)
  local bWeaponPlayed = false

  local catalog = getCatalog()
  for _, trigger in ipairs(catalog.triggers) do
    local cat = trigger.cat
    local bWeapon = (cat == "weapons")
    local bSkip = bWeapon and bDamageLine and (sDamageMode == "impact" or bWeaponPlayed)
    if not bSkip and matchTrigger(text, trigger) then
      if cat and not isCategoryEnabled(cat) then
        if DEBUG then
          postChat("[Kraken Traveller 2E] Trigger matched: " .. trigger.id .. " (category '" .. cat .. "' is OFF, skipping)")
        end
      elseif msg.secret and sHidden == "combat" and not (COMBAT_CATS[cat] or COMBAT_TRIGGERS[trigger.id]) then
        -- Hidden GM roll with "Combat only": keep secret skill checks silent
        if DEBUG then
          postChat("[Kraken Traveller 2E] Trigger matched: " .. trigger.id .. " (hidden roll, not combat, skipping)")
        end
      else
        local sSound = getTriggerSound(trigger, text)
        if DEBUG then
          postChat("[Kraken Traveller 2E] Trigger matched: " .. trigger.id .. " [" .. (cat or "none") .. "]"
            .. (sSound and "" or " (silenced by an option)"))
        end
        -- "none" keeps a matched line silent (e.g. launch error messages)
        if sSound and sSound ~= "none" then
          playSoundKey(sSound)
        end
      end
      -- "Both": after the weapon sound, keep looking for the damage-type impact
      if bWeapon and bDamageLine and sDamageMode == "both" then
        bWeaponPlayed = true
      else
        return
      end
    end
  end
end

---------------------------------------------------------------------------
-- Slash command handlers
---------------------------------------------------------------------------
local function setToken(token)
  local state = getState()
  state.auth_token = trim(token)
  WARNED_MISSING_TOKEN = false
  if state.auth_token == "" then
    postChat("[Kraken Traveller 2E] Token cleared.")
  else
    postChat("[Kraken Traveller 2E] Token stored.")
  end
end

local function showStatus()
  local soundState = getFGSoundState()
  postChat(
    "[Kraken Traveller 2E] enabled="
      .. tostring(not OptionsManager.isOption(OPT_ON, "no"))
      .. ", hidden="
      .. OptionsManager.getOption(OPT_HIDDEN)
      .. ", token="
      .. (hasToken() and "set" or "missing")
      .. ", fg_auth="
      .. (soundState.auth_token ~= "" and "set" or "missing")
      .. ", fg_session="
      .. (soundState.session_id ~= "" and soundState.session_id or "missing")
  )
end

local function showCategories()
  postChat("[Kraken Traveller 2E] Sound categories:")
  local cats = getCategoryList()
  for _, cat in ipairs(cats) do
    local enabled = isCategoryEnabled(cat.id)
    local mark = enabled and "ON" or "OFF"
    postChat("  [" .. mark .. "]  " .. cat.id .. "  -  " .. cat.name .. " (" .. cat.desc .. ")")
  end
  postChat("Use: /krakensyrin toggle <category> on|off")
end

local function handleToggle(rest)
  local catId, onoff = rest:match("^(%S+)%s+(%S+)$")
  if not catId then
    -- No on/off given - show current state or toggle
    catId = trim(rest)
    if catId == "" then
      showCategories()
      return
    end
    catId = string.lower(catId)
    if not isValidCategory(catId) then
      postChat("[Kraken Traveller 2E] Unknown category: " .. catId)
      showCategories()
      return
    end
    -- Toggle current value
    local current = isCategoryEnabled(catId)
    setCategoryEnabled(catId, not current)
    local newState = not current and "ON" or "OFF"
    postChat("[Kraken Traveller 2E] " .. getCategoryName(catId) .. " (" .. catId .. ") = " .. newState)
    return
  end

  catId = string.lower(catId)
  onoff = string.lower(onoff)

  if not isValidCategory(catId) then
    postChat("[Kraken Traveller 2E] Unknown category: " .. catId)
    showCategories()
    return
  end

  local enabled = (onoff == "on")
  setCategoryEnabled(catId, enabled)
  local mark = enabled and "ON" or "OFF"
  postChat("[Kraken Traveller 2E] " .. getCategoryName(catId) .. " (" .. catId .. ") = " .. mark)
end

local function setDebug(value)
  OptionsManager.setOption(OPT_DEBUG, value and "yes" or "no")
  DEBUG = value
  postChat("[Kraken Traveller 2E] Debug " .. (value and "enabled" or "disabled") .. ".")
end

local HIDDEN_WORDS = { on = "all", all = "all", off = "off", silent = "off", combat = "combat", attacks = "combat" }
local HIDDEN_LABELS = { all = "All", off = "Silent", combat = "Combat only" }

local function setHidden(sWord)
  local sMode = HIDDEN_WORDS[sWord]
  if not sMode then
    postChat("[Kraken Traveller 2E] Use: /krakensyrin hidden off|combat|all")
    return
  end
  OptionsManager.setOption(OPT_HIDDEN, sMode)
  postChat("[Kraken Traveller 2E] Hidden GM rolls: " .. HIDDEN_LABELS[sMode] .. ".")
end

local function showHelp()
  postChat("[Kraken Traveller 2E] Available commands:")
  postChat("  /krakensyrin help                     Show this help")
  postChat("  /krakensyrin config                   Open category toggle window")
  postChat("  /krakensyrin categories               List categories and status")
  postChat("  /krakensyrin toggle <cat> [on|off]     Toggle a category")
  postChat("  /krakensyrin status                   Show connection status")
  postChat("  /krakensyrin token <token>            Set auth token manually")
  postChat("  /krakensyrin debug on|off             Show trigger debug output")
  postChat("  /krakensyrin hidden off|combat|all    Sounds for hidden GM rolls")
  postChat("  All settings are also in Options > Kraken Syrinscape")
  postChat("  /krakensyrin invite                   Share Syrinscape session links")
  postChat("  /krakensyrin test <sound_key>         Test a sound by key name")
end

local function handleSlash(_, params)
  local command, rest = splitCommand(params or "")

  if command == "" or command == "help" then
    showHelp()
    return
  end

  if command == "config" or command == "options" then
    Public.openConfigWindow()
    return
  end

  if command == "token" then
    setToken(rest)
    return
  end

  if command == "debug" then
    setDebug(normalize(rest) == "on")
    return
  end

  if command == "hidden" then
    setHidden(normalize(rest))
    return
  end

  if command == "status" then
    showStatus()
    return
  end

  if command == "fgstatus" then
    showStatus()
    return
  end

  if command == "invite" then
    shareFGSessionLinks()
    return
  end

  if command == "toggle" then
    handleToggle(rest)
    return
  end

  if command == "categories" then
    showCategories()
    return
  end

  if command == "test" then
    playSoundKey(trim(rest))
    return
  end

  showHelp()
end

---------------------------------------------------------------------------
-- Init
---------------------------------------------------------------------------
local function checkConflicts()
  if SoundManager and SoundManager.onChatMessage then
    postChat("[Kraken Traveller 2E] WARNING: Another Syrinscape sound extension appears to be active (e.g. Syrinscape-Sounds.ext). You may hear duplicate triggers. Disable one of them in the extension manager to avoid doubled sounds.")
  end
end

function onInit()
  for k, fn in pairs(Public) do
    CCSyrin[k] = fn
  end

  registerOptions()
  OptionsManager.registerCallback(OPT_DEBUG, function() DEBUG = OptionsManager.isOption(OPT_DEBUG, "yes") end)

  if not Session.IsHost then
    return
  end

  getState()
  Comm.registerSlashHandler("krakensyrin", handleSlash, "help|config|toggle <cat> [on|off]|categories|status|token <auth>|debug on|off|hidden off|combat|all|invite|test <key>")
  ChatManager.registerReceiveMessageCallback(processMessage)
end

-- Chat is not ready during onInit, so startup messages go here
function onTabletopInit()
  if not Session.IsHost then
    return
  end

  migrateRegistrySettings()
  DEBUG = OptionsManager.isOption(OPT_DEBUG, "yes")
  getCatalog()
  checkConflicts()
  if AgentBridge and AgentBridge.registerPackage then
    AgentBridge.registerPackage("CCSyrin", CCSyrin)
  end
  if not OptionsManager.isOption(OPT_STARTUP, "no") then
    postChat("[Kraken Traveller 2E] v0.7.0 loaded. Settings: Options > Kraken Syrinscape. Commands: /krakensyrin help")
  end
end
