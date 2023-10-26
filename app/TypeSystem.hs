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

    

