# Project Euler #5 - https://projecteuler.net/problem=005
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

import math

def get_primes(max_num=1):
    primes = list( range(0,max_num + 1) )
    
    i = 2
    
    while i <= int(math.sqrt(max_num)):
        if primes[i] != 0:
            s = i + i
            while s <= max_num:
                primes[s] = 0
                s += i
        if i == 2:
            i += 1
        else:
            i += 2

    return [ i for i in primes if i != 0 and i != 1 ]

def is_divisible_by_range(num=1, divisible_range=[]):
    
    for i in divisible_range:
        if (num % i) != 0:
            return False
    
    return True

def add_one_to_array(num_array=[], max_num=1, current_i = 0):

    if current_i == len(num_array):
        num_array = [1] * len(num_array)
    else:
        if num_array[current_i] < max_num:
            num_array[current_i] += 1
        else:
            num_array[current_i] = 1
            current_i += 1
            add_one_to_array(num_array,max_num,current_i)

def get_count_array(num_array=[], max_num=1):
    
    while True:
        yield num_array
        
        add_one_to_array(num_array, max_num)
        
        if num_array == [1] * len(num_array):
            max_num += 1

def get_prime_pow_multiply(prime_list=[], pow_array=[]):
    total_multiply = 1
    for i in range(0,len(prime_list)):
        total_multiply *= (prime_list[i] ** pow_array[i])

    return total_multiply
    
max_num = 20

primes = get_primes(max_num)

pow_array = get_count_array([1] * len(primes), 2)

while True:
    total_multiply = get_prime_pow_multiply(primes, next(pow_array))
    if is_divisible_by_range(total_multiply, range(1,max_num + 1)):
        print(total_multiply)
        break
