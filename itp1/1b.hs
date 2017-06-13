-- X Cubic
main = readLn >>= print . cubic

cubic :: Int -> Int
cubic = (^3)
