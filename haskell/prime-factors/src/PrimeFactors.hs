module PrimeFactors (primeFactors) where

primeFactors :: Integer -> [Integer]
-- primeFactors 1 = []
-- primeFactors x
--     | (x `mod` 2 == 0) && (x > 2) = [2] ++ primeFactors (x `div` 2)
--     | otherwise = [x]
primeFactors x  = primeFactors' x 2
    where primeFactors' x c
            | x < c = []
            | x `mod` c == 0 = [c] ++ primeFactors' (x `div` c) c
            | otherwise = primeFactors' x (c + 1)
