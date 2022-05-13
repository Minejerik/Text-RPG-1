local money
local input
local money=100
local health=150
local loss
local strength=25
local food=10
local name
local drip=0

io.write("Are you ready to start the game?(y/n)\n")
input = io.read() 
if input == y or input == yes then
end
io.write("What is your name?\n")
name = io.read() 
print("Hello",name,"!")


function main_loop()
  if health>0 then
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
end

if input== "train" then
  strength=strength+5
  print("Strength =",(strength))
end



if input=="buy food" then
food=food+1
money=money-5
print("Food Owned =",(food))
print("Money =",(money))
end





















    
  else
  print("You Lost all of your health")
  os.exit()
  end
main_loop()  
end
main_loop()