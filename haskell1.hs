classify :: Int -> String
classify 0 = "zero"
classify x
  | x > 0 = "positive"
  | otherwise = "negative"


classifyMap1 :: [Int] -> (Int -> String) -> [String]
classifyMap1 [] f = []
classifyMap1 (x : xs) f = (f x) : (classifyMap1 xs f)


classifyMap2 :: [Int] -> [String]
classifyMap2 x = map classify x
