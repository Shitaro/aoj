-- Maximum Profit
main = getContents >>= putStrLn . solve

solve :: String -> String
solve = show .  maxProf 0 0 . map read . tail . lines

maxProf :: Int -> Int -> [Int] -> Int
maxProf maxx _ [] = maxx
maxProf 0 0 (x:xs) = maxProf (-1000000000) x xs
maxProf maxx minx (x:xs) = maxProf maxx' minx' xs
  where
    maxx' = max maxx (x - minx)
    minx' = min minx x
