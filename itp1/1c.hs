-- Rectangle
import Control.Applicative

main = do
  [a,b] <- (map read . words) <$> getLine :: IO [Int]
  putStrLn $ show (a*b) ++ " " ++ show (2*(a+b))
