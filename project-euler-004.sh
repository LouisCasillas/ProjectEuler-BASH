# Project Euler #4 - https://projecteuler.net/problem=004
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 x 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def is_palindrome(number):
    original_s = str(number)
    reverse_s = original_s[::-1]
    
    if original_s == reverse_s:
        return True

    return False
    
biggest_num = 1000

# Brute force method    
max_palindrome = 0

k1 = 0
for i in range(1,biggest_num):
    for j in range(1,biggest_num):
        k1 += 1
        product = i * j
        if is_palindrome(product):
            if product > max_palindrome:
                max_palindrome = product

print(max_palindrome)

print( "Brute force - Number of palindromes checked = %s" % k1)

# More optimized method

max_palindrome = 0

unique_multiples = set([ i * j for i in range(1,biggest_num)
                                for j in range(1,biggest_num) ])

k2 = 0
for product in unique_multiples:
    k2 += 1
    if is_palindrome(product):
        if product > max_palindrome:
            max_palindrome = product

print(max_palindrome)

print( "Optimized - Number of palindromes checked = %s, improvement of %s" % (k2, (k1 / k2)))
