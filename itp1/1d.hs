-- Watch
import Data.List

main = readLn >>= putStrLn . intercalate ":" . map show . solve

solve :: Int -> [Int]
solve n = [h,m,s]
  where
    h = div n 3600
    m = mod (div n 60) 60
    s = mod n 60

-- import Data.List
-- intercalate :: [a] -> [[a]] -> [a]
-- intercalate xs xss = concat $ intersperse xs xss
