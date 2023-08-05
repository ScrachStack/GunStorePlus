
config = {
	framework = 'none', -- set this to esx/qbcore/none >> enables buying. you can edit prices via the 5th index of config.weapons[...][...]

    gunStores = {
        {
            name = "Sandy Ammu-Nation",
            position = vector3(1693.71, 3760.54, 34.71),
        },
        {
            name = "2",
            position = vector3(100.0, -200.0, 30.0),
        },
        -- Add more gun store locations as needed
    },
	menuPosition = "center",
	menuWidth = 80,


    weapons = {
        Handguns = {
            pistols_1 = {"Pistol", "weapon_pistol", 699, "Most reliable and dependable sidearm for law-enforcement, military and personal defense.", 500},
            pistols_2 = {"Combat Pistol", "weapon_combatpistol", 549, "Short recoil-operated, semi-automatic pistol designed and produced by Hawk & Little.", 500},
            pistols_3 = {"AP Pistol", "weapon_appistol", 6100, "High-penetration, fully-automatic pistol. Holds 18 rounds in the magazine.", 500},
            pistols_4 = {"Pistol .50", "weapon_pistol50", 2550, "High-impact pistol that delivers immense power but with extremely strong recoil.", 500},
            pistols_5 = {"SNS Pistol", "weapon_snspistol", 300, "Like condoms or hairspray, this fits in your pocket for a night on the town.", 500},
            pistols_6 = {"Heavy Pistol", "weapon_heavypistol", 1100, "The heavyweight champion. Delivers accuracy and a serious forearm workout every time.", 500},
            pistols_7 = {"Heavy Revolver", "weapon_revolver", 5900, "A handgun with enough stopping power to drop a crazed rhino.", 500},
            pistols_8 = {"Double Action Revolver", "weapon_doubleaction", 279, "Sometimes revenge is a dish best served six times, in quick succession, right between the eyes.", 500}
        },
        SubmachineGuns = {
            submachineGuns_1 = {"Micro SMG", "weapon_microsmg", 2400, "Combines compact design with a high rate of fire at approximately 700-900 rounds per minute.", 500},
            submachineGuns_2 = {"SMG", "weapon_smg", 2150, "This is known as a good all-around submachine gun. Lightweight with an accurate sight.", 500},
            submachineGuns_3 = {"Assault SMG", "weapon_assaultsmg", 1480, "A high-capacity submachine gun that is both compact and lightweight. Holds up to 30 bullets.", 500},
            submachineGuns_4 = {"Combat PDW", "weapon_combatpdw", 1799, "Who said personal weaponry couldn't be worthy of military personnel? Integral suppressor.", 500},
            submachineGuns_5 = {"Machine Pistol", "weapon_machinepistol", 1100, "The snare drum to your twin-engine V8 bass: no drive-by sounds quite right without it.", 500},
            submachineGuns_6 = {"Mini SMG", "weapon_minismg", 1240, "Increasingly popular since marketing team started caring about little guys in low income areas.", 500}
        },
        Shotguns = {
            shotguns_1 = {"Pump Shotgun", "weapon_pumpshotgun", 800, "Standard shotgun ideal for short-range combat. High-projectile spread, lower accuracy at long range.", 500},
            shotguns_2 = {"Sawed-Off Shotgun", "weapon_sawnoffshotgun", 450, "Single-barrel, sawed-off shotgun. Low range and ammo capacity but devastating in close combat.", 500},
            shotguns_3 = {"Musket", "weapon_musket", 1600, "Armed with nothing but muskets and a superiority complex, the Brits took over half the world.", 500},
            shotguns_4 = {"Double Barrel Shotgun", "weapon_dbshotgun", 300, "Who needs a high fire rate when your first shot turns the other guy into a fine mist?", 500},
            shotguns_5 = {"Sweeper Shotgun", "weapon_autoshotgun", 995, "How many effective tools for riot control can you tuck into your pants?", 500},
            shotguns_6 = {"Combat Shotgun", "weapon_combatshotgun", 1200, "There's only one semi-automatic shotgun with a fire rate that sets the LSFD alarm ringing.", 500}
        },
        AssaultRifles = {
            assaultRifles_1 = {"Assault Rifle", "weapon_assaultrifle", 8280, "This standard assault rifle boasts a large capacity magazine and long distance accuracy.", 500},
            assaultRifles_2 = {"Carbine Rifle", "weapon_carbinerifle", 9700, "Combining long distance accuracy with a high capacity magazine, make the hit.", 500},
            assaultRifles_3 = {"Advanced Rifle", "weapon_advancedrifle", 8800, "The most lightweight and compact of all rifles, without compromising accuracy and fire rate.", 500},
            assaultRifles_4 = {"Special Carbine", "weapon_specialcarbine", 7200, "Combining accuracy, maneuverability, firepower and low recoil, this is extremely versatile.", 500},
            assaultRifles_5 = {"Bullpup Rifle", "weapon_bullpuprifle", 1750, "The latest Chinese import taking America by storm, this rifle is known for balanced handling.", 500},
            assaultRifles_6 = {"Compact Rifle", "weapon_compactrifle", 2390, "Half the size, all the power, double the recoil: no riskier way to say \"I'm compensating\".", 500}
        },
        LightMachineGuns = {
            lightMachineGuns_1 = {"MG", "weapon_mg", 8500, "General purpose machine. Long range penetrative power. Very effective against large groups.", 500},
            lightMachineGuns_2 = {"Combat MG", "weapon_combatmg", 9530, "Lightweight and excellent maneuverability with a high rate of fire to devastating effect.", 500},
            lightMachineGuns_3 = {"Gusenberg Sweeper", "weapon_gusenberg", 2800, "Looks great sticking out the window of a Roosevelt or paired with a pinstripe suit.", 500}
        },
  

    }
}
