local buy = {}

buy.car = function ()
	  if Money>=250*Difficulty and Car==false then
	Car=true
  Money=Money-250*Difficulty
  Drip=Drip+250*Difficulty
  print("Car Now Owned")
        else
        if Money<250*Difficulty then
	      print(Difficulty*250-Money,"More Money Required!")
        end
        if Car==true then
	      print("You already own a car!")
        end
end
end

buy.motorcycle = function ()
	  if Money>=200*Difficulty and Motorcycle==false then
	Motorcycle=true
  Money=Money-200*Difficulty
  Drip=Drip+200*Difficulty
  print("Motorcycle Now Owned")
        else
        if Money<200*Difficulty then
	      print(Difficulty*200-Money,"More Money Required!")
        end
        if Motorcycle==true then
	      print("You already own a motorcycle!")
        end
end
end

buy.clothes = function ()
	  if Money>=50*Difficulty and Clothes==false then
	Clothes=true
  Money=Money-50*Difficulty
  Drip=Drip+50*Difficulty
  print("Clothes Now Owned")
        else
        if Money<50*Difficulty then
	      print(Difficulty *50-Money,"More Money Required!")
        end
        if Clothes==true then
	      print("You already own Clothes!")
        end
end
end

buy.house = function ()
	  if Money>=500*Difficulty and House==false then
	House=true
  Money=Money-500*Difficulty
  Drip=Drip+500*Difficulty
  print("House Now Owned")
        else
        if Money<500*Difficulty then
	      print( Difficulty*500-Money,"More Money Required!")
        end
        if House==true then
	      print("You already own a house!")
        end
end
end

buy.food = function()
Ammount = 1
io.write("Ammount?\n")
Ammount = io.read()
if Ammount == "all" then
Ammount = Money/10*Difficulty
end
if Money>=10*Ammount*Difficulty then
Food=Food+1*Ammount/Difficulty
Money=Money-10*Ammount*Difficulty
print("Food Owned =",(Food))
print("Money =",(Money))
    else
      print(Difficulty*Ammount*10-Money,"More Dollars Required!")
    end
Ammount=1
end

buy.beans = function()
if Money>=8000*Difficulty then
Food=Food+10*Difficulty
Money=Money-8000*Difficulty
print("Food Owned =",(Food))
print("Money =",(Money))
    else
      print(Difficulty*8000-Money,"More Dollars Required!")
    end
end








return buy