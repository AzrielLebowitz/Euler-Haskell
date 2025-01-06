import Data.List (isPrefixOf, stripPrefix)
import Data.Map as M
import GHC.IO (ioToST, unsafePerformIO)
import System.IO (readFile)

-- import GHC.TypeError (ErrorMessage(Text))
type ProblemNum = Int

type Answer = String

type Contents = M.Map ProblemNum Answer

main :: IO ()
main = do
  file <- readFile "project_euler_problems.txt"
  let contents = parseProblems file

  writeFile "tests.txt" (generateTest contents)
  print $ generateTest contents

parseProblems :: String -> [(Int, String)]
parseProblems content = extractProblemsAndAnswers (lines content)
  where
    extractProblemsAndAnswers :: [String] -> [(Int, String)]
    extractProblemsAndAnswers [] = []
    extractProblemsAndAnswers (line : rest)
      | "Problem" `isPrefixOf` line =
          let problemNumber = extractProblemNumber line
              (answer, remainingLines) = extractAnswer rest
           in (problemNumber, answer) : extractProblemsAndAnswers remainingLines
      | otherwise = extractProblemsAndAnswers rest

    extractProblemNumber :: String -> Int
    extractProblemNumber line =
      case words line of
        (_ : number : _) -> read number
        _ -> error "Invalid problem format"

    extractAnswer :: [String] -> (String, [String])
    extractAnswer [] = error "Answer not found"
    extractAnswer (line : rest)
      | "   Answer:" `isPrefixOf` line =
          case stripPrefix "   Answer: " line of
            Just hash -> (hash, rest)
            Nothing -> error "Invalid answer format"
      | otherwise = extractAnswer rest

generateTest :: [(Int, String)] -> String
generateTest file = unlines $ Prelude.map generate file
  where
    generate :: (Int, String) -> String
    generate (problem, answer) = "    it \"Euler " ++ show problem ++ "\" $ do\n      let result = euler " ++ show problem ++ "\n      let expected = \"" ++ answer ++ "\"\n      md5Hex result `shouldBe` expected"
