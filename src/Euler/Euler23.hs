module Euler.Euler23 (
        euler23
) where
import Euler.EulerType (EulerType)
import MathUtils (cannotBeWrittenWithTwoAbundantNums)


euler23 :: EulerType
euler23 = sum $ filter cannotBeWrittenWithTwoAbundantNums [1..28123]
