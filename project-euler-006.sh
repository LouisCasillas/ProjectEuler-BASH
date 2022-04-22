# Project Euler #6 - https://projecteuler.net/problem=006
# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is:
# 3025 - 385 = 2640
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

# NOTE: There are formulas to get the required values but I'm doing it programmatically on purpose

def get_sum_square_difference(max_num=1):
    sum_of_squares = 0
    square_of_sums = 0
    
    for i in range(1, max_num + 1):
        sum_of_squares += (i ** 2)
        square_of_sums += i
    
    square_of_sums = (square_of_sums ** 2)
    
    return square_of_sums - sum_of_squares
    
print(get_sum_square_difference(100))