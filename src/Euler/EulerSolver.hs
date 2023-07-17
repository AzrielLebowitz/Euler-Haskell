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
import Euler.Euler20 (euler20)
import Euler.Euler21 (euler21)
import Euler.Euler22 (euler22)
import Euler.Euler23 (euler23)
import Euler.Euler24 (euler24)
import Euler.Euler25 (euler25)
import Euler.Euler26 (euler26)
import Euler.Euler27 (euler27)
import Euler.Euler28 (euler28)
import Euler.Euler29 (euler29)
import Euler.Euler30 (euler30)
import Euler.Euler31 (euler31)
import Euler.Euler32 (euler32)
import Euler.Euler33 (euler33)
import Euler.Euler34 (euler34)
import Euler.Euler35 (euler35)
import Euler.Euler36 (euler36)
import Euler.Euler37 (euler37)
import Euler.Euler38 (euler38)
import Euler.Euler39 (euler39)




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
     | n == 20 =    euler20
     | n == 21 =    euler21
     | n == 22 =    euler22
     | n == 23 =    euler23
     | n == 24 =    euler24
     | n == 25 =    euler25
     | n == 26 =    euler26
     | n == 27 =    euler27
     | n == 28 =    euler28
     | n == 29 =    euler29
     | n == 30 =    euler30
     | n == 31 =    euler31
     | n == 32 =    euler32
     | n == 33 =    euler33
     | n == 34 =    euler34
     | n == 35 =    euler35
     | n == 36 =    euler36
     | n == 37 =    euler37
     | n == 38 =    euler38
     | n == 39 =    euler39
     | otherwise =  42 -- Answer to life, universe and all. 
