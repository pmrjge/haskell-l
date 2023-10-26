module LookAt where
    (+++) :: Num a => a -> a -> a
    a +++ b = a + b
    infixl 6 +++

    makeGreeting :: String -> String -> String
    makeGreeting salutation person = salutation <> " " <> person

    makeGreeting':: String -> String -> String
    makeGreeting' salutation person = let messageWithTrailingSpace = salutation <> "" in messageWithTrailingSpace <> person

    extendedGreeting:: String -> String
    extendedGreeting person = 
        let hello = makeGreeting "Hello" person
            goodDay = makeGreeting "I hope you have a nice afternoon" person
            goodBye = makeGreeting "See you later" person 
            in hello <> "\n" <> goodDay <> "\n" <> goodBye

    




