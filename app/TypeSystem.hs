module TypeSystem where
    data CustomerInfo = CustomerInfo String String Int Int

    data Customer = Customer {firstName::String, lastName:: String, widgetCount::Int, balance:: Int}

    customerGeorge :: Customer
    customerGeorge = Customer {balance = 100, lastName="Bird", firstName="George", widgetCount=10}

    customerFactory :: String -> String -> Customer
    customerFactory fname lname = Customer {firstName=fname, lastName=lname, balance=0, widgetCount=5}

    emptyCart :: Customer -> Customer
    emptyCart customer = customer { widgetCount=0, balance=0}

    data Direction = North | South | East | West

    data PreferredContactMethod = Email String | TextMessage String | Mail String String String Int

    data Person = C {name :: String, personBalance:: Int} | Employee {name::String, managerName:: String, salary :: Int}

    data Person1 = Cst Customer | P Person

    data Perhaps a = Nothing | Just a

    data OneOfTwo a b = Left a | Right b



    data Peano = Z | S Peano

    toPeano :: Int -> Peano
    toPeano 0 = Z
    toPeano n = S (toPeano $ n-1)

    fromPeano :: Peano -> Int
    fromPeano Z = 0
    fromPeano (S p) = succ (fromPeano p)

    eqPeano :: Peano -> Peano -> Bool
    eqPeano p p' = 
        case (p,p') of 
        (Z, Z) -> True
        (S n, S n') -> eqPeano n n'
        _ -> False

    addPeano :: Peano -> Peano -> Peano
    addPeano Z b = b
    addPeano (S a) b = addPeano a (S b)

    data LList a = Empty | Cons a (LList a)

    toList:: [a] -> LList a
    toList [] = Empty
    toList (x:xs) = Cons x (toList xs)

    data Expr = Lit Int | Sub Expr Expr | Add Expr Expr | Mul Expr Expr | Div Expr Expr

    eval :: Expr -> Int
    eval expr = case expr of
        Lit num -> num
        Add a1 a2 -> fn (+) a1 a2
        Sub a1 a2 -> fn (-) a1 a2
        Mul a1 a2 -> fn (*) a1 a2
        Div a1 a2 -> fn div a1 a2
        where 
            fn :: (Int -> Int -> Int) -> Expr -> Expr->Int
            fn op a1 a2 = op (eval a1) (eval a2)

    

    -- Functions as values

