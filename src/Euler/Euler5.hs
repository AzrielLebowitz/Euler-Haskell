module Euler.Euler5 (
        euler5
) where
import Euler.EulerType (EulerType)


euler5 :: EulerType
euler5 = foldl1 lcm [1..20]
