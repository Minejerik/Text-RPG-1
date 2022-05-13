local money
local input
local money=100
local health=150
local loss
local strength=25
local food=10
local name
local drip=1
local car=false

io.write("Are you ready to start the game?(y/n)\n")
input = io.read() 
if input == y or input == yes then
end
io.write("What is your name?\n")
name = io.read() 
print("Hello",name,"!")


function main_loop()
  if drip<=1000 then
  if health>=0 then
io.write("What would you like to do?\n")
input = io.read()

if input == "work" then
	money=money+25
  print("Money =", (money))
end
if input == "eat" then
  if food>0 then
  health=health+5
  food=food-1
  print("Health =",(health))
  print("Food Left =",(food))  
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
end

if input== "train" then
  strength=strength+5
  print("Strength =",(strength))
end



if input=="buy_food" then
food=food+1
money=money-5
print("Food Owned =",(food))
print("Money =",(money))
end


if input=="buy_car" then
  if money>250 and car==false then
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










  else
  print("You Lost all of your health")
  os.exit()
  end
  else
  print("You got drippy enough! You Win!")
  os.exit()
  end
main_loop() 
end
main_loop()