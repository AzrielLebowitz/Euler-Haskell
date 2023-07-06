module Lib (someFunc) where

import System.CPUTime

--import Euler.Euler1
import Euler.Euler35

someFunc :: IO ()
someFunc = do
  putStrLn "\x1b[32m"
  start <- getCPUTime
  print euler35
  end <- getCPUTime
  let diff = fromIntegral (end - start) / (10 ^ 12)
  putStrLn $ "Execution time: " ++ show diff ++ " seconds"
  putStrLn "\x1b[0m"

