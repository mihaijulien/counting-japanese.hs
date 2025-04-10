module Model.JpNumber where

data JpNumber = JpNumber {
  number:: Int,
  romaji :: String,
  kanji :: String
} deriving (Show)