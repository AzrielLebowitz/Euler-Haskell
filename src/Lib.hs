module Lib (someFunc) where

import System.CPUTime

--import Euler.Euler1
import Euler.EulerSolver (euler)

someFunc :: IO ()
someFunc = do
  start <- getCPUTime
  print $ euler 4
  end <- getCPUTime
  let diff = fromIntegral (end - start) / (10 ^ 12)
  putStrLn $ "Execution time: " ++ show diff ++ " seconds"

