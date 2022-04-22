# Project Euler #10 - https://projecteuler.net/problem=010
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

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

prime_sum = 0
max_prime = 2000000

primes = all_primes()

while True:
    current_prime = next(primes)
    
    if current_prime < max_prime:
        prime_sum += current_prime
    else:
        break

print(prime_sum)