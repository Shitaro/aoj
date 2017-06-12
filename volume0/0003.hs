-- Is it a Right Triangle?
import Data.List -- sortBy
import Data.Ord  -- comparing Down
import Control.Applicative -- <$>, <*>

main = (solve <$> getLine) <*> getContents >>= putStr

solve :: String -> String -> String
solve _ = unlines . map (isRight . sortBy (comparing Down) . map read) . map words . lines

isRight :: [Int] -> String
isRight [a,b,c] | a^2 == b^2 + c^2 = "YES"
                | otherwise        = "NO"
