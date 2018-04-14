{-# LANGUAGE ScopedTypeVariables #-}

-- | FUTUREWORK: consider auto-generating this module using tasty-discover.
module Main (main) where

import Test.Tasty

import qualified Test.SAML.WebSSO.XML.Examples
import qualified Test.SAML.WebSSO.XML.Roundtrip
import qualified Test.SAML.WebSSO.API

main :: IO ()
main = defaultMain $ testGroup "Tests"
  [ Test.SAML.WebSSO.API.tests
  , Test.SAML.WebSSO.XML.Examples.tests
  , Test.SAML.WebSSO.XML.Roundtrip.tests
  ]
