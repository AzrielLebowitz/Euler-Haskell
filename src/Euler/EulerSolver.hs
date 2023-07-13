module Euler.EulerSolver (
        euler
) where


import Euler.EulerType (EulerType)

import Euler.Euler1 (euler1)
import Euler.Euler2 (euler2)
import Euler.Euler3 (euler3)
import Euler.Euler4 (euler4)
import Euler.Euler5 (euler5)




euler :: Int -> EulerType 
euler n 
     | n == 1 =     euler1
     | n == 2 =     euler2
     | n == 3 =     euler3
     | n == 4 =     euler4
     | n == 5 =     euler5
     | otherwise =  42 -- answer to life, universe and all. 
