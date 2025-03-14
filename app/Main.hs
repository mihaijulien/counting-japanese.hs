module Main (main) where

import Transform

main :: IO ()
main = do
    putStrLn("Japanese Numbers and Counters")
    putStrLn("Usage example: \n Input: 2 cats \n Output: ni 二 匹 (ひき) / hiki \n\n")
    command <- getLine
    putStrLn $ transform command
