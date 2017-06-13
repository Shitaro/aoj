-- List of Top 3 Hills
import Control.Monad  -- replicateM
import Data.List      -- sortBy
import Data.Ord       -- comparing Down

main = replicateM 10 getLine >>= putStr . solve

solve :: [String] -> String
solve = unlines . map show . takeTop3 . map read

takeTop3 :: [Int] -> [Int]
takeTop3 = take 3 . sortBy (comparing Down)
-- import Control.Monad
-- replicateM :: Monad m => Int -> m a -> m [a]
-- perform the action n times, gathering the results
