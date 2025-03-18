module Main (main) where

--import Transform
import UI
import Brick (defaultMain)

main :: IO ()
main = do
    state <- defaultMain theApp initialState
    putStrLn "quit"
