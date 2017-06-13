-- GCD and LCM
main = getContents >>= putStr . solve

solve :: String -> String
solve = unlines . map (unwords . map show . gcdAndLcm . map read . words) . lines

gcdAndLcm :: [Int] -> [Int]
gcdAndLcm [a,b] = [gcd a b,lcm a b]
