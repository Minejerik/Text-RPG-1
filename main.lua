--variable stuff
local input
local money=100
local health=150
local loss
local strength=25
local food=2
local name
local drip=0
local car=false
local motorcycle=false
local clothes=false
local house=false
local version = "beta 1.4"
local energy = 10
local chance
local promotion = 1
io.write("Time to play!\n")
io.write("What is your name?\n")
name = io.read() 
print("Hello",(name),"!")

local function main_loop()
io.write("What would you like to do?\n")
input = io.read()

if input == "work" then
  if energy > 0 then
	money=money+5*promotion
  energy=energy-1
  print("Money =", (money))
  print("Energy Left =", (energy))
    else
      print("Out Of Energy! Eat Some Food!")
    end
end
  
if input == "eat" then
  if food>0 then
  health=health+5
  food=food-1
  energy=energy+5
  print("Health =",(health))
  print("Food Left =",(food))  
  print("Energy =", (energy))
  else
    print("You are out of food buy some!")
  end
end
  
if input=="fight" then
    loss=math.random(0,30)
    gain=math.random(1,strength/2)
	health=health-loss
  money=money+gain
    print("You Lost",(loss),"Health!")
    print("You Gained",(gain),"Dollars!")
    print("Health=",(health))
    print("Money =",(money))
end
  
if input=="info"then
print("Health=",(health))
print("Money =",(money))
print("Strength =",(strength))
print("Food Left =",(food))
print("Your Drippines =",(drip))
print("Energy =", (energy))
print("Job Level =",(promotion))
end

if input== "train" then
  strength=strength+5
  energy=energy-5
  print("Strength =",(strength))
  print("Energy =",(energy))
end

if input == "ask_for_promotion" then
if energy >= 10 then
energy = energy-10
chance = math.random(0,1)
if chance == 1 then
	print("You Got Promoted!")
  promotion = promotion+1
end
if chance == 0 then
	print("You Did Not Get Promoted! :(")
end
else
print("More Energy Required!")
end
end
 

if input=="buy_food" then
if money>=10 then
food=food+1
money=money-10
print("Food Owned =",(food))
print("Money =",(money))
    else
      print("Not Enough Money!")
    end
end

--car stuff
if input=="buy_car" then
  if money>=250 and car==false then
	car=true
  money=money-250
  drip=drip+250
  print("Car Now Owned")
        else
        if money<250 then
	      print( 250-money,"More Money Required!")
        end
        if car==true then
	      print("You already own a car!")
        end
end
end
  
--motorcycle stuff
if input=="buy_motorcycle" then
  if money>=200 and motorcycle==false then
	motorcycle=true
  money=money-200
  drip=drip+200
  print("Motorcycle Now Owned")
        else
        if money<200 then
	      print( 200-money,"More Money Required!")
        end
        if motorcycle==true then
	      print("You already own a motorcycle!")
        end
end
end
  
--clothes stuff
if input=="buy_clothes" then
  if money>=50 and clothes==false then
	clothes=true
  money=money-50
  drip=drip+50
  print("Clothes Now Owned")
        else
        if money<50 then
	      print( 50-money,"More Money Required!")
        end
        if clothes==true then
	      print("You already own Clothes!")
        end
end
end
  
--house stuff
if input=="buy_house" then
  if money>=500 and house==false then
	house=true
  money=money-500
  drip=drip+500
  print("House Now Owned")
        else
        if money<500 then
	      print( 500-money,"More Money Required!")
        end
        if house==true then
	      print("You already own a house!")
        end
end
end

if input=="help" then
print("info - Gets your stats")
print("help - brings this up")
print("work - allows you to work")
print("buy_food - buy some food")
print("eat - eat the food")
print("fight - fight someone")
print("train - train to earn more money per fight")
print("buy_car - you buy a car $250")
print("buy_motorcycle - you buy a motorcycle $200")
print("buy_clothes - you buy some clothes $50")
print("buy_house -  you buy a house $500")
print("ask_for_promotion - ask for a promotion to earn more money")
print("buy motorcycle/car/clothes/a house lets you get drippy enough to win")
print("Version =",(version))
end

if drip >= 1000 then
	print("You Win! You Became Drippy!")
  os.exit()
end

if health <= 0 then
	print("You Died! You Lost All Your Health!")
  os.exit()
end
main_loop()
end
main_loop()