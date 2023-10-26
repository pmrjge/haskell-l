module Looping where
    
    foldl':: (c->a->c)->c->[a]->c
    foldl' fn acc lst = if null lst then acc else foldl' fn (fn acc (head lst)) (tail lst)

    foldr' :: (a -> b -> b) -> b -> [a] -> b
    foldr' fn acc lst = if null lst then acc else fn (head lst) $ foldr' fn acc (tail lst)

    doubleElems :: [Int] -> [Int]
    doubleElems nums = if null nums
        then []
        else
            let hd = head nums
                tl = tail nums
            in (2 * hd) : doubleElems tl

    doubleElems' :: [Int] -> [Int]
    doubleElems' = map (2*)

    doubleElems'' :: [Int] -> [Int]
    doubleElems'' = foldr doubleElem [] 
        where  
        doubleElem num ls = (2 * num) : ls

    double :: [Integer]
    double = [ 2 * number | number <- [0..10]]

    doubleOdds:: [Integer]
    doubleOdds = [2 * number | number <- [0, 10], odd number]