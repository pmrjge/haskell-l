module Evaluation where
    radsToDegrees::Float->Int
    radsToDegrees radians = let degrees = cycle [0..359]
                                converted = truncate $ (radians * 360) / (2 * pi)
                            in degrees !! converted
    

    epicCycle :: [a] -> [a]
    epicCycle ls = cycleHelper ls
                    where
                        cycleHelper [] = epicCycle ls
                        cycleHelper (x:xs) = x : cycleHelper xs

                    