-- X Cubic
main = readLn >>= print . cubic

cubic :: Int -> Int
cubic n = n^3
