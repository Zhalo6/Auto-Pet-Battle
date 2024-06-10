## What is this project about?

Creating an "auto-chess" style fighting game using a new coding language.

## Who is the project for?

This project is targeted towards people who have an interest in unique auto chess games or games built in Lua.

# Design

## Reason

Auto-chess games exist in a wide variety of shapes and sizes all with varying levels of popularity. The most painful part about playing any of these games is balance, additions, and the game as a whole is run by an external source. By creating our own auto-chess game we can get the same entertaining experience but any changes can be made as we see fit.

## Proposition

### Features

**1. Multiplayer**
   - Peer to peer based matchmaking.
   - Play with friends via join codes.
   - Quick and stable connections.
   - Minimal lag.
     
**2. Sigleplayer**
   - Various difficulties that can be selected.
   - Scaling difficulty as the game goes on.
   - AI opponents that feel like a challenge to beat.
   - Playable offline.

**3. Settings**
   - Screen size.
   - Graphics quality.
   - Sound.
     
**4. Compatibility**
   - Web based.
   - Windows application.
     
**5. Shop**
   - Rotates through a variety of different pets/fighters.
   - Prices vary based on quality of object and rarity.
   - Higher quality objects appear less often and boast higher power.
   - Shop can be refreshed for a small price.
   - Can freeze and unfreeze pets and items so that they dont roll. 
   - All based off of an ingame currency.
   - If the player gets a pet or item they want to keep but can't afford/want to save for later it can be "frozen" so when the next shop roll happens whether its automatic after the combat round or manual when paid for that pet or item will not be changed out allowing for further team building.
     
**6. Combat**
   - Normal speed and a sped up speed.
   - Simple animations to provide clarity.
   - Quick and concise.
     
**7. Statistics**
   - All relevant stats are saved after losing or winning.
   - Stats are saved and compared at the end of matches to see improvement or lacking areas.
   - Stats saved during the game to ensure luck is a factor but kept to a minimum (Pity system).
     
**8. Items**
   - Cosmetic items that can be bought with a unique ingame currency acquired from winning (Provide no ingame advantage).
   - Ingame items that provide unique and meaningful buffs that last for a single term or match.
   - Larger variety.

**9. Fighters**
   - Large variety of fighters.
   - Various strengths and weaknesses for each fighter.
   - Rarer fighters have stronger perks.
   - Multiple class types (Damage, Tank, Support, Flex etc...).

**10. Level Ups**
   - Better chance at rare pets and items.
   - Unlocks higher rarities that were previously locked.
   - Increase the amount of money earned per win.
   - Decreased health lost per loss.

### In depth Feature Explanation

**1. Multiplayer**

The goal with multiplayer is to have a player "create" a game and to use their computer/device as the host. When a game is created a code will be generated that the other player can input to connect to their server. Codes will be randomly generated and unique. 

**5. Shop**

The shop will host five pets and two items. All items and pets will be in a list with values attached to them correlating to their rarity. Items and pets will be randomly selected with chances, albeit small, for any rarity of pet allowed at the time. Certain tiers of pets will be unlocked as the game progresses but not available until a certain point to ensure that one side doesn't win purely off of luck. Items will work based on the same system. A stack will be generated at the end of combat which will hold all of the items and pets to be added into the shop as well as other potential shop rotations. The other rotations will be used if the player decides to spend their money on a new rotation.

**5.5. Shop Pity**

In order for games to not be based entirely off of luck and make it so that more often than not the better skilled player will win a pity system will be added to the shop. The pity system will act as a multiplier for the player's odds of getting rare pets and items. The size of the multiplier will increase in small amounts every time a shop is rolled without a rare pet, a large amount on wins, and a small amount on losses. Pity resets when a rare pet or item is attained to ensure the winning player doesn't continue to get lots of high quality pets in a row. Level Ups will increase the base multiplier of the pity making it easier to stack up large amounts.

**6. Combat**

Combat will not be turn based as the "auto-chess" genre of game focuses on having the pets fight as they are after the player has arranged them with minimal to no outside impact from the player after combat starts. Combat begins with the both of the first pets placed in line to preform their actions at the same time. This will then continue until a pet dies and then moves onto the next pet in line until all of a players pets are defeated. Combat can be sped up to reduce time wasted if the both players agree on it. A prompt will be put on the opposite player's screen if one side clicks the speed up button. Combat will have the pets attack at the same time in a lineup.

**7. Statistics**

Relevant stats will be saved at the end of the game such as gold earned, pets bought, items bought, time spent, round won, rounds lost, rare pets bought, rare pets earned, average combat win percentage, average combat loss percentage etc... The stats will be saved to a document that can be opened by the player and a "stats" tab will be added later for ingame viewing.

**8. Items**

The two main types of items in the game will be cosmetic and buff based. Cosmetic items can be purchased with money earned from winning complete matches and will provide no in game benefit. buff based items will be used during gameplay to enhance your pets by giving them stat boosts or unique effects based on which item you have. The explanation of which items you can buy and how to buy them is explained in the shop section. The goal with items is to have a massive variety to choose from so the items don't become boring quickly and the potential for team compositions and item builds is large.

**9. Fighters** 

Similar to items the goal for the fighters/pets is to have a massive variety so that there is as many team compositions as possible. Fighters will be divided based on their class and rarity. The classes will include support, damage, tank, assassin, and flex. The difference between classes will be mostly based on intrinsic traits and stat distribution. Support classes will have low damage and low health making them easy to kill while having intrinsic traits focused on increasing the damage of those in front of or to the side of them. Damage classes will have moderate health with a large amount of damage and intrinsic traits focused on dealing more damage or buffing themselves based on damage dealt. Tanks will have low damage but high health acting as a polar opposite to damage dealers. Assassins will have low health and moderate damage but intrinsic traits focused on high value targets or sneak attacks such as attacking supports at the back of the line or attacking when it isn't their turn. Flex class will have moderate health and moderate damage and be a jack of all trades, master of none, style character.

**10. Level Ups**

Level Ups will bring a unique tactical advantage for players to focus on or avoid. Experience can be earned by paying for it or winning matches, losing matches will give a very small amount as well. After reaching a threshold, higher levels having higher thresholds, the player will level up. The higher the player's level is the more gold they will earn for a win while also taking less damage from a loss. It will also increase the odds the player has of finding rare pets and items and at certain milestones (3, 6, 9...) the player will unlock rarities of pets and items previously locked behind level requirements. At major milestones (5, 10, 15...) the player will earn the ability to play more pets than the base amount, one per major milestone. The goal with leveling up is to entice players with a wide variety of benefits in the long run but no immediate return adding more strategy to the game.

## Pet List 
5 levels for 5 tiers. For each level, gain increased odds to get higher tier pets and items. Higher tier pets are stronger and have more unique abilities but more expensive. Higher tier items have greater effects. H-# will refer to health, D-# will refer to damage. 

**Tier Odds**

Tier 1 
Odds - 100% T1, 0% T2, 0% T3, 0% T4, 0% T5

Tier 2 
Odds - 40% T1, 50% T2, 10% T3, 0% T4, 0% T5


Tier 3
Odds - 22% T1, 24% T2, 36% T3, 18% T4, 0% T5


Tier 4 
Odds - 10% T1, 22% T2, 33% T3, 30% T4, 5% T5


Tier 5 
Odds - 5% T1, 15% T2, 28% T3, 32% T4, 20% T5


**Tier 1 pets**

Dog - Damage
H-3 D-2
Combat start - Deal D-1 to front enemy.

Cat - Damage
H-3 D-2
Combat start - Deal D-1 to opposite row enemy.

Rat - Assassin
H-1 D-3 
Combat start - Deal D-1 to lowest health enemy.
Faint - Deal D-1 to lowest health enemy.

Bunny - Support
H-2 D-2
Combat start - Give H-1 to ally in front.

Chicken - Support
H-3 D-1
Faint - Summon H-1 D-1 chick.

Pig - Tank
H-4 D-2
Trait - Shield first instance of D from each pet by D-1.

Cow - Tank
H-4 D-1
Trait - Upgraded pets give cow H-1.

Duck - Support
H-1 D-2
Combat start - Give D-1 to ally in front.

Red Bird - Damage
H-2 D-3
Ally faint - Gain D-1.

Snail - Special 
H-1 D-1
Combat start - Swap positions of 2 front enemies.


**Tier 2 pets**

Ant - Support
H-1 H-1
Ally faint - Summon an H-1 D-1 worker ant in fainted ally’s place.

Fox - Damage
H-3 D-3
Ally summon - Gain D-2.

Worm - Support
H-3 D-2
Ally summon - Give D-2 to ally in front.

Skunk - Damage
H-4 D-3
Enemy summon - Deal D-2 to summoned enemy.

Bumblebee - Assassin
H-2 D-5
Trait - Always hit front enemy in both rows.
Faint - Summon H-2 D-3 Honey Bee.

Monkey - Damage
H-4 D-2
Ally faint - Gain D-1.
Faint - Summon a chimpanzee, H-2 and D based on current D.

Turtle - Support
H-4 D-3
Combat start - Shield first instance of D of beside ally by D-3.

Moose - Tank
H-5 D-2
Combat start - Gain H-1 for each enemy in opposite row.

Alligator - Tank
H-6 D-2
Trait - Gain D-1 for each H-2.
Faint - Summon Crocodile based on gained H and D.

Sheep - Special
H-3 D-3
Trait - After 2 combats, next item buy is free.
Combat start - Item effects on allies are also put on the ally beside them.


**Tier 3 pets**

Flamingo - Support
H-5 D-3
Trait - if last to faint, grant permanent H-1 and D-1 to 2 random pets.
Combat start - Grant H-1 and D-1 for each H for ally in front.

Lion - Damage
H-6 D-6
Combat start - Gain D-1 for each item effect active.
Trait - Always attack opposite row.

Bat - Assassin
H-3 D-7
Ally faint - Deal D-2 to all enemies in corresponding row.

Penguin - Damage 
H-6 D-6
Enemy summon - Gain H-3 and D-3.

Panda - Tank
H-6 D-2
Trait - Any instance of damage grants H-2 to itself and deals D-2 to a random enemy. After 10 instances of damage, grant current health to ally beside.

Shrimp - Support
H-3 D-3
Ally faint - Grant ally in front equal amount of current D.

Seahorse - Damage
H-4 D-4
Any faint - Gain H-2 and D-1.
Faint - Summon H-3 D-3 fish.

Lobster - Tank
H-8 D-4
Combat start - Reduce D of enemy in front by half for 2 attacks. If enemy faints while D is reduced, next enemy in line will have reduced D.

Camel - Support
H-4 D-4 
Trait - Giving 3 items to pets during planning phase gives 2 random pets permanent H-1 and D-1.
Combat start - Grant H-3 and D-3 to ally beside. Once buffed ally faints, summon H-2 D-4 spider in their place.

Owl - Special
H-3 D-5
Ally faint - Enemy that beat the ally will have D reduced to 0 for 1 attack.
Ally summon - Grant all allies H-1 and D-1.


**Tier 4 pets**

Sloth - Support
H-1 D-3
Trait - If sold, grant 3 random allies permanent H-1 and D-1.
Ally summon - Grant ally behind the summon D-3.

Otter - Support
H-8 D-6
Trait - After combat, grant permanent H-1 and D-1 to 3 random allies for every 3 summons fainted.
Faint - summon a crayfish that has H and D depending on how many allies have fainted.

Beaver - Damage
H-10 D-7
Ally summon - Deal current D to enemy in front in opposite row.

Dolphin - Support
H-10 D-3
Trait - After spending 7 gold, give 3 random pets permanent H-1 and D-1 after combat.

Rhino - Tank
H-15 D-1
Trait - After receiving damage, gain H-2 and doubles D.

Octopus - Damage
H-8 D-8
Trait - Every 8 instances of damage, gain H-4 and D-4.
Combat start - Deal D-4 to 8 random enemies.

Gorilla - Tank
H-10 D-5
Trait - If front enemy has greater D than current D, increase H by enemy current D and gain D-2.

Komodo dragon - Damage
H-8 D-15
Ally faint - lose D-1.

Hedgehog - Assassin
H-4 D-10
Ally faint - Deal current D to random enemy.

Kangaroo - Special
H-0 D-0
Trait - Ally in front gets put into the pouch. Gain H and D equal to half ally in pouch.
Faint - Summon ally in pouch.

**Tier 5 pets**

Blue whale - Damage
H-15 D-0
Trait - After 10 instances of damage, increase D based on all adjacent allies D.
Trait - Gain H from half of current D.

Peacock - Support
H-13 D-0
Trait - Each instance of damage increases D by that amount. Grant this to itself and beside ally.

Dragon - Tank
H-20 D-10
Combat start - Copy all enemies H in same row as its own.
Trait - Grant D taken as H to behind ally.

Blobfish - Damage
H-10 D-5
Trait - Blocks first 5 instances of D taken and stores it as its own.
Faint - Summon another H-5 D-0 blobfish.

Scorpion - Assassin
H-7 D-20
Combat start - Deal D-1000 to opposite row enemy in the back.

Caribou - Tank
H-25 D-7
Trait - Taunt enemies from opposite row.
Trait - After 10 instances of damage, all enemies currently targeting caribou takes D based off current H.

Pelican - Support
H-20 D-5
Trait - If an ally in front were to faint, consume them. For each instance of damage, grant swallowed ally and ally behind H-1 and D-1.
Faint - Summon swallowed ally.

Axolotl - Support
H-1 D-1
Trait - After 5 instances of damage, 3 random enemies stats are set to H-1 D-1 and then steals half of all D and H combined from the 3 enemies for itself and all adjacent allies.

Python - Damage
H-12 D-10
Enemy faint - Gain total current D from fainted enemy.

Unicorn - Special
H-1 D-1
Trait - summon all previously summoned allies if last ally standing.
Ally summon - Double H and D.

## Item List

**No tier items**

Milk - Grant H and D dependant on amount of fielded allies

Coconut - Grant H dependant on tier 

Peanut - Grant D dependant on tier

**Tier 1 items**

Apple - Grant H-1 D-1

Orange - Grant H-2

Peach - Grant D-2

Cookie - Grant H-3 D-3 for 1 combat

Honey - Ally faint summons H-1 D-1 bee

**Tier 2 items**

Cherry - Grant H-1 D-1 to 2 random allies

Cupcake - Grant H-3 but minus D-1

Broccoli - Grant D-3 but minus H-1

Rice - Grant D-5 for 1 attack in each row

Bacon - Attack opposite row for 1 attack

**Tier 3 items**

Croissant - Grant H-2 D-2 to 2 random allies

Pineapple - Grant H-2 to 2 random allies

Avocado - Grant D-2 to 2 random allies

Garlic - First attack towards pet will redirect it to opposite row for 1 attack

Eggplant - Push enemy in corresponding back row 1 position forwards

**Tier 4 items**

Chocolate - Grant H-3 to 2 random allies

Donut - Grant D-3 to 2 random allies

Pumpkin - Ally fainting is summoned as a H-1 D-1 copy

Waffle - Ally faint summons random pet of the same tier

Melon - Block first instance of damage by D-20

**Tier 5 items**

Chili - Grant H-3 to a full row of allies

Taco - Grant D-3 to a full row of allies

Sushi - Grant H-2 D-2 to all allies

Fortune cookie - Gain money dependant on D once ally has fainted for 1 combat

Lasagna - First instance of damage is increased by D-20

## Prototype

A prototype version of this project is being worked on in [Figma](https://www.figma.com/proto/40ItVBp04bnJVzJPun6qvb/AUTO-PETS-BATTLE?node-id=0-1&t=nAuTQ6VmjAJu6cV3-1).

## Development

**Design Environment:** Figma

**Language:** Lua

**Game Engine:** Love2D

**IDE:** VSCode

**Version Control:** GitHub

**Organization:** Prettier
