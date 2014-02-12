module LiftIO.Prelude where

import Control.Monad.IO.Class (MonadIO,liftIO)

putCharM :: MonadIO m => Char -> m ()
putCharM = liftIO . putChar

putStrM :: MonadIO m => String -> m ()
putStrM = liftIO . putStr

putStrLnM :: MonadIO m => String -> m ()
putStrLnM = liftIO . putStrLn

printM :: (Show a, MonadIO m) => a -> m ()
printM = liftIO . print

getCharM :: MonadIO m => m Char
getCharM = liftIO getChar

getLineM :: MonadIO m => m String
getLineM = liftIO getLine

getContentsM :: MonadIO m => m String
getContentsM = liftIO getContents

interactM :: MonadIO m => (String -> String) -> m ()
interactM = liftIO . interact

readFileM :: MonadIO m => FilePath -> m String
readFileM = liftIO . readFile

writeFileM :: MonadIO m => FilePath -> String -> m ()
writeFileM path = liftIO . writeFile path

appendFileM :: MonadIO m => FilePath -> String -> m ()
appendFileM path = liftIO . appendFile path

readM :: (MonadIO m, Read a) => String -> m a
readM = liftIO . readIO

readLnM :: (MonadIO m, Read a) => m a
readLnM = liftIO readLn

mError :: MonadIO m => IOError -> m a
mError = liftIO . ioError
