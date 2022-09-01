local bigcmd = {}


bigcmd.help = function ()
	print("info - Gets your stats")
print("help - brings this up")
print("work - allows you to work")
print("buy_food - buy some food")
print("eat - eat the food")
print("fight - fight someone")
print("train - train to earn more money per fight")
print("buy_car - you buy a car ")
print("buy_motorcycle - you buy a motorcycle ")
print("buy_clothes - you buy some clothes ")
print("buy_house -  you buy a house ")
print("ask_for_promotion - ask for a promotion to earn more money")
print("clear - clears console")
print("buy motorcycle/car/clothes/a house lets you get drippy enough to win")
print("Version =",(Version))
end 

bigcmd.info = function ()
	print("Health=",(Health))
print("Money =",(Money))
print("Strength =",(Strength))
print("Food Left =",(Food))
print("Your Drippines =",(Drip))
print("Energy =", (Energy))
print("Job Level =",(Promotion))
end






return bigcmd