module HAD.Y2014.M03.D07.Exercise where

-- | trueIndexes produce an infinite list where only the index given in the list
-- in parameter are true.
-- The parameter list is supposed to be sorted and nubbed
--
-- Point-free: Probably hard to find!
-- Level: HARD
--
-- Examples:
-- >>> take 2 $ trueIndexes [1]
-- [False,True]
-- 
-- >>> take 6 $ trueIndexes [0,2..]
-- [True,False,True,False,True,False]
--
-- >>> take 3 $ trueIndexes []
-- [False,False,False]
--
trueIndexes :: [Int] -> [Bool]
trueIndexes l = map (\(i,l) -> not (null l) && (i == head l)) $ iterate trueIndexes' (0,l)

trueIndexes' :: (Int,[Int]) -> (Int, [Int])
trueIndexes' (i, []) =  (i,[])
trueIndexes' (i, l) = (i+1, if i == head l then tail l else l)
