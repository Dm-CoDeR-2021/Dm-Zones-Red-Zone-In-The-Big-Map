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
      local alpha = 250
      zone = AddBlipForRadius(v.pos.x, v.pos.y, v.pos.z, 130.0)
      SetBlipAsShortRange(zone, true)
      SetBlipHighDetail(zone, true)
      SetBlipAlpha(zone, alpha)
      SetBlipColour(zone, 1)
      while alpha ~= 0 do
			  Citizen.Wait(30000)
			  alpha = alpha - 1
			  SetBlipAlpha(mzone, alpha)
      end
    end
  end
end)
