-- Digit Number
main = getContents >>= putStr . solve

solve :: String -> String
solve = unlines . map (show . length . show . sum . map read) . map words . lines
