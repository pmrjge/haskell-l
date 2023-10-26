module Looping where
    
    foldl':: (c->a->c)->c->[a]->c
    foldl' fn acc lst = if null lst then acc else foldl' fn (fn acc (head lst)) (tail lst)

    foldr' :: (a -> b -> b) -> b -> [a] -> b
    foldr' fn acc lst = if null lst then acc else fn (head lst) $ foldr' fn acc (tail lst)

    