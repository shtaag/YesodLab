module Handler.Register where

import Import

getRegisterR :: Handler RepHtml
getRegisterR = do
  maid <- maybeAuthId
  muid <- maybeUserId maid
  case maid of
    Nothing _ ->
      defaultLayout [whamlet|<h2>please register|]
    Just authId ->
--    (loginWidget, enctype) <- generateFormPost entryForm
    defaultLayout [whamlet|<h2>You are IN|]
--        $(widgetFile "login")
