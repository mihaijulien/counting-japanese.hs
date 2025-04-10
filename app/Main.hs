module Main (main) where

--import Transform
import UI
import Brick (defaultMain)
import Database (getConnection, getNumbers)

main :: IO ()
main = do
    conn <- getConnection
    nums <- getNumbers conn
    state <- defaultMain theApp (initialState nums)
    putStrLn "quit"
