-- (*) Find the last element of a list.

-- (Note that the Lisp transcription of this problem is incorrect.)

-- Example in Haskell:

-- Prelude> myLast [1,2,3,4]
-- 4
-- Prelude> myLast ['x','y','z']
-- 'z'

myLast:: [a] -> a
myLast [] = error "Empty list not allowed"
myLast [x] = x
myLast (_:xs) = myLast xs

main::IO()
main = do
    putStrLn $ show $ myLast [1,2,3,4]
