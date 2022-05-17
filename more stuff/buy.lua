local buy = {}

buy.car = function ()
	  if Money>=250 and Car==false then
	Car=true
  Money=Money-250
  Drip=Drip+250
  print("Car Now Owned")
        else
        if Money<250 then
	      print( 250-Money,"More Money Required!")
        end
        if Car==true then
	      print("You already own a car!")
        end
end
end

buy.motorcycle = function ()
	  if Money>=200 and Motorcycle==false then
	Motorcycle=true
  Money=Money-200
  Drip=Drip+200
  print("Motorcycle Now Owned")
        else
        if Money<200 then
	      print( 200-Money,"More Money Required!")
        end
        if Motorcycle==true then
	      print("You already own a motorcycle!")
        end
end
end

buy.clothes = function ()
	  if Money>=50 and Clothes==false then
	Clothes=true
  Money=Money-50
  Drip=Drip+50
  print("Clothes Now Owned")
        else
        if Money<50 then
	      print( 50-Money,"More Money Required!")
        end
        if Clothes==true then
	      print("You already own Clothes!")
        end
end
end

buy.house = function ()
	  if Money>=500 and House==false then
	House=true
  Money=Money-500
  Drip=Drip+500
  print("House Now Owned")
        else
        if Money<500 then
	      print( 500-Money,"More Money Required!")
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
Ammount = Money/10
end
	
if Money>=10*Ammount then
Food=Food+1*Ammount
Money=Money-10*Ammount
print("Food Owned =",(Food))
print("Money =",(Money))
    else
      print(Ammount*10-Money,"More Dollars Required!")
    end
Ammount=1
end






return buy