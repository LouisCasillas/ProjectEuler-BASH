# Project Euler #3 - https://projecteuler.net/problem=003
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

import math

def get_prime_factors(num):
    # the max possible factor of a number is the square root of itself
    max_num = int(math.sqrt(num))
    
    # even a prime number has a factor of 1
    factors = [ 1 ]
    
    # except for 2 all other prime numbers are odd so manually check here for this edge-case
    test_n = 2
    if (num % test_n) == 0:
        factors.append(test_n)
        
        while (num % test_n) == 0:
            num = num / test_n

    test_n = 3
    while num != 1:
        if (num % test_n) == 0:
            factors.append(test_n)
            
            while (num % test_n) == 0:
                num = num / test_n

        test_n += 2
    
    return factors
    
print(max(get_prime_factors(600851475143)))