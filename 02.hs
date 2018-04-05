-- (*) Find the last but one element of a list.

-- (Note that the Lisp transcription of this problem is incorrect.)

-- Example in Haskell:

-- Prelude> myButLast [1,2,3,4]
-- 3
-- Prelude> myButLast ['a'..'z']
-- 'y'

myButLast:: [a] -> a
myButLast [] = error "Empty list not allowed"
myButLast [_] = error "Not enough elements"
myButLast [y, _] = y
myButLast(_:xs) = myButLast(xs)

main::IO()
main = do
  putStrLn $ show $ myButLast [1,2,3,4]
