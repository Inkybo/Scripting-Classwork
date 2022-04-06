def is_prime(n): # is_prime is a function used to detect if a number is prime
   for i in range(2, n):
      if n % i == 0: # detects if number is prime or not
         return False
   return True # if number is prime function returns 'True'

def generate_twins(start, end):
    count = 0 #defines the counter variable inside the 'generate_twins' function
    for i in range(start, end):
        j = i + 2 #sets the variable j to i+2 to allow for testing for twin primes
        if(is_prime(i) and is_prime(j)): #detects if both nubers are prime and if so increments a counter
            count += 1 # counter for pime number pairs
    print("Result:", count)

input = int(input("Enter a number: ")) # user inputs the number to which twin primes will be calculated

generate_twins(2, input) # inputs the user number from the input variable
