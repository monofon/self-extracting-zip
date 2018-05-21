module Main where

import System.Environment
import Codec.Archive.Zip
import Data.Map

main :: IO ()
main = do
  executable <- getExecutablePath
  entries <- withArchive executable getEntries
  mapM_ print $ keys entries