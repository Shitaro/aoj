-- Insertion Sort
main = getContents >>= solve

solve :: String -> IO ()
solve = insert [] . map read . tail . words

type Sorted = [Int]
type Disorderd = [Int]
insert :: Sorted -> Disorderd -> IO ()
insert xs [] = printList xs
insert [] (y:ys) = insert [y] ys
insert xs s@(y:ys) = do
  printList (xs ++ s)
  insert (asc y xs) ys

-- sort in ascending order
asc :: Int -> [Int] -> [Int]
asc x [] = [x]
asc x s@(y:ys)
  | x > y = [y] ++ asc x ys
  | otherwise = [x] ++ s

printList :: [Int] -> IO ()
printList = putStrLn . unwords . map show
