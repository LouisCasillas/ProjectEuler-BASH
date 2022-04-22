# Project Euler #7 - https://projecteuler.net/problem=007
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

import math

def all_primes():
    yield 2
    
    list_of_primes = [2]
    
    n = 3
    while True:
        n_sqrt = int(math.sqrt(n))
        
        for p in list_of_primes:
            if p <= n_sqrt:
                if (n % p) == 0:
                    break
            else:
                yield n
                list_of_primes.append(n)
                break

        n += 2

num_prime_we_want = 10001
num_of_primes_found = 0

for prime in all_primes():
    
    num_of_primes_found += 1
    
    if num_of_primes_found == num_prime_we_want:
        print(prime)
        break