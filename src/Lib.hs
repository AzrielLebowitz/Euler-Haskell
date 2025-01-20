module Lib (someFunc) where

import Euler.EulerSolver (euler)
import System.CPUTime
import System.Environment (lookupEnv)
import Text.Read (readMaybe)

runEuler :: Int -> IO ()
runEuler num = do
  start <- getCPUTime
  print $ euler num
  end <- getCPUTime
  let diff = fromIntegral (end - start) / (10.0 ^ (12 :: Int)) :: Double
  putStrLn $ "Euler " ++ show num ++ " execution time: " ++ show diff ++ " seconds"

readFromUser :: IO ()
readFromUser = do
  putStrLn "What problem would you like to solve? (0 to exit)"
  input <- getLine
  func input
  where
    -- func 0 = putStrLn "Who do you think you are? You think you can just exit like that? I. Am. Inevit--ah--aaa-hh" >> putStrLn "💀💀💀"
    func a = do
      case readMaybe a :: Maybe Int of
        Just 0 -> putStrLn "Who do you think you are? You think you can just exit like that? I. Am. Inevit-a-aa--ahh-h-" >> putStrLn "💀💀💀"
        Just intVal ->
          runEuler intVal
            >> readFromUser
        Nothing -> retry
      where
        retry = do
          putStrLn "Thats a secret. If I tell you I'll have to kill you"
          readFromUser

someFunc :: IO ()
someFunc = do
  isAll <- System.Environment.lookupEnv "ALL"

  case isAll of
    Just _ -> mapM_ runEuler [1 .. 100]
    Nothing -> do
      number <- System.Environment.lookupEnv "EULER"

      case number of
        Nothing -> readFromUser
        Just x -> do
          maybe readFromUser runEuler (readMaybe x :: Maybe Int)
