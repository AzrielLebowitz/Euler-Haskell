module Euler.EulerSolver
  ( euler,
  )
where

import Euler.Euler1 (euler1)
import Euler.Euler10 (euler10)
import Euler.Euler100 (euler100)
import Euler.Euler11 (euler11)
import Euler.Euler12 (euler12)
import Euler.Euler13 (euler13)
import Euler.Euler14 (euler14)
import Euler.Euler15 (euler15)
import Euler.Euler16 (euler16)
import Euler.Euler17 (euler17)
import Euler.Euler18 (euler18)
import Euler.Euler19 (euler19)
import Euler.Euler2 (euler2)
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
import Euler.Euler3 (euler3)
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
import Euler.Euler4 (euler4)
import Euler.Euler40 (euler40)
import Euler.Euler41 (euler41)
import Euler.Euler42 (euler42)
import Euler.Euler43 (euler43)
import Euler.Euler44 (euler44)
import Euler.Euler45 (euler45)
import Euler.Euler46 (euler46)
import Euler.Euler47 (euler47)
import Euler.Euler48 (euler48)
import Euler.Euler49 (euler49)
import Euler.Euler5 (euler5)
import Euler.Euler50 (euler50)
import Euler.Euler51 (euler51)
import Euler.Euler52 (euler52)
import Euler.Euler53 (euler53)
import Euler.Euler54 (euler54)
import Euler.Euler55 (euler55)
import Euler.Euler56 (euler56)
import Euler.Euler57 (euler57)
import Euler.Euler58 (euler58)
import Euler.Euler59 (euler59)
import Euler.Euler6 (euler6)
import Euler.Euler60 (euler60)
import Euler.Euler61 (euler61)
import Euler.Euler62 (euler62)
import Euler.Euler63 (euler63)
import Euler.Euler64 (euler64)
import Euler.Euler65 (euler65)
import Euler.Euler66 (euler66)
import Euler.Euler67 (euler67)
import Euler.Euler68 (euler68)
import Euler.Euler69 (euler69)
import Euler.Euler7 (euler7)
import Euler.Euler70 (euler70)
import Euler.Euler71 (euler71)
import Euler.Euler72 (euler72)
import Euler.Euler73 (euler73)
import Euler.Euler74 (euler74)
import Euler.Euler75 (euler75)
import Euler.Euler76 (euler76)
import Euler.Euler77 (euler77)
import Euler.Euler78 (euler78)
import Euler.Euler79 (euler79)
import Euler.Euler8 (euler8)
import Euler.Euler80 (euler80)
import Euler.Euler81 (euler81)
import Euler.Euler82 (euler82)
import Euler.Euler83 (euler83)
import Euler.Euler84 (euler84)
import Euler.Euler85 (euler85)
import Euler.Euler86 (euler86)
import Euler.Euler87 (euler87)
import Euler.Euler88 (euler88)
import Euler.Euler89 (euler89)
import Euler.Euler9 (euler9)
import Euler.Euler90 (euler90)
import Euler.Euler91 (euler91)
import Euler.Euler92 (euler92)
import Euler.Euler93 (euler93)
import Euler.Euler94 (euler94)
import Euler.Euler95 (euler95)
import Euler.Euler96 (euler96)
import Euler.Euler97 (euler97)
import Euler.Euler98 (euler98)
import Euler.Euler99 (euler99)
import Euler.EulerType (EulerType)

euler :: Int -> EulerType
euler n
  | n == 1 = euler1
  | n == 2 = euler2
  | n == 3 = euler3
  | n == 4 = euler4
  | n == 5 = euler5
  | n == 6 = euler6
  | n == 7 = euler7
  | n == 8 = euler8
  | n == 9 = euler9
  | n == 10 = euler10
  | n == 11 = euler11
  | n == 12 = euler12
  | n == 13 = euler13
  | n == 14 = euler14
  | n == 15 = euler15
  | n == 16 = euler16
  | n == 17 = euler17
  | n == 18 = euler18
  | n == 19 = euler19
  | n == 20 = euler20
  | n == 21 = euler21
  | n == 22 = euler22
  | n == 23 = euler23
  | n == 24 = euler24
  | n == 25 = euler25
  | n == 26 = euler26
  | n == 27 = euler27
  | n == 28 = euler28
  | n == 29 = euler29
  | n == 30 = euler30
  | n == 31 = euler31
  | n == 32 = euler32
  | n == 33 = euler33
  | n == 34 = euler34
  | n == 35 = euler35
  | n == 36 = euler36
  | n == 37 = euler37
  | n == 38 = euler38
  | n == 39 = euler39
  | n == 40 = euler40
  | n == 41 = euler41
  | n == 42 = euler42
  | n == 43 = euler43
  | n == 44 = euler44
  | n == 45 = euler45
  | n == 46 = euler46
  | n == 47 = euler47
  | n == 48 = euler48
  | n == 49 = euler49
  | n == 50 = euler50
  | n == 51 = euler51
  | n == 52 = euler52
  | n == 53 = euler53
  | n == 54 = euler54
  | n == 55 = euler55
  | n == 56 = euler56
  | n == 57 = euler57
  | n == 58 = euler58
  | n == 59 = euler59
  | n == 60 = euler60
  | n == 61 = euler61
  | n == 62 = euler62
  | n == 63 = euler63
  | n == 64 = euler64
  | n == 65 = euler65
  | n == 66 = euler66
  | n == 67 = euler67
  | n == 68 = euler68
  | n == 69 = euler69
  | n == 70 = euler70
  | n == 71 = euler71
  | n == 72 = euler72
  | n == 73 = euler73
  | n == 74 = euler74
  | n == 75 = euler75
  | n == 76 = euler76
  | n == 77 = euler77
  | n == 78 = euler78
  | n == 79 = euler79
  | n == 80 = euler80
  | n == 81 = euler81
  | n == 82 = euler82
  | n == 83 = euler83
  | n == 84 = euler84
  | n == 85 = euler85
  | n == 86 = euler86
  | n == 87 = euler87
  | n == 88 = euler88
  | n == 89 = euler89
  | n == 90 = euler90
  | n == 91 = euler91
  | n == 92 = euler92
  | n == 93 = euler93
  | n == 94 = euler94
  | n == 95 = euler95
  | n == 96 = euler96
  | n == 97 = euler97
  | n == 98 = euler98
  | n == 99 = euler99
  | n == 100 = euler100
  | otherwise = 42 -- Answer to life, universe and all.
