-- Small, Large, or Equal
main = getLine >>= putStrLn . solve

solve :: String -> String
solve = comp . map read . words

comp :: [Int] -> String
comp [a,b] | a>b = "a > b"
           | a<b = "a < b"
           | otherwise = "a == b"
