-- Sum of 4 Integers
main = getContents >>= putStr . solve

solve :: String -> String
solve = unlines . map (show . findSum4 . read) . lines

findSum4 :: Int -> Int
findSum4 = \n -> length [[a,b,c,d]| a <- [0..9], b <- [0..9], c <- [0..9], d <- [0..9], a + b + c + d == n]
