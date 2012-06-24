{-# LANGUAGE TupleSections, OverloadedStrings #-}
module Handler.Home where

import Import
import Yesod.Auth

getHomeR :: Handler RepHtml
getHomeR = do
  creds <- maybeAuthId
  case creds of
    Just _ -> redirect DashboardR
    Nothing -> defaultLayout $ do
      setTitle "Litter - The barely functional Twitter clone"
      $(widgetFile "homepage")
