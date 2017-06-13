-- Simultaneous Equation
import Text.Printf -- printf

main = getContents >>= putStr . solve

solve :: String -> String
solve = unlines . map (unwords . map (floatFormat . roundZero) . simul . map read) . map words . lines

roundZero :: Float -> Float
roundZero x | x == 0.0 = 0
            | otherwise = x

floatFormat :: Float -> String
floatFormat = printf "%.3f"

simul :: Fractional a => [a] -> [a]
simul [a,b,c,d,e,f] = [x,y]
  where
    det = a * e - d * b
    x = (c * e - b * f) / det
    y = (a * f - c * d) / det

-- printf :: PrintfType r => String -> r
-- printf "format"
