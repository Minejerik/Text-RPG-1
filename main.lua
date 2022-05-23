--variable stuff
os.execute("clear")
local cmd = require('more stuff/bigcmd')
local buy = require('more stuff/buy')
local intro = require('more stuff/intro')
Input = 0
Diftable = {}
Diftable[1] = "Normal Difficulty"
Diftable[2] = "Hard Difficulty"
Diftable[3] = "Extreme Difficulty"
Money=10
Health=25
Loss=0
Strength=15
Food=1
Name = 0
Drip=0
Car=false
Motorcycle=false
Clothes=false
House=false
Difficulty = 1
Version = "beta 2.0"
Energy = 10
Chance = 1
local gain
Promotion = 1
Soft_Locked = 0
Intro_Complete = 0
Ammount = 1


intro.start()
io.write("[1] - Normal Difficulty\n[2] - Hard Difficulty\n[3] - EXTREME DIFFICULTY\n")
Difficulty = io.read()
local function main_loop()
io.write("\nWhat would you like to do?\n")
Input = io.read()

if Input == "work" then
  if Energy > 0 then
	Money=Money+5*Promotion/Difficulty
  Energy=Energy-1*Difficulty
  print("Money =", (Money))
  print("Energy Left =", (Energy))
    else
      print("Out Of Energy! Eat Some Food!")
    end
end

if Input == "eat" then
Ammount = 1
io.write("Ammount?\n")
Ammount = io.read()
  if Ammount*Food>=0 then
  Health=Health+5*Ammount/Difficulty
  Food=Food-1*Ammount*Difficulty
  Energy=Energy+5*Ammount/Difficulty
  print("Health =",(Health))
  print("Food Left =",(Food))  
  print("Energy =", (Energy))
  else
    print("You are out of Food buy some!")
  end
Ammount = 1
end

if Input=="fight" then
    Loss=math.random(0,40)*Difficulty
    gain=math.random(5,Strength/2)/Difficulty
	Health=Health-Loss
  Money=Money+gain
    print("You Lost",(Loss),"Health!")
    print("You Gained",(gain),"Dollars!")
    print("Health=",(Health))
    print("Money =",(Money))
end

if Input=="info"then
cmd.info()
end

if Input== "train" then

  Strength=Strength+5/Difficulty
  Energy=Energy-5*Difficulty
  print("Strength =",(Strength))
  print("Energy =",(Energy))
end

if Input == "ask_for_promotion" then
if Energy >= 10*Difficulty then
Energy = Energy-10*Difficulty
Chance = math.random(0,1)
if Chance == 1 then
	print("You Got Promoted!")
  Promotion = Promotion+1
end
if Chance == 0 then
	print("You Did Not Get Promoted! :(")
end
else
print(10-Energy*Difficulty,"More Energy Required!")
end
end

if Input=="buy_food" then
buy.food()
end

--car stuff
if Input=="buy_car" then
buy.car()
end

--motorcycle stuff
if Input=="buy_motorcycle" then
buy.motorcycle()
end

--clothes stuff
if Input=="buy_clothes" then
buy.clothes()
end

if Input=="clear" then
os.execute("clear")
end

if Input =="buy_beans" then
buy.beans()
end

--house stuff
if Input=="buy_house" then
buy.house()
end

if Input == "theodore_roosevelt" then
	Money=9999
  Energy=9999
  Food=9999
  print("obansa")
end

if Input=="help" then
cmd.help()
end

if Drip >= 1000*Difficulty then
if Soft_Locked == 1 then
	print("YOU GOT SOFT LOCKED!!!!!")
end
	print("You Win! You Became Drippy!")
	print("You Beat the",(Diftable[Difficulty]))
  os.exit()
end

if Money<10 and Food==0 and Energy==0 then
print("You Got Soft Locked! You Have Been Saved!")
Soft_Locked = 1
Money = Money+20/Difficulty
end

if Input == "nill" then
	print("AHHHFHFAHHFHAHFHASUFHIOAHSFIUHAIUSFH\n  ERROROROOROROOROROROOROROROOROROR\n  I AM KAPUT")
end

if Health <= 0 then
	print("You Died! You Lost All Your Health!")
  os.exit()
end
main_loop()
end
main_loop()
