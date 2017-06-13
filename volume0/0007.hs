-- Debt Hell
main = readLn >>= putStrLn . solve

solve :: Int -> String
solve = show . (!!) (iterate debt 100000)

debt :: Integer -> Integer
debt = \x -> 1000 * ceiling ((fromInteger x * 1.05) / 1000)
