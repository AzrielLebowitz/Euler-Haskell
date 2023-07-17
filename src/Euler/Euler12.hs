module Euler.Euler12 (
        euler12
) where
import Euler.EulerType (EulerType)
import MathUtils (generateTriangularNum, factors)


euler12 :: EulerType
euler12 = head $ filter (\x -> length (factors x) > 500) generateTriangularNum
