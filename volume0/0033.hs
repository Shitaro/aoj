-- Ball
import Control.Monad -- replicateM

main = readLn
  >>= (\ n -> replicateM n getLine)
  >>= putStr . solve

solve :: [String] -> String
solve = unlines . map(tellYesNo . dfs 0 0 . map read . words)

dfs :: Int -> Int -> [Int] -> Bool
dfs _ _ [] = True
dfs l r (x:xs)
  | l < x && r < x = dfs x r xs || dfs l x xs
  | l < x = dfs x r xs
  | r < x = dfs l x xs
  | otherwise = False

tellYesNo :: Bool -> String
tellYesNo b
  | b == True = "YES"
  | otherwise = "NO"

-- replicateM :: Applicative m => Int -> m a -> m [a]
-- replicateM n act performs the action n times, gathering the results
