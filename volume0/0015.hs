-- National Budget
import Data.List.Split

main = getContents >>= putStr . solve

solve :: String -> String
solve = unlines . map ((\x -> if length x > 80 then "overflow" else x) . show . sum) . chunksOf 2 . map read . tail . lines
