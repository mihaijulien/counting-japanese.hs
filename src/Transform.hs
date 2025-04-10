module Transform 
        ( transform
        , separateNumsAndWords
        , assignCounter
        , num2words
        ) where

import Counters
import qualified Data.Map as Map
import qualified Data.Set as Set
import Data.List (find)
import Model.JpNumber (JpNumber(JpNumber), number, kanji, romaji)

transform :: [JpNumber] -> String -> String
transform nums s = case assignCounter word of
    Just counter -> unwords [num2words nums n, counter]
    Nothing      -> "counter not found"
  where
    (n, word) = separateNumsAndWords s



separateNumsAndWords :: String -> (Int, String)
separateNumsAndWords s = (num, word)
        where 
            sList = words s
            rInt :: String -> Int
            rInt = read
            num = rInt (sList !! 0)
            word = sList !! 1

assignCounter :: String -> Maybe String
assignCounter s 
        -- if s is an element of cylindricalObjects set -> return the counter from the cylindricalObjects map
        | Set.member s cylindricalObjects = Map.lookup "cylindricalObjects" counters 
        | Set.member s books = Map.lookup "books" counters
        | Set.member s smallAnimals = Map.lookup "smallAnimals" counters
        | Set.member s largeAnimals = Map.lookup "largeAnimals" counters
        | Set.member s people = Map.lookup "people" counters
        | Set.member s thinFlatObjects = Map.lookup "thinFlatObjects" counters
        | Set.member s age = Map.lookup "age" counters
        | Set.member s vehiclesAndDevices = Map.lookup "vehiclesAndDevices" counters
        | otherwise = Nothing  --"not implemented"

num2words :: [JpNumber] -> Int -> String
num2words nums n =
  case find (\j -> number j == n) nums of
    Just jp -> romaji jp ++ " " ++ kanji jp
    Nothing -> "not implemented"