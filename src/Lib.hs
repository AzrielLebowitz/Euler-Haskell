module Lib (someFunc) where

import System.CPUTime
import Euler.EulerSolver (euler)

someFunc :: IO ()
someFunc = do
  start <- getCPUTime
  print $ euler 39
  end <- getCPUTime
  let diff = fromIntegral (end - start) / (10.0 ^ (12 :: Int)) :: Double
  putStrLn $ "Execution time: " ++ show diff ++ " seconds"

