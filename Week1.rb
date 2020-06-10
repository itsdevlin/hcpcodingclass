# Week 1 
# https://repl.it/

# Homework
# 1. Write a function called half_number that takes a number divides it by 2 and prints out the result (i.e. half_number(5) should print "Half of 5 is 2.5")

def half_number(number)
  puts "Half of #{number} is #{number / 2.0}"
end
half_number(5)

# 2. Write a function called square_number that takes a number and squares it and prints the output (i.e. square_number(3) should print "the result of squaring 3 is 9.")

def square_number(number)
  puts "The result of squaring #{number} is #{number ** 2} "
end
square_number(3) 

# 3. Write a function called percect_of that takes in 2 numbers and prints what percentage it is. (i.e. percect_of(2,4) would print "2 is 50% of 4")

def percent_of(x,y)
	puts "#{x} is #{(x / y) * 100}% of #{y}"
end
percent_of(2.0,4)

// alt

def percent_of(x,y)
	puts "#{x} is #{((x / y) * 100).to_i}% of #{y}"
end
percent_of(2.0,4)

# 4. Write a function called find_modulus that takes in 2 numbers. (i.e. find_modulus(4, 10) should print 2 is the modulus of 4 and 10.). Hint look into % symbol :)  

def find_modulus(x,y)
	puts "#{x % y} is the modulus of #{x} and #{y}"
end
find_modulus(4,10)



# Answers
# TL;DR: abstract calculations and use clearly-named variables

def half_number(number)
  half_number = number.to_f / 2
  puts "Half of #{number} is #{half_number}"
end
​
def square_number(number)
  squared_number = number.to_f / 2
  puts "the result of squaring #{number} is #{squared_number}."
end
​
def percent_of(num1, num2)
  percentage = (num1.to_f / num2) * 100
  puts "#{num1} is #{percentage}% of #{num2}"
end
​
def find_modulus(num1, num2)
  modulus = num2 % num1
  puts "#{modulus} is the modulus of #{num1} and #{num2}"
end