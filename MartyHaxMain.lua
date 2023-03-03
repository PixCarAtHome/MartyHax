local executionsoundeffect = Instance.new("Sound", game.Workspace)
executionsoundeffect.SoundId = "rbxassetid://9125673453"

if not executionsoundeffect.IsLoaded then
    executionsoundeffect.Loaded:Wait()
end

executionsoundeffect:Play()

if game.PlaceId == 10411692284 or 10411696938 then
    loadstring(
        game:HttpGet(
            "https://raw.githubusercontent.com/PixCarAtHome/MartyHax/main/versions/martyhaxlegacyforLOREGAME.lua"
        )
    )()
end
