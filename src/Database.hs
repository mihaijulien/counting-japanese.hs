{-# LANGUAGE OverloadedStrings #-}

module Database 
  ( getConnection
  , getNumbers
  ) where

import qualified Database.PostgreSQL.Simple as SQL
import Database.PostgreSQL.Simple.FromRow
import Model.JpNumber (JpNumber(JpNumber))

-- TODO: move to .env file
getConnection :: IO SQL.Connection
getConnection =
  SQL.connect $
    SQL.defaultConnectInfo
      { SQL.connectHost = "localhost"
      , SQL.connectDatabase = "japannumbers"
      , SQL.connectUser = "user"
      , SQL.connectPassword = "password"
      , SQL.connectPort = 15432
      }

instance SQL.FromRow JpNumber where
  fromRow = JpNumber <$> field <*> field <*> field

getNumbers :: SQL.Connection -> IO [JpNumber]
getNumbers conn = SQL.query_ conn "SELECT num, romaji, kanji FROM number_romaji_kanji"
