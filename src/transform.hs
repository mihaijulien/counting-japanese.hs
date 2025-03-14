module Transform where

import Counters

transform :: String -> String
transform s = japaneseStr
        where
            tuple = separateNumsAndWords s
            counter = assignCounter (snd tuple)
            numeral = num2words (fst tuple)
            japaneseStr = unwords [numeral, counter]


separateNumsAndWords :: String -> (Int, String)
separateNumsAndWords s = (num, word)
        where 
            sList = words s
            rInt :: String -> Int
            rInt = read
            num = rInt (head sList)
            word = tail sList

assignCounter :: String -> String
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
        | otherwise = "not implemented"

num2words :: Int -> String
num2words num = case Map.lookup num numberToRomaji of
        Just romaji -> romaji
        Nothing -> "not implemented"