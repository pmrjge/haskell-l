module Main where

    import Prelude hiding(fib)
    import Fibonacci(fib)

    main :: IO ()
    main = do
        let y = [fib n | n <-[1..10]]
        print y
    


