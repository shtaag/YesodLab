module Handler.Echo where

import Import

getEchoR :: Text -> Handler RepHtml
getEchoR theText = do
  maid <- maybeAuthId
  case maid of
    Nothing -> 
      defaultLayout [whamlet|<p><a href=@{AuthR LoginR}> Go to the login page|]
    Just authId -> do
      defaultLayout [whamlet|<h2>#{show maid}|]
