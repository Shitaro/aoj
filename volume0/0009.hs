main = getContents >>= putStr . solve

solve :: String -> String
solve = unlines . map (show . countPrimes . read) . lines

countPrimes :: Int -> Int
countPrimes = \n -> length $ takeWhile (<=n) primes

primes :: [Int]
primes = sieve [2..]

sieve :: [Int] -> [Int]
sieve (p:xs) = p : sieve [x| x <- xs, x `mod` p /= 0]
