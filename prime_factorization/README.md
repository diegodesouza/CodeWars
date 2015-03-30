####Description

The prime factorization of a positive integer is a list of the integer's prime factors, together with their multiplicities; the process of determining these factors is called integer factorization. The fundamental theorem of arithmetic says that every positive integer has a single unique prime factorization.

The prime factorization of 24, for instance, is (2^3) * (3^1).

Without using the prime library, write a class called PrimeFactorizer that takes in an integer greater than 1 and has a method called factor which returns a hash where the keys are prime numbers and the values are the multiplicities.
```
PrimeFactorizer.new(24).factor #should return { 2 => 3, 3 => 1 }
```
