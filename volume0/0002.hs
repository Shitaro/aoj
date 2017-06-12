-- Digit Number
main = getContents >>= putStr . unlines . map show . solve

solve :: String -> [Int]
solve = map (length . show . sum . map read) . map words . lines
