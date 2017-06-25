-- Integral

main = getContents >>= putStr . solve

solve :: String -> String
solve = unlines . map (show . integral . read) . lines

integral :: Int -> Int
integral d = sum . map (d *) . map (\x -> x*x) $ xs
  where
    xs = [x' * d | x' <- [1..(600 `div` d) - 1]]
