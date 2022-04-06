for i in range(0,101):
	if(i % 3 == 0):
		print("Fizz")
	if(i % 2 == 0):
		print("Buzz")
	if(i % 3 == 0 and i % 2 == 0):
		print("Fizz Buzz")
	else:
		print(i)
