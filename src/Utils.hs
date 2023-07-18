module Utils (
  getFile
  , convertIO
) where
import System.IO.Unsafe (unsafePerformIO)

getFile :: String -> IO String
getFile = readFile 

convertIO :: IO a -> a
convertIO = unsafePerformIO
