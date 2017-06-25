-- Drawing Lots
import Control.Monad
import Data.List.Split

main :: IO ()
main = do
  w <- readLn
  n <- readLn
  ss <- replicateM n getLine
  putStr $ solve ss w

solve :: [String] -> Int -> String
solve ss = unlines . map show . swapM (map toTuple ss) . amida

swapM :: [(Int, Int)] -> [Int] -> [Int]
swapM ls xs = foldl swap xs ls

swap :: [Int] -> (Int, Int) -> [Int]
swap xs (i,j) = [swap' a b | (a,b) <- zip [1..length xs] xs]
  where
    swap' a b | a == i = xs !! (j - 1)
              | a == j = xs !! (i - 1)
              | otherwise = b

amida :: Int -> [Int]
amida = \w -> [1..w]

toTuple :: String -> (Int, Int)
toTuple xs = (a,b)
  where
    [a,b] = map read . splitOn "," $ xs
