module Fibonacci where
    fib:: Int -> Int
    fib n | n == 0 = 0
           | n == 1 = 1
           | otherwise = fib (n-1) + fib (n-2)

    fibs :: [Int]
    fibs = map fib [0..]

    smallFibs :: [Int]
    smallFibs = takeWhile (<100) fibs

    -- Creating lazy streams
    fibsz :: Int -> Int -> [Int]
    fibsz n1 n2 = let nextFib = n1 + n2
        in n1: fibsz n2 nextFib

    fibsw :: [Int]
    fibsw = 0:1: helper fibsw (tail fibsw)
            where
                helper (a:as) (b:bs) = a + b : helper as bs
    

    