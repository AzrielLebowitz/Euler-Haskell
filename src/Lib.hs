module Lib (someFunc) where

import Euler.EulerSolver (euler)
import System.CPUTime
import System.Environment (getEnv)
import Text.Read (readMaybe)

someFunc :: IO ()
someFunc = do
  number <- getEnv "EULER"
  start <- getCPUTime
  case readMaybe number :: Maybe Int of
    Just intValue -> print $ euler intValue
    Nothing -> putStrLn "Failed To read env var \"EULER\", please use a valid env var so we can solve that function"

  end <- getCPUTime
  let diff = fromIntegral (end - start) / (10.0 ^ (12 :: Int)) :: Double
  putStrLn $ "Execution time: " ++ show diff ++ " seconds"
