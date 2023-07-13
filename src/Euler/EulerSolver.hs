module Euler.EulerSolver (
        euler
) where


import Euler.EulerType (EulerType)

import Euler.Euler1 (euler1)
import Euler.Euler2 (euler2)
import Euler.Euler3 (euler3)
import Euler.Euler4 (euler4)
import Euler.Euler5 (euler5)
import Euler.Euler6 (euler6)
import Euler.Euler7 (euler7)
import Euler.Euler8 (euler8)
import Euler.Euler9 (euler9)
import Euler.Euler10 (euler10)
import Euler.Euler11 (euler11)
import Euler.Euler12 (euler12)
import Euler.Euler13 (euler13)
import Euler.Euler14 (euler14)
import Euler.Euler15 (euler15)
import Euler.Euler16 (euler16)
import Euler.Euler17 (euler17)
import Euler.Euler18 (euler18)
import Euler.Euler19 (euler19)




euler :: Int -> EulerType 
euler n 
     | n == 1 =     euler1
     | n == 2 =     euler2
     | n == 3 =     euler3
     | n == 4 =     euler4
     | n == 5 =     euler5
     | n == 6 =     euler6
     | n == 7 =     euler7
     | n == 8 =     euler8
     | n == 9 =     euler9
     | n == 10 =    euler10
     | n == 11 =    euler11
     | n == 12 =    euler12
     | n == 13 =    euler13
     | n == 14 =    euler14
     | n == 15 =    euler15
     | n == 16 =    euler16
     | n == 17 =    euler17
     | n == 18 =    euler18
     | n == 19 =    euler19
     | otherwise =  42 -- answer to life, universe and all. 
