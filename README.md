# StarBeeHub

Script for the Roblox game **Break and Steal an Egg** (PlaceId `114326934417838`), tested on the Xeno executor.

## Load

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/gwrico/StarBeeHub/main/BeeBSE.luau"))()
```

## Features

- **Auto Break**: breaks eggs automatically.
- **Auto Steal**: steals pets and carries them to your base or a drop zone.
  - Filters for rarity, pet name, minimum kg and minimum Cash/s (with a unit dropdown: K, M, B, T, Qa).
  - Cash/s includes the weather mutation (Lightning, Frozen, Angelic, Hacker, Time, Void) and the variant (Gold, Diamond).
  - Go To Steal Zone First: waits in the chosen zone, then picks the best pet.
  - Checks for a wrong pick: if the picked pet fails the filter, it drops that pet away from the right one and goes back.
  - Recover: if a guard knocks the pet out of your hands, it goes back for it (2 tries within 30s).
- **Avoid Guards**: while carrying a pet, steps around guards that are ahead on the way home.
- **Middle-lane routing**: runs down the middle of each zone so it does not get stuck on walls.
- **Auto Break + Auto Steal together**: requires Min Cash/s. It keeps breaking eggs and only steals pets at or above the minimum.
