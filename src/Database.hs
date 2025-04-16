{-# LANGUAGE OverloadedStrings #-}

module Database 
  ( getConnection
  , getNumbers
  ) where

import qualified Database.PostgreSQL.Simple as SQL
import Database.PostgreSQL.Simple.FromRow
import Model.JpNumber (JpNumber(JpNumber))
import System.Environment (getEnv)
import Configuration.Dotenv (loadFile, defaultConfig)

getConnection :: IO SQL.Connection
getConnection = do
  loadFile defaultConfig
  host <- getEnv "DB_HOST"
  database <- getEnv "DB_DATABASE"
  user <- getEnv "DB_USER"
  password <- getEnv "DB_PASSWORD"
  portStr <- getEnv "DB_PORT"
  let port = read portStr :: Int
  SQL.connect $
    SQL.defaultConnectInfo
      { SQL.connectHost = host
      , SQL.connectDatabase = database
      , SQL.connectUser = user
      , SQL.connectPassword = password
      , SQL.connectPort = fromIntegral port
      }

instance SQL.FromRow JpNumber where
  fromRow = JpNumber <$> field <*> field <*> field

getNumbers :: SQL.Connection -> IO [JpNumber]
getNumbers conn = SQL.query_ conn "SELECT num, romaji, kanji FROM number_romaji_kanji"
