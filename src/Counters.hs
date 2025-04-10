module Counters 
    ( counters
    , cylindricalObjects
    , books
    , smallAnimals
    , largeAnimals
    , people
    , thinFlatObjects
    , vehiclesAndDevices
    , age
    ) where

import qualified Data.Map as Map
import qualified Data.Set as Set

-- map of numeral counters
counters :: Map.Map String String
-- kanji (hiragana) / romaji
counters = Map.fromList [("cylindricalObjects", "本 (ほん) / hon"), 
                         ("books", "冊 (さつ/satsu)"), 
                         ("smallAnimals", "匹 (ひき) / hiki"),
                         ("largeAnimals", "頭 (とう) / tou"),
                         ("people", "人 (にん) / nin"),
                         ("thinFlatObjects", "枚 (まい) / mai"),
                         ("vehiclesAndDevices", "台 (だい) / dai"),
                         ("age", "歳 (さい) / sai")]

-- categories
cylindricalObjects :: Set.Set String
cylindricalObjects = Set.fromList ["pens", "bottles", "chopsticks", "candles"]

books :: Set.Set String
books = Set.fromList ["books", "magazines", "leaflets", "notebooks", "comics"]

smallAnimals :: Set.Set String
smallAnimals = Set.fromList ["cats", "dogs", "rabbits", "hamsters", "mice"]

largeAnimals :: Set.Set String
largeAnimals = Set.fromList ["cows", "horses", "elephants", "whales", "bears"]

people :: Set.Set String
people = Set.fromList ["children", "adults", "students", "workers", "family members"]

thinFlatObjects :: Set.Set String
thinFlatObjects = Set.fromList ["paper", "plates", "cards", "tickets", "cloths"]

vehiclesAndDevices :: Set.Set String
vehiclesAndDevices = Set.fromList ["cars", "bicycles", "trucks", "washing machines", "computers"]

age :: Set.Set String
age = Set.fromList ["years old", "years"]
