-- Rectangle
import Control.Applicative

main = do
  [a,b] <- (map read . words) <$> getLine :: IO [Int]
  putStrLn . unwords $ map show [a*b, 2*(a+b)]
