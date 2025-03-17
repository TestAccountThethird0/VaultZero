local Map = {
    [142823291] = "https://raw.githubusercontent.com/TestAccountThethird0/VaultZero/refs/heads/main/Branches/MurderMystery2.lua",
}
--CODE--
if table.find(Map,game.PlaceId) then
    loadstring(Map[game.PlaceId])()
end
