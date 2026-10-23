# Changelog

## Summary: v0.7.0 compared with v0.5.0

| | v0.5.0 | v0.7.0 |
| --- | --- | --- |
| Sounds that actually played | 29 (a fallback list; the full catalog never loaded) | 91 |
| Triggers in use | 29 | 143 |
| Settings | 7 category toggles in a chat window that did not work | 21 settings in **Options > Kraken Syrinscape** |
| Ship combat with the current MGT2 ruleset | silent | attacks, launches, impacts, point defence, criticals |
| Hidden GM rolls (NPC attacks) | always silent | Silent / Combat only / All |
| Weapon words in normal chat ("hit the club") | played sounds | silent; weapons play only on attack and damage rolls |
| Tested | sample chat lines | real rolls in FGU and every sound recorded off the speakers |

## 0.7.0 (2026-10-23)

- **Every setting is in the Options window**, in its own **Kraken Syrinscape** group, so the GM makes the call. Saved with the campaign.
  - Sound triggers: On / Off (master switch)
  - Hidden GM rolls: Silent / Combat only / All. *Combat only* (the default) plays NPC and ship attacks, damage, wounds and hit/miss, but keeps hidden skill checks quiet so they give nothing away.
  - Sounds on/off for each of the seven categories: ship combat; initiative, ammo, morale, tactics; personal weapons; damage, armour, mishaps; wounds, fire, radiation, healing; skill and psionic rolls; success/failure, hit/miss.
  - Damage roll sound: Weapon / Impact / Both
  - Attack result sound: Hit and miss / Hit only / Miss only / Off
  - Skill result sounds: All / Exceptional only / Successes only / Failures only / Off
  - Wound and death sounds, Initiative sound, Ship range warnings, Psionic sounds: On / Off
  - Healing sound: Defibrillator / Medikit / Off
  - Same sound again after: 1 / 3 / 5 / 10 seconds
  - Startup message in chat: On / Off
  - Show trigger matches in chat: On / Off
- `/krakensyrin toggle`, `/krakensyrin hidden off|combat|all`, `/krakensyrin debug` and the `/krakensyrin config` window change the same options. Category settings from earlier versions carry over once.

## 0.6.1 (2026-10-23)

- **Fix:** the `/krakensyrin config` window's buttons now change the categories. Before, they could neither read nor change them.
- **Fix:** ship critical hits (`Free Trader: Critical Hit: Hull`) and an attack's `[CRITICAL]` result play again with the current MGT2 ruleset, which prints them differently.
- Tested with real rolls in Fantasy Grounds: skills, psionics, heal, tactics, crew morale, attacks with hit/miss, damage, combat mishap, disabling wound, ship attacks, missile launch and salvo impact, critical hits. Every one of the 91 sounds was recorded off the speakers to confirm it plays.

## 0.6.0 (2026-10-23)

- **New sounds for MGT2 events that had none:** ship launch (missile or torpedo), missile impact, point defence, very high yield, vehicle critical hits, ship range Close/Adjacent, laser bays and barbettes, hit and miss results, "Dangerous weapon EXPLODES!", combat mishap, armour reduced/removed, disabling wound, fire, radiation, healing, crew morale, tactics, psionics (telepathy, telekinesis and the rest), Pocket Nuke attacks.
- **New skill sounds:** Pilot (small craft), Engineer (j-drive), Engineer (life support), Explosives, Heavy Weapons, Language, Admin, Deception.
- Every sound in the catalog now has a trigger (16 were never used).
- 10 new sounds from Syrinscape's sci-fi packs: Flak thrower, Missile Impact, Geiger counter, ricochet/whiz-by, three psionic sounds, Short Circuit, a battle cry and Steel Impact.
- **Fix:** the Explosives skill had no sound (the trigger looked for "Demolitions", which isn't an MGT2 skill).
- Launch error messages ("Select or target an enemy spacecraft first") stay silent.

## 0.5.1 (2026-10-23)

- **Fix:** the full sound catalog loads. v0.5.0 quietly fell back to a 29-sound list, so most weapon, ship and skill sounds never played.
- **Fix:** ship attack and damage sounds match the current MGT2 ruleset (`[SHIP ATTACK (R)] Pulse Laser`, `[SHIP DAMAGE #2] ...`).
- **Fix:** weapon sounds play only on attack and damage rolls. Before, any chat line with a weapon word in it ("club", "plasma", "knife") played a sound.
- **Fix:** `/krakensyrin invite` uses Fantasy Grounds' own invite: the GM control link goes only to the GM, players get the player link. Before, everyone got the GM controls.
- **Fix:** the loaded message and warnings show in chat at startup (they were lost before chat was ready).

## 0.5.0

The version these changes start from: 79 sounds and 106 triggers in the catalog (not loading, see 0.5.1), seven category toggles, the `/krakensyrin config` window and chat commands.
