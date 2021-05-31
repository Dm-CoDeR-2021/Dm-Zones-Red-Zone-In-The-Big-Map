DM = nil
Citizen.CreateThread(function()
  while DM == nil do
    TriggerEvent('esx:getSharedObject', function(object) DM = object end)
    Citizen.Wait(0)
  end
  --code
  while true do
    Wait(0)
    for k, v in pairs(Config.locations) do
      zone = AddBlipForRadius(v.pos.x, v.pos.y, v.pos.z, 1000.0)
      SetBlipSprite(zone, 1)
      SetBlipAlpha(zone, 1)
      SetBlipColour(zone, 1)
    end
  end
end)