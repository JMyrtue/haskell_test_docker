-- Test.hs
import Test.HUnit

main :: IO ()
main = runTestTT tests >> return ()

tests :: Test
tests = TestList [
    TestCase (assertEqual "for 1 + 1," 2 (1 - 1)),
    TestCase (assertEqual "for 2 * 3," 6 (2 * 4))
  ]
