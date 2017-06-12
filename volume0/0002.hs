-- Digit Number
import Data.List  -- intercalate

main = getContents >>= putStrLn . intercalate "\n" . map show . solve

solve :: String -> [Int]
solve = map (length . show . sum . map read) . map words . lines
