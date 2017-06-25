-- Switching Railroad Cars
import Control.Monad.State

type Stack a = StateT [a] IO a

main = getContents >>= solve

solve :: String -> IO ()
solve = (\xs -> evalStateT (switchRailroad xs) []) . map read . lines

-- reference:
-- Simple StateT use
-- https://wiki.haskell.org/Simple_StateT_use
pop :: Stack Int
pop = do
  (x:xs) <- get
  put xs
  return x

push :: Int -> Stack Int
push x = do
  xs <- get
  put (x:xs)
  return x

switchRailroad :: [Int] -> StateT [Int] IO ()
switchRailroad [] = return ()
switchRailroad (x:xs)
  | x == 0 = do n <- pop
                liftIO $ print n
                switchRailroad xs
  | otherwise = do push x
                   switchRailroad xs
