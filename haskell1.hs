-- a
classify :: Int -> String
classify 0 = "zero"
classify x
  | x > 0 = "positive"
  | otherwise = "negative"

-- b
classifyMap1 :: [Int] -> (Int -> String) -> [String]
classifyMap1 [] f = []
classifyMap1 (x : xs) f = (f x) : (classifyMap1 xs f)

-- c
classifyMap2 :: [Int] -> [String]
classifyMap2 x = map classify x

-- d
product1 :: [Int] -> Int
product1 [] = 1
product1 (x : xs) = x * (product1 xs)

-- e
-- product2 :: [Int] -> Int
-- product2 [] = 1
-- product2
