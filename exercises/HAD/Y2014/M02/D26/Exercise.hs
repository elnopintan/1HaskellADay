module HAD.Y2014.M02.D26.Exercise where
import Control.Applicative (liftA2)

-- | Sum the value inside the maybe if there aren't any Nothing,
-- otherwise return Nothing
--
-- Examples
--
-- >>> sumIfAll [Just 1, Just 2]
-- Just 3
--
-- >>> sumIfAll [Just 1, Nothing]
-- Nothing
--
sumIfAll :: Num a => [Maybe a] -> Maybe a
sumIfAll = foldl (liftA2 (+)) (Just 0) 
