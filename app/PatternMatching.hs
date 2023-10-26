module PatternMatching where

    customGreeting:: String -> String
    customGreeting "George" = "Oh, hey George!"
    customGreeting name = "Hello, " <> name

    matchList :: (Eq a, Num a, Show a) => [a] -> String
    matchList [1, 2, 3] = "one, two, three"
    matchList list = show list

    -- Destructuring lists
    favoriteFood:: String -> String
    favoriteFood person = case person of
        "Ren" -> "Tofu"
        "Rebecca" -> "Falafel"
        "George" -> "Banana"
        name -> "I don't know what " <> name <> " likes!"


    

