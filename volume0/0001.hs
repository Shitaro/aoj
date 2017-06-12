-- List of Top 3 Hills
import Control.Monad  -- replicateM
import Data.Ord       -- sortBy (comparing Down)
import Data.List      -- intercalate

main =
  replicateM 10 getLine >>= putStr . unlines . map show . solve

solve :: [String] -> [Int]
solve = take 3 . sortBy (comparing Down) . map read

-- import Control.Monad
-- replicateM :: Monad m => Int -> m a -> m [a]
-- perform the action n times, gathering the results
