-- Circumscribed Circle of a Triangle
import Text.Printf -- printf

main = getContents >>= putStr . solve

-- Discard the first line with "tail" because it is unnecessary
solve :: String -> String
solve = unlines . map (unwords . map floatFormat . centerAndRadius . map read . words) . tail . lines

floatFormat :: Float -> String
floatFormat = printf "%.3f"

-- Solve for (px,py)
-- (px-x1)^2+(py-y1)^2=(px-x2)^2+(py-y2)^2=(px-x3)^2+(py-y3)^2
centerAndRadius :: [Float] -> [Float]
centerAndRadius [x1,y1,x2,y2,x3,y3] = [px,py] ++ [r]
  where
    r = sqrt $ (px-x1)^2 + (py-y1)^2
    [px,py] = simul [2*(x2-x1),2*(y2-y1),x2^2-x1^2+y2^2-y1^2,2*(x3-x2),2*(y3-y2),x3^2-x2^2+y3^2-y2^2]

-- See 0004 Simultaneous Equation
simul :: Fractional a => [a] -> [a]
simul [a,b,c,d,e,f] = [x,y]
  where
    det = a * e - d * b
    x = (c * e - b * f) / det
    y = (a * f - c * d) / det
