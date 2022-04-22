# Project Euler #9 - https://projecteuler.net/problem=009
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a^2 + b^2 = c^2

# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

import math

def get_pythagorean_triple():
    a = 1
    b = 2
    
    while True:
        
        c = int(math.sqrt( (a ** 2) + (b ** 2) ))
        
        if ((a ** 2) + (b ** 2)) == (c ** 2):
            yield [a, b, c]
        a += 1
        
        if a == b:
            a = 1
            b += 1

triple_sum_to_find = 1000

for triple in get_pythagorean_triple():
    a, b, c = triple
    
    if (a + b + c) == triple_sum_to_find:
        print(a * b * c)
        break