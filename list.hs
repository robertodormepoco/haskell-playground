module MyList(my_take, my_repeat, my_cycle) where

my_take :: Int -> [a] -> [a]
my_take 0 (x:xs) = []
my_take _ [] = []
my_take c (x:xs) = x:(my_take (c - 1) xs)

my_repeat :: Int -> a -> [a]
my_repeat 0 _ = []
my_repeat c x = x:(my_repeat (c - 1) x)

my_cycle :: Int -> [a] -> [a]
my_cycle c xs = my_cycle_app c xs xs
my_cycle_app :: Int -> [a] -> [a] -> [a]
my_cycle_app 0 _ _ = []
my_cycle_app c [] xs = my_cycle_app c xs xs
my_cycle_app c (x:xs) xss = x:(my_cycle_app (c - 1) xs xss)

