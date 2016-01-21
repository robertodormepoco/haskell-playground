module MyComparator(my_min, my_max, my_minimum, my_maximum) where 
my_min :: Ord a => a -> a -> a
my_min a b = if a < b
                then a
                else b

my_max :: Ord a => a -> a -> a
my_max a b = if a > b
                then a
                else b

my_minimum :: Ord a => [a] -> a
my_minimum [x] = x
my_minimum (x:y:xs) = my_minimum((my_min x y):xs)

my_maximum :: Ord a => [a] -> a
my_maximum [x] = x
my_maximum (x:y:xs) = my_maximum((my_max x y):xs)
