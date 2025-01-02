{-# LANGUAGE OverloadedStrings #-}

module Main (main) where

import Crypto.Hash.MD5 (hash)
import Data.ByteString.Base16 (encode)
import Data.ByteString.Char8 (pack, unpack)
import Euler.EulerSolver
import Test.Hspec

md5Hex :: Int -> String
md5Hex n =
  let hashed = hash . pack . show $ n
   in unpack (encode hashed)

main :: IO ()
main = hspec $ do
  describe "Euler tests" $ do
    it "Euler 1" $ do
      let result = euler 1
      let expected = "e1edf9d1967ca96767dcc2b2d6df69f4"
      md5Hex result `shouldBe` expected
    it "Euler 2" $ do
      let result = euler 2
      let expected = "4194eb91842c8e7e6df099ca73c38f28"
      md5Hex result `shouldBe` expected
    it "Euler 3" $ do
      let result = euler 3
      let expected = "94c4dd41f9dddce696557d3717d98d82"
      md5Hex result `shouldBe` expected
    it "Euler 4" $ do
      let result = euler 4
      let expected = "d4cfc27d16ea72a96b83d9bdef6ce2ec"
      md5Hex result `shouldBe` expected
    it "Euler 5" $ do
      let result = euler 5
      let expected = "bc0d0a22a7a46212135ed0ba77d22f3a"
      md5Hex result `shouldBe` expected
    it "Euler 6" $ do
      let result = euler 6
      let expected = "867380888952c39a131fe1d832246ecc"
      md5Hex result `shouldBe` expected
    it "Euler 7" $ do
      let result = euler 7
      let expected = "8c32ab09ec0210af60d392e9b2009560"
      md5Hex result `shouldBe` expected
    it "Euler 8" $ do
      let result = euler 8
      let expected = "0f53ea7949d32ef24f9186207600403c"
      md5Hex result `shouldBe` expected
    it "Euler 9" $ do
      let result = euler 9
      let expected = "24eaa9820350012ff678de47cb85b639"
      md5Hex result `shouldBe` expected
    it "Euler 10" $ do
      let result = euler 10
      let expected = "d915b2a9ac8749a6b837404815f1ae25"
      md5Hex result `shouldBe` expected
    it "Euler 11" $ do
      let result = euler 11
      let expected = "678f5d2e1eaa42f04fa53411b4f441ac"
      md5Hex result `shouldBe` expected
    it "Euler 12" $ do
      let result = euler 12
      let expected = "8091de7d285989bbfa9a2f9f3bdcc7c0"
      md5Hex result `shouldBe` expected
    it "Euler 13" $ do
      let result = euler 13
      let expected = "361113f19fd302adc31268f8283a4f2d"
      md5Hex result `shouldBe` expected
    it "Euler 14" $ do
      let result = euler 14
      let expected = "5052c3765262bb2c6be537abd60b305e"
      md5Hex result `shouldBe` expected
    it "Euler 15" $ do
      let result = euler 15
      let expected = "928f3957168ac592c4215dcd04e0b678"
      md5Hex result `shouldBe` expected
    it "Euler 16" $ do
      let result = euler 16
      let expected = "6a5889bb0190d0211a991f47bb19a777"
      md5Hex result `shouldBe` expected
    it "Euler 17" $ do
      let result = euler 17
      let expected = "6a979d4a9cf85135408529edc8a133d0"
      md5Hex result `shouldBe` expected
    it "Euler 18" $ do
      let result = euler 18
      let expected = "708f3cf8100d5e71834b1db77dfa15d6"
      md5Hex result `shouldBe` expected
    it "Euler 19" $ do
      let result = euler 19
      let expected = "a4a042cf4fd6bfb47701cbc8a1653ada"
      md5Hex result `shouldBe` expected
    it "Euler 20" $ do
      let result = euler 20
      let expected = "443cb001c138b2561a0d90720d6ce111"
      md5Hex result `shouldBe` expected
    it "Euler 21" $ do
      let result = euler 21
      let expected = "51e04cd4e55e7e415bf24de9e1b0f3ff"
      md5Hex result `shouldBe` expected
    it "Euler 22" $ do
      let result = euler 22
      let expected = "f2c9c91cb025746f781fa4db8be3983f"
      md5Hex result `shouldBe` expected
    it "Euler 23" $ do
      let result = euler 23
      let expected = "2c8258c0604152962f7787571511cf28"
      md5Hex result `shouldBe` expected
    it "Euler 24" $ do
      let result = euler 24
      let expected = "7f155b45cb3f0a6e518d59ec348bff84"
      md5Hex result `shouldBe` expected
    it "Euler 25" $ do
      let result = euler 25
      let expected = "a376802c0811f1b9088828288eb0d3f0"
      md5Hex result `shouldBe` expected
