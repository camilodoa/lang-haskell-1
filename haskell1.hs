-- a
-- classifies a number into a string (positive, negative, zero)
classify :: Int -> String
classify 0 = "zero"
classify x
  | x > 0 = "positive"
  | otherwise = "negative"

-- b
-- writing our own map
classifyMap1 :: [Int] -> (Int -> String) -> [String]
classifyMap1 [] f = []
classifyMap1 (x : xs) f = (f x) : (classifyMap1 xs f)

-- c
-- using map
classifyMap2 :: [Int] -> [String]
classifyMap2 x = map classify x

-- d
-- backward recursion (recursive call is inside of another function call)
product1 :: [Int] -> Int
product1 [] = 1
product1 (x : xs) = x * (product1 xs)

-- e
-- forward recursion (returning the recursive call itself)
-- usage product2 [] 1
product2 :: [Int] -> Int -> Int
product2 [] res = res -- if there are no elements left, return res
product2 (x : xs) res = product2 (xs) (x * res) -- perform multiplication to the parameter

-- f
product3 :: [Int] -> Int
product3 list = foldr (*) 1 list
