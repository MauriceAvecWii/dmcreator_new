Config = {}

Config.Prop = "prop_arcade_01"
Config.DrawDistance = 5.0
Config.Height = 1.5
Config.Color = {
    red = 0,
    green = 37,
    blue = 83,
    alpha = 255,
}

Config.Location = {						
    x = 4972.68,
    y = -2885.77,
    z = 14.00,
}

Config.Admin = {
	["steam:11000010971396e"] = true,
}

-- https://docs.fivem.net/docs/game-references/blips/
Config.Blip = 304
Config.BlipColor = 29

-- Custom font support languages.
-- Uncomment to enable font.
if not IsDuplicityVersion() then
    Citizen.CreateThread(function()
        -- RegisterFontFile('arabic')
        -- RegisterFontFile('chinese')
    end)
end