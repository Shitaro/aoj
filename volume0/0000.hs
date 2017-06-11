-- QQ
main = do
  putStr $ unlines [show a ++ "x" ++ show b ++ "=" ++ show (a*b)| a <- [1..9], b <- [1..9]]
