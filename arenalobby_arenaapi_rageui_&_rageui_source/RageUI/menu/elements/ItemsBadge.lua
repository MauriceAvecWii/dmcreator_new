RageUI.BadgeStyle = {
    -- DEFAULT BADGE
    None = function()
        return {
            BadgeTexture = "",
            BadgeDictionary = "commonmenu"
        }
    end,
    BronzeMedal = function()
        return {
            BadgeTexture = "mp_medal_bronze",
        }
    end,
    GoldMedal = function()
        return {
            BadgeTexture = "mp_medal_gold",
        }
    end,
    SilverMedal = function()
        return {
            BadgeTexture = "medal_silver",
        }
    end,
    Alert = function()
        return {
            BadgeTexture = "mp_alerttriangle",
        }
    end,
    Crown = function(Selected)
        return {
            BadgeTexture = "mp_hostcrown",
            BadgeColour = Selected and {R = 0, G = 0, B = 0, A = 255} or {R = 255, G = 255, B = 255, A = 255}
        }
    end,
    Ammo = function(Selected)
        return {
            BadgeTexture = Selected and "shop_ammo_icon_b" or "shop_ammo_icon_a",
        }
    end,
    Armour = function(Selected)
        return {
            BadgeTexture = Selected and "shop_armour_icon_b" or "shop_armour_icon_a",
        }
    end,
    Barber = function(Selected)
        return {
            BadgeTexture = Selected and "shop_barber_icon_b" or "shop_barber_icon_a",
        }
    end,
    Clothes = function(Selected)
        return {
            BadgeTexture = Selected and "shop_clothing_icon_b" or "shop_clothing_icon_a",
        }
    end,
    Franklin = function(Selected)
        return {
            BadgeTexture = Selected and "shop_franklin_icon_b" or "shop_franklin_icon_a",
        }
    end,
    Bike = function(Selected)
        return {
            BadgeTexture = Selected and "shop_garage_bike_icon_b" or "shop_garage_bike_icon_a",
        }
    end,
    Car = function(Selected)
        return {
            BadgeTexture = Selected and "shop_garage_icon_b" or "shop_garage_icon_a",
        }
    end,
    Boat = function(Selected)
        return {
            BadgeTexture = Selected and "mp_specitem_boat_black" or "mp_specitem_boat",
            BadgeDictionary = "mpinventory"
        }
    end,
    Heli = function(Selected)
        return {
            BadgeTexture = Selected and "mp_specitem_heli_black" or "mp_specitem_heli",
            BadgeDictionary = "mpinventory"
        }
    end,
    Plane = function(Selected)
        return {
            BadgeTexture = Selected and "mp_specitem_plane_black" or "mp_specitem_plane",
            BadgeDictionary = "mpinventory"
        }
    end,
    BoatPickup = function(Selected)
        return {
            BadgeTexture = Selected and "mp_specitem_boatpickup_black" or "mp_specitem_boatpickup",
            BadgeDictionary = "mpinventory"
        }
    end,
    Card = function(Selected)
        return {
            BadgeTexture = Selected and "mp_specitem_keycard_black" or "mp_specitem_keycard",
            BadgeDictionary = "mpinventory"
        }
    end,
    Gun = function(Selected)
        return {
            BadgeTexture = Selected and "shop_gunclub_icon_b" or "shop_gunclub_icon_a",
        }
    end,
    Heart = function(Selected)
        return {
            BadgeTexture = Selected and "shop_health_icon_b" or "shop_health_icon_a",
        }
    end,
    Makeup = function(Selected)
        return {
            BadgeTexture = Selected and "shop_makeup_icon_b" or "shop_makeup_icon_a",
        }
    end,
    Mask = function(Selected)
        return {
            BadgeTexture = Selected and "shop_mask_icon_b" or "shop_mask_icon_a",
        }
    end,
    Michael = function(Selected)
        return {
            BadgeTexture = Selected and "shop_michael_icon_b" or "shop_michael_icon_a",
        }
    end,
    Star = function()
        return {
            BadgeTexture = "shop_new_star",
        }
    end,
    Tattoo = function(Selected)
        return {
            BadgeTexture = Selected and "shop_tattoos_icon_b" or "shop_tattoos_icon_a",
        }
    end,
    Trevor = function(Selected)
        return {
            BadgeTexture = Selected and "shop_trevor_icon_b" or "shop_trevor_icon_a",
        }
    end,
    Lock = function(Selected)
        return {
            BadgeTexture = "shop_lock",
            BadgeColour = Selected and {R = 0, G = 0, B = 0, A = 255} or {R = 255, G = 255, B = 255, A = 255}
        }
    end,
    Tick = function(Selected)
        return {
            BadgeTexture = "shop_tick_icon",
            BadgeColour = Selected and {R = 0, G = 0, B = 0, A = 255} or {R = 255, G = 255, B = 255, A = 255}
        }
    end,
    Key = function(Selected)
        return {
            BadgeTexture = Selected and "mp_specitem_cuffkeys_black" or "mp_specitem_cuffkeys",
            BadgeDictionary = "mpinventory"
        }
    end,
    Coke = function(Selected)
        return {
            BadgeTexture = Selected and "mp_specitem_coke_black" or "mp_specitem_coke",
            BadgeDictionary = "mpinventory"
        }
    end,
    Heroin = function(Selected)
        return {
            BadgeTexture = Selected and "mp_specitem_heroin_black" or "mp_specitem_heroin",
            BadgeDictionary = "mpinventory"
        }
    end,
    Meth = function(Selected)
        return {
            BadgeTexture = Selected and "mp_specitem_meth_black" or "mp_specitem_meth",
            BadgeDictionary = "mpinventory"
        }
    end,
    Weed = function(Selected)
        return {
            BadgeTexture = Selected and "mp_specitem_weed_black" or "mp_specitem_weed",
            BadgeDictionary = "mpinventory"
        }
    end,
    Package = function(Selected)
        return {
            BadgeTexture = Selected and "mp_specitem_package_black" or "mp_specitem_package",
            BadgeDictionary = "mpinventory"
        }
    end,
    Cash = function(Selected)
        return {
            BadgeTexture = Selected and "mp_specitem_cash_black" or "mp_specitem_cash",
            BadgeDictionary = "mpinventory"
        }
    end,
    RP = function(Selected)
        return {
            BadgeTexture = "mp_anim_rp",
            BadgeDictionary = "mphud"
        }
    end,
    LSPD = function()
        return {
            BadgeTexture = "mpgroundlogo_cops",
            BadgeDictionary = "3dtextures"
        }
    end,
    Vagos = function()
        return {
            BadgeTexture = "mpgroundlogo_vagos",
            BadgeDictionary = "3dtextures"
        }
    end,
    Bikers = function()
        return {
            BadgeTexture = "mpgroundlogo_bikers",
            BadgeDictionary = "3dtextures"
        }
    end,

    -- CASINO
    Badbeat = function()
        return {
            BadgeTexture = "badbeat",
            BadgeDictionary = "mpawardcasino"
        }
    end,
    CashingOut = function()
        return {
            BadgeTexture = "cashingout",
            BadgeDictionary = "mpawardcasino"
        }
    end,
    FullHouse = function()
        return {
            BadgeTexture = "fullhouse",
            BadgeDictionary = "mpawardcasino"
        }
    end,
    HighRoller = function()
        return {
            BadgeTexture = "highroller",
            BadgeDictionary = "mpawardcasino"
        }
    end,
    HouseKeeping = function()
        return {
            BadgeTexture = "housekeeping",
            BadgeDictionary = "mpawardcasino"
        }
    end,
    LooseCheng = function()
        return {
            BadgeTexture = "loosecheng",
            BadgeDictionary = "mpawardcasino"
        }
    end,
    LuckyLucky = function()
        return {
            BadgeTexture = "luckylucky",
            BadgeDictionary = "mpawardcasino"
        }
    end,
    PlayToWin = function()
        return {
            BadgeTexture = "playtowin",
            BadgeDictionary = "mpawardcasino"
        }
    end,
    StraightFlush = function()
        return {
            BadgeTexture = "straightflush",
            BadgeDictionary = "mpawardcasino"
        }
    end,
    StrongArmTactics = function()
        return {
            BadgeTexture = "strongarmtactics",
            BadgeDictionary = "mpawardcasino"
        }
    end,
    TopPair = function()
        return {
            BadgeTexture = "toppair",
            BadgeDictionary = "mpawardcasino"
        }
    end,
}

RageUI.BadgeTexture = {
    [1] = function()
        return ""
    end,
    [2] = function()
        return "mp_medal_bronze"
    end,
    [3] = function()
        return "mp_medal_gold"
    end,
    [4] = function()
        return "medal_silver"
    end,
    [5] = function()
        return "mp_alerttriangle"
    end,
    [6] = function()
        return "mp_hostcrown"
    end,
    [7] = function(Selected)
        return Selected and "shop_ammo_icon_b" or "shop_ammo_icon_a"
    end,
    [8] = function(Selected)
        return Selected and "shop_armour_icon_b" or "shop_armour_icon_a"
    end,
    [9] = function(Selected)
        return Selected and "shop_barber_icon_b" or "shop_barber_icon_a"
    end,
    [10] = function(Selected)
        return Selected and "shop_clothing_icon_b" or "shop_clothing_icon_a"
    end,
    [11] = function(Selected)
        return Selected and "shop_franklin_icon_b" or "shop_franklin_icon_a"
    end,
    [12] = function(Selected)
        return Selected and "shop_garage_bike_icon_b" or "shop_garage_bike_icon_a"
    end,
    [13] = function(Selected)
        return Selected and "shop_garage_icon_b" or "shop_garage_icon_a"
    end,
    [14] = function(Selected)
        return Selected and "shop_gunclub_icon_b" or "shop_gunclub_icon_a"
    end,
    [15] = function(Selected)
        return Selected and "shop_health_icon_b" or "shop_health_icon_a"
    end,
    [16] = function(Selected)
        return Selected and "shop_makeup_icon_b" or "shop_makeup_icon_a"
    end,
    [17] = function(Selected)
        return Selected and "shop_mask_icon_b" or "shop_mask_icon_a"
    end,
    [18] = function(Selected)
        return Selected and "shop_michael_icon_b" or "shop_michael_icon_a"
    end,
    [19] = function()
        return "shop_new_star"
    end,
    [20] = function(Selected)
        return Selected and "shop_tattoos_icon_b" or "shop_tattoos_icon_a"
    end,
    [21] = function(Selected)
        return Selected and "shop_trevor_icon_b" or "shop_trevor_icon_a"
    end,
    [22] = function()
        return "shop_lock"
    end,
    [23] = function()
        return "shop_tick_icon"
    end,
    [24] = function(Selected)
        return Selected and "mp_specitem_boat_black" or "mp_specitem_boat"
    end,
    [25] = function(Selected)
        return Selected and "mp_specitem_heli_black" or "mp_specitem_heli"
    end,
    [26] = function(Selected)
        return Selected and "mp_specitem_plane_black" or "mp_specitem_plane"
    end,
    [27] = function(Selected)
        return Selected and "mp_specitem_boatpickup_black" or "mp_specitem_boatpickup"
    end,
    [28] = function(Selected)
        return Selected and "mp_specitem_keycard_black" or "mp_specitem_keycard"
    end,
    [29] = function(Selected)
        return Selected and "mp_specitem_cuffkeys_black" or "mp_specitem_cuffkeys"
    end,
    [30] = function(Selected)
        return Selected and "mp_specitem_coke_black" or "mp_specitem_coke"
    end,
    [31] = function(Selected)
        return Selected and "mp_specitem_heroin_black" or "mp_specitem_heroin"
    end,
    [32] = function(Selected)
        return Selected and "mp_specitem_meth_black" or "mp_specitem_meth"
    end,
    [33] = function(Selected)
        return Selected and "mp_specitem_weed_black" or "mp_specitem_weed"
    end,
    [34] = function(Selected)
        return Selected and "mp_specitem_package_black" or "mp_specitem_package"
    end,
    [35] = function(Selected)
        return Selected and "mp_specitem_cash_black" or "mp_specitem_cash"
    end,
    [36] = function(Selected)
        return "mp_anim_rp"
    end,
    [37] = function()
        return "mpgroundlogo_cops"
    end,
    [38] = function()
        return "mpgroundlogo_vagos"
    end,
    [39] = function()
        return "mpgroundlogo_bikers"
    end,
    [40] = function()
        return "badbeat"
    end,
    [41] = function()
        return "cashingout"
    end,
    [42] = function()
        return "fullhouse"
    end,
    [43] = function()
        return "highroller"
    end,
    [44] = function()
        return "housekeeping"
    end,
    [45] = function()
        return "loosecheng"
    end,
    [46] = function()
        return "luckylucky"
    end,
    [47] = function()
        return "playtowin"
    end,
    [48] = function()
        return "straightflush"
    end,
    [49] = function()
        return "strongarmtactics"
    end,
    [50] = function()
        return "toppair"
    end,
    [51] = function(Selected)
        return Selected and "ui_rp_b" or "ui_rp_a"
    end,
    [52] = function(Selected)
        return Selected and "ui_helmet_b" or "ui_helmet_a"
    end,
    [53] = function(Selected)
        return Selected and "ui_parachute_b" or "ui_parachute_a"
    end,
    [54] = function(Selected)
        return Selected and "ui_radio_b" or "ui_radio_a"
    end,
}

RageUI.BadgeDictionary = {
    [1] = function(Selected)
        return "commonmenu"
    end,
    [24] = function(Selected)
        return "mpinventory"
    end,
    [25] = function(Selected)
        return "mpinventory"
    end,
    [26] = function(Selected)
        return "mpinventory"
    end,
    [27] = function(Selected)
        return "mpinventory"
    end,
    [28] = function(Selected)
        return "mpinventory"
    end,
    [29] = function(Selected)
        return "mpinventory"
    end,
    [30] = function(Selected)
        return "mpinventory"
    end,
    [31] = function(Selected)
        return "mpinventory"
    end,
    [32] = function(Selected)
        return "mpinventory"
    end,
    [33] = function(Selected)
        return "mpinventory"
    end,
    [34] = function(Selected)
        return "mpinventory"
    end,
    [35] = function(Selected)
        return "mpinventory"
    end,
    [36] = function(Selected)
        return "mphud"
    end,
    [37] = function()
        return "3dtextures"
    end,
    [38] = function()
        return "3dtextures"
    end,
    [39] = function()
        return "3dtextures"
    end,
    [40] = function()
        return "mpawardcasino"
    end,
    [41] = function()
        return "mpawardcasino"
    end,
    [42] = function()
        return "mpawardcasino"
    end,
    [43] = function()
        return "mpawardcasino"
    end,
    [44] = function()
        return "mpawardcasino"
    end,
    [45] = function()
        return "mpawardcasino"
    end,
    [46] = function()
        return "mpawardcasino"
    end,
    [47] = function()
        return "mpawardcasino"
    end,
    [48] = function()
        return "mpawardcasino"
    end,
    [49] = function()
        return "mpawardcasino"
    end,
    [50] = function()
        return "mpawardcasino"
    end,
}

RageUI.BadgeColour = {
    [6] = function(Selected)
        if Selected then
            return 0, 0, 0, 255
        else
            return 255, 255, 255, 255
        end
    end,
    [22] = function(Selected)
        if Selected then
            return 0, 0, 0, 255
        else
            return 255, 255, 255, 255
        end
    end,
    [23] = function(Selected)
        if Selected then
            return 0, 0, 0, 255
        else
            return 255, 255, 255, 255
        end
    end,
}

---GetBadgeTexture
---@param Badge string
---@param Selected boolean
---@return table
---@public
function RageUI.GetBadgeTexture(Badge, Selected)
    if RageUI.BadgeTexture[Badge] then
        return RageUI.BadgeTexture[Badge](Selected)
    else
        return ""
    end
end

function RageUI.CurrentIsEqualTo(Current, To, Style, DefaultStyle)
    if (Current == To) then
        return Style;
    else
        return DefaultStyle or {};
    end
end

---GetBadgeDictionary
---@param Badge string
---@param Selected boolean
---@return table
---@public
function RageUI.GetBadgeDictionary(Badge, Selected)
    if RageUI.BadgeDictionary[Badge] then
        return RageUI.BadgeDictionary[Badge](Selected)
    else
        return "commonmenu"
    end
end

---GetBadgeColour
---@param Badge string
---@param Selected boolean
---@return table
---@public
function RageUI.GetBadgeColour(Badge, Selected)
    if RageUI.BadgeColour[Badge] then
        return RageUI.BadgeColour[Badge](Selected)
    else
        return 255, 255, 255, 255
    end
end
