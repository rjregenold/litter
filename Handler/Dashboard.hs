{-# LANGUAGE OverloadedStrings #-}
module Handler.Dashboard where

import Import

getDashboardR :: Handler RepHtml
getDashboardR = defaultLayout $ do
    setTitle "Dashboard"
    $(widgetFile "dashboard")
