module Conditionals where

    printSmallNumber :: (Ord a, Num a, Show a) => a -> IO ()
    printSmallNumber num = if num < 10 then print num else print "The number is to big"

    printSmallNumber' :: (Ord a, Num a, Show a) => a -> IO ()
    printSmallNumber' num = let msg = if num < 10 then show num else "the number is too big" in print msg

    guardSize :: (Ord a, Num a) => a -> String
    guardSize num 
        | num < 3 = "that's a small number"
        | num < 10 = "that's a medium number"
        | num < 100 = "that's a pretty big number"
        | otherwise = "that's an unfathomably big number"

    guardTwo :: (Ord a, Num a) => a -> String
    guardTwo num
        | num > 0 = let size = "positive" in exclaim size
        | num < 3 = exclaim "small"
        | num < 100 = exclaim "medium"
        | otherwise = exclaim "large"
        where
            exclaim msg = "that's a " <> msg <> " number!"