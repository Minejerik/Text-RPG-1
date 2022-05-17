--variable stuff
os.execute("clear")
local cmd = require('more stuff/bigcmd')
local buy = require('more stuff/buy')
local input
Money=10
Health=25
local loss
Strength=15
Food=1
Name = 0
Drip=0
Car=false
Motorcycle=false
Clothes=false
House=false
Version = "beta 1.8"
Energy = 10
Chance = 1
local gain
Promotion = 1
Soft_Locked = 0
Ammount = 1


io.write("Time To Play!\n")
io.write("Text RPG 2!\n")
io.write("The Quest To Become Drippy!\n")
io.write("What is your name?\n")
Name = io.read() 
print("Hello",(Name),"!")


local function main_loop()
io.write("\nWhat would you like to do?\n\n")
input = io.read()

if input == "work" then
os.execute("clear")
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
os.execute("clear")
Ammount = 1
io.write("Ammount?\n")
Ammount = io.read()
if Ammount == "all" then
Ammount = Food
end
  if Ammount*Food>=0 then
  Health=Health+5*Ammount
  Food=Food-1*Ammount
  Energy=Energy+5*Ammount
  print("Health =",(Health))
  print("Food Left =",(Food))  
  print("Energy =", (Energy))
  else
    print("You are out of Food buy some!")
  end
Ammount = 1
end

if input=="fight" then
os.execute("clear")
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
		os.execute("clear")
cmd.info()
end

if input== "train" then
		os.execute("clear")
  Strength=Strength+5
  Energy=Energy-5
  print("Strength =",(Strength))
  print("Energy =",(Energy))
end

if input == "ask_for_promotion" then
		os.execute("clear")
if Energy >= 10 then
Energy = Energy-10
Chance = math.random(0,1)
if Chance == 1 then
	print("You Got Promoted!")
  Promotion = Promotion+1
end
if Chance == 0 then
	print("You Did Not Get Promoted! :(")
end
else
print(10-Energy,"More Energy Required!")
end
end

if input=="buy_food" then
		os.execute("clear")
buy.food()
end

--car stuff
if input=="buy_car" then
		os.execute("clear")
buy.car()
end

--motorcycle stuff
if input=="buy_motorcycle" then
		os.execute("clear")
buy.motorcycle()
end

--clothes stuff
if input=="buy_clothes" then
		os.execute("clear")
buy.clothes()
end

--house stuff
if input=="buy_house" then
		os.execute("clear")
buy.house()
end

if input == "theodore_roosevelt" then
		os.execute("clear")
	Money=9999
  Energy=9999
  Food=9999
    print("obansa")
end


if input=="help" then
		os.execute("clear")
cmd.help()
end

if Drip >= 1000 then
		os.execute("clear")
	print("You Win! You Became Drippy!")
  os.exit()
end

	
if Money<10 and Food==0 and Energy==0 then
		os.execute("clear")
print("You Got Soft Locked! You Have Been Saved!")
Soft_Locked = 1
Money = Money+20
end

if input == "nill" then
	print("AHHHFHFAHHFHAHFHASUFHIOAHSFIUHAIUSFH \n ERROROROOROROOROROROOROROROOROROR \n I AM KAPUT")
end

	

if Health <= 0 then
		os.execute("clear")
	print("You Died! You Lost All Your Health!")
  os.exit()
end
main_loop()
end
main_loop()
os.execute("clear")