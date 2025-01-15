module Euler.Euler67
  ( euler67,
  )
where

import Euler.EulerType (EulerType)
import Utils (convertIO, getFile)

tri :: [[Int]]
tri = map (map read . words) . lines $ convertIO $ getFile "src/Euler/0067_triangle.txt"

f :: (Num a, Ord a) => a -> a -> a -> a
f x y z = x + max y z

g :: (Num d, Ord d) => [d] -> [d] -> [d]
g xs ys = zipWith3 f xs ys $ tail ys

euler67 :: EulerType
euler67 = head $ foldr1 g tri
