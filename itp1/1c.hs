-- Rectangle
main = getLine >>= putStrLn . solve

solve :: String -> String
solve = unwords . map show . areaAndCircumLen . map read . words

areaAndCircumLen :: [Int] -> [Int]
areaAndCircumLen = \[a,b] -> [a*b, 2*(a+b)]
