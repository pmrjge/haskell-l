module Main where
import Data.Bits (Bits(xor))

main :: IO ()
main = putStrLn "Hello, Haskell!"

e :: Double
e = exp 1

square :: Double -> Double
square x = x**2

f = \x -> x**3
h = \x -> 3*x**2 - 4 * x + 5
g = \x -> cos(2 * x)
v = \t -> 10 * t + 20
z = \x -> exp (-x)


cosSq :: Double -> Double
cosSq x = square (cos x)

cosSq' :: Double -> Double
cosSq' x = square $ cos x

cosSq'' :: Double -> Double
cosSq'' x = (square . cos) x

cosSq''' :: Double -> Double
cosSq''' = square . cos


