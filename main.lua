--variable stuff
os.execute("clear")
local cmd = require('more stuff/bigcmd')
local buy = require('more stuff/buy')
local sus = require('more stuff/cmd')
local input
Money=85
Health=50
local loss
Strength=25
Food=2
Name = 0
Drip=0
Car=false
Motorcycle=false
Clothes=false
House=false
Version = "beta 1.7"
Energy = 10
local chance
local gain
Promotion = 1
Soft_Locked = 0


io.write("Time to play!\n")
io.write("What is your name?\n")
Name = io.read() 
print("Hello",(Name),"!")

sus.money()

local function main_loop()
io.write("What would you like to do?\n")
input = io.read()

if input == "work" then
  if Energy > 0 then
	Money=Money+5*Promotion
  Energy=Energy-1
  print("Money =", (Money))
  print("Energy Left =", (Energy))
    else
      print("Out Of Energy! Eat Some Food!")
    end
end

if input == "eat" then
  if Food>0 then
  Health=Health+5
  Food=Food-1
  Energy=Energy+5
  print("Health =",(Health))
  print("Food Left =",(Food))  
  print("Energy =", (Energy))
  else
    print("You are out of Food buy some!")
  end
end

if input=="fight" then
    loss=math.random(0,40)
    gain=math.random(5,Strength/2)
	Health=Health-loss
  Money=Money+gain
    print("You Lost",(loss),"Health!")
    print("You Gained",(gain),"Dollars!")
    print("Health=",(Health))
    print("Money =",(Money))
end

if input=="info"then
cmd.info()
end

if input== "train" then
  Strength=Strength+5
  Energy=Energy-5
  print("Strength =",(Strength))
  print("Energy =",(Energy))
end

if input == "ask_for_promotion" then
if Energy >= 10 then
Energy = Energy-10
chance = math.random(0,1)
if chance == 1 then
	print("You Got Promoted!")
  Promotion = Promotion+1
end
if chance == 0 then
	print("You Did Not Get Promoted! :(")
end
else
print("More Energy Required!")
end
end


if input=="buy_food" then
buy.food()
end

--car stuff
if input=="buy_car" then
buy.car()
end

--motorcycle stuff
if input=="buy_motorcycle" then
buy.motorcycle()
end

--clothes stuff
if input=="buy_clothes" then
buy.clothes()
end

--house stuff
if input=="buy_house" then
buy.house()
end

if input == "theodore_roosevelt" then
	Money=9999
  Energy=9999
  Food=9999
    print("obansa")
end

if input=="help" then
cmd.help()
end

if Drip >= 1000 then
	print("You Win! You Became Drippy!")
  os.exit()
end
if Money<10 and Food==0 and Energy==0 then
print("You Got Soft Locked! You Have Been Saved!")
Soft_Locked = 1
Money = Money+20
end


if Health <= 0 then
	print("You Died! You Lost All Your Health!")
  os.exit()
end
main_loop()
end
main_loop()
