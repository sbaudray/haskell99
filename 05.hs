-- (*) Reverse a list.

-- Example in Haskell:

-- Prelude> myReverse "A man, a plan, a canal, panama!"
-- "!amanap ,lanac a ,nalp a ,nam A"
-- Prelude> myReverse [1,2,3,4]
-- [4,3,2,1]

myReverse:: [a] -> [a]
myReverse [] = error "Empty list not allowed"
myReverse [x] = [x]
myReverse (x:xs) = myReverse xs ++ [x]

main::IO()
main = do
  putStrLn $ show $ myReverse [1,2,3,4]
