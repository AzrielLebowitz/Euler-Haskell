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
    it "Euler 26" $ do
      let result = euler 26
      let expected = "6aab1270668d8cac7cef2566a1c5f569"
      md5Hex result `shouldBe` expected
    it "Euler 27" $ do
      let result = euler 27
      let expected = "69d9e3218fd7abb6ff453ea96505183d"
      md5Hex result `shouldBe` expected
    it "Euler 28" $ do
      let result = euler 28
      let expected = "0d53425bd7c5bf9919df3718c8e49fa6"
      md5Hex result `shouldBe` expected
    it "Euler 29" $ do
      let result = euler 29
      let expected = "6f0ca67289d79eb35d19decbc0a08453"
      md5Hex result `shouldBe` expected
    it "Euler 30" $ do
      let result = euler 30
      let expected = "27a1779a8a8c323a307ac8a70bc4489d"
      md5Hex result `shouldBe` expected
    it "Euler 31" $ do
      let result = euler 31
      let expected = "142dfe4a33d624d2b830a9257e96726d"
      md5Hex result `shouldBe` expected
    it "Euler 32" $ do
      let result = euler 32
      let expected = "100f6e37d0b0564490a2ee27eff0660d"
      md5Hex result `shouldBe` expected
    it "Euler 33" $ do
      let result = euler 33
      let expected = "f899139df5e1059396431415e770c6dd"
      md5Hex result `shouldBe` expected
    it "Euler 34" $ do
      let result = euler 34
      let expected = "60803ea798a0c0dfb7f36397d8d4d772"
      md5Hex result `shouldBe` expected
    it "Euler 35" $ do
      let result = euler 35
      let expected = "b53b3a3d6ab90ce0268229151c9bde11"
      md5Hex result `shouldBe` expected
    it "Euler 36" $ do
      let result = euler 36
      let expected = "0e175dc2f28833885f62e7345addff03"
      md5Hex result `shouldBe` expected
    it "Euler 37" $ do
      let result = euler 37
      let expected = "cace46c61b00de1b60874936a093981d"
      md5Hex result `shouldBe` expected
    it "Euler 38" $ do
      let result = euler 38
      let expected = "f2a29ede8dc9fae7926dc7a4357ac25e"
      md5Hex result `shouldBe` expected
    it "Euler 39" $ do
      let result = euler 39
      let expected = "fa83a11a198d5a7f0bf77a1987bcd006"
      md5Hex result `shouldBe` expected
    it "Euler 40" $ do
      let result = euler 40
      let expected = "6f3ef77ac0e3619e98159e9b6febf557"
      md5Hex result `shouldBe` expected
    it "Euler 41" $ do
      let result = euler 41
      let expected = "d0a1bd6ab4229b2d0754be8923431404"
      md5Hex result `shouldBe` expected
    it "Euler 42" $ do
      let result = euler 42
      let expected = "82aa4b0af34c2313a562076992e50aa3"
      md5Hex result `shouldBe` expected
    it "Euler 43" $ do
      let result = euler 43
      let expected = "115253b7721af0fdff25cd391dfc70cf"
      md5Hex result `shouldBe` expected
    it "Euler 44" $ do
      let result = euler 44
      let expected = "2c2556cb85621309ca647465ffa62370"
      md5Hex result `shouldBe` expected
    it "Euler 45" $ do
      let result = euler 45
      let expected = "30dfe3e3b286add9d12e493ca7be63fc"
      md5Hex result `shouldBe` expected
    it "Euler 46" $ do
      let result = euler 46
      let expected = "89abe98de6071178edb1b28901a8f459"
      md5Hex result `shouldBe` expected
    it "Euler 47" $ do
      let result = euler 47
      let expected = "748f517ecdc29106e2738f88aa7530f4"
      md5Hex result `shouldBe` expected
    it "Euler 48" $ do
      let result = euler 48
      let expected = "0829124724747ae1c65da8cae5263346"
      md5Hex result `shouldBe` expected
    it "Euler 49" $ do
      let result = euler 49
      let expected = "0b99933d3e2a9addccbb663d46cbb592"
      md5Hex result `shouldBe` expected
    it "Euler 50" $ do
      let result = euler 50
      let expected = "73229bab6c5dc1c7cf7a4fa123caf6bc"
      md5Hex result `shouldBe` expected
    it "Euler 51" $ do
      let result = euler 51
      let expected = "e2a8daa5eb919905dadd795593084c22"
      md5Hex result `shouldBe` expected
    it "Euler 52" $ do
      let result = euler 52
      let expected = "a420384997c8a1a93d5a84046117c2aa"
      md5Hex result `shouldBe` expected
    it "Euler 53" $ do
      let result = euler 53
      let expected = "e3b21256183cf7c2c7a66be163579d37"
      md5Hex result `shouldBe` expected
    it "Euler 54" $ do
      let result = euler 54
      let expected = "142949df56ea8ae0be8b5306971900a4"
      md5Hex result `shouldBe` expected
    it "Euler 55" $ do
      let result = euler 55
      let expected = "077e29b11be80ab57e1a2ecabb7da330"
      md5Hex result `shouldBe` expected
    it "Euler 56" $ do
      let result = euler 56
      let expected = "c22abfa379f38b5b0411bc11fa9bf92f"
      md5Hex result `shouldBe` expected
    it "Euler 57" $ do
      let result = euler 57
      let expected = "b3e3e393c77e35a4a3f3cbd1e429b5dc"
      md5Hex result `shouldBe` expected
    it "Euler 58" $ do
      let result = euler 58
      let expected = "b62fc92a2561538525c89be63f36bf7b"
      md5Hex result `shouldBe` expected
    it "Euler 59" $ do
      let result = euler 59
      let expected = "68f891fe214e2bfa07c998ad5d0a390f"
      md5Hex result `shouldBe` expected
    it "Euler 60" $ do
      let result = euler 60
      let expected = "a4b5a70ca8cf24d0eb4330748d1e72e5"
      md5Hex result `shouldBe` expected
    it "Euler 61" $ do
      let result = euler 61
      let expected = "caec17d84884addeec35c3610645ab63"
      md5Hex result `shouldBe` expected
    it "Euler 62" $ do
      let result = euler 62
      let expected = "8f46b522b5401b8b6df99a7410eea44b"
      md5Hex result `shouldBe` expected
    it "Euler 63" $ do
      let result = euler 63
      let expected = "f457c545a9ded88f18ecee47145a72c0"
      md5Hex result `shouldBe` expected
    it "Euler 64" $ do
      let result = euler 64
      let expected = "dc960c46c38bd16e953d97cdeefdbc68"
      md5Hex result `shouldBe` expected
    it "Euler 65" $ do
      let result = euler 65
      let expected = "7a614fd06c325499f1680b9896beedeb"
      md5Hex result `shouldBe` expected
    it "Euler 66" $ do
      let result = euler 66
      let expected = "3a066bda8c96b9478bb0512f0a43028c"
      md5Hex result `shouldBe` expected
    it "Euler 67" $ do
      let result = euler 67
      let expected = "9d702ffd99ad9c70ac37e506facc8c38"
      md5Hex result `shouldBe` expected
    it "Euler 68" $ do
      let result = euler 68
      let expected = "26227442c6fed0292a528ac3790175be"
      md5Hex result `shouldBe` expected
    it "Euler 69" $ do
      let result = euler 69
      let expected = "bf08b01ead83cbd62a9839ca1cf35ada"
      md5Hex result `shouldBe` expected
    it "Euler 70" $ do
      let result = euler 70
      let expected = "1884dde67ced589082c8b7043abce181"
      md5Hex result `shouldBe` expected
    it "Euler 71" $ do
      let result = euler 71
      let expected = "71f38fa2f04db30be52f883d583bfd6f"
      md5Hex result `shouldBe` expected
    it "Euler 72" $ do
      let result = euler 72
      let expected = "0384fb529dc651fe0f460acff3e9ac5d"
      md5Hex result `shouldBe` expected
    it "Euler 73" $ do
      let result = euler 73
      let expected = "990a49eb474672444137fff1e5528a1b"
      md5Hex result `shouldBe` expected
    it "Euler 74" $ do
      let result = euler 74
      let expected = "69cb3ea317a32c4e6143e665fdb20b14"
      md5Hex result `shouldBe` expected
    it "Euler 75" $ do
      let result = euler 75
      let expected = "583e391a7bd87f785412f72f486433cb"
      md5Hex result `shouldBe` expected
    it "Euler 76" $ do
      let result = euler 76
      let expected = "18ed0f01e082beffe0049ae1272689d2"
      md5Hex result `shouldBe` expected
    it "Euler 77" $ do
      let result = euler 77
      let expected = "e2c420d928d4bf8ce0ff2ec19b371514"
      md5Hex result `shouldBe` expected
    it "Euler 78" $ do
      let result = euler 78
      let expected = "ef2a8695e428116131cc94c651d0e566"
      md5Hex result `shouldBe` expected
    it "Euler 79" $ do
      let result = euler 79
      let expected = "3ccc6e16d99b21d42948f6d49b90fa30"
      md5Hex result `shouldBe` expected
    it "Euler 80" $ do
      let result = euler 80
      let expected = "6cc501a25298e4051886ef1a126e9484"
      md5Hex result `shouldBe` expected
    it "Euler 81" $ do
      let result = euler 81
      let expected = "f9ffec84499832add77e6a8bb00246ec"
      md5Hex result `shouldBe` expected
    it "Euler 82" $ do
      let result = euler 82
      let expected = "e6b3b1cd89b018d4754cf63863f6690a"
      md5Hex result `shouldBe` expected
    it "Euler 83" $ do
      let result = euler 83
      let expected = "61b28c4fbe8560003ee50fa5619d7a1e"
      md5Hex result `shouldBe` expected
    it "Euler 84" $ do
      let result = euler 84
      let expected = "ead3264438ef83a8c2da2e98067b4445"
      md5Hex result `shouldBe` expected
    it "Euler 85" $ do
      let result = euler 85
      let expected = "92bf5e6240737e0326ea59846a83e076"
      md5Hex result `shouldBe` expected
    it "Euler 86" $ do
      let result = euler 86
      let expected = "f5c3dd7514bf620a1b85450d2ae374b1"
      md5Hex result `shouldBe` expected
    it "Euler 87" $ do
      let result = euler 87
      let expected = "e7fb7907f1af626cc42e787e367ec602"
      md5Hex result `shouldBe` expected
    it "Euler 88" $ do
      let result = euler 88
      let expected = "ffde7251f43906d31534ae69fa555757"
      md5Hex result `shouldBe` expected
    it "Euler 89" $ do
      let result = euler 89
      let expected = "5c572eca050594c7bc3c36e7e8ab9550"
      md5Hex result `shouldBe` expected
    it "Euler 90" $ do
      let result = euler 90
      let expected = "6a61d423d02a1c56250dc23ae7ff12f3"
      md5Hex result `shouldBe` expected
    it "Euler 91" $ do
      let result = euler 91
      let expected = "e8dc153260a59d4f236cfd7439d5dfd3"
      md5Hex result `shouldBe` expected
    it "Euler 92" $ do
      let result = euler 92
      let expected = "6cee918c0612bccc2dac03d05e07035f"
      md5Hex result `shouldBe` expected
    it "Euler 93" $ do
      let result = euler 93
      let expected = "26588e932c7ccfa1df309280702fe1b5"
      md5Hex result `shouldBe` expected
    it "Euler 94" $ do
      let result = euler 94
      let expected = "3218c6bb59f2539ec39ad4bf37c10913"
      md5Hex result `shouldBe` expected
    it "Euler 95" $ do
      let result = euler 95
      let expected = "cd2018beeece5fb0a71a96308e567bde"
      md5Hex result `shouldBe` expected
    it "Euler 96" $ do
      let result = euler 96
      let expected = "26f6abfa0d7725fef678e371897d5df0"
      md5Hex result `shouldBe` expected
    it "Euler 97" $ do
      let result = euler 97
      let expected = "68c8c919526039022b923a72d5cc12b1"
      md5Hex result `shouldBe` expected
    it "Euler 98" $ do
      let result = euler 98
      let expected = "36b3b5f54143786b7ab2ebb6bcd06e75"
      md5Hex result `shouldBe` expected
    it "Euler 99" $ do
      let result = euler 99
      let expected = "1ecfb463472ec9115b10c292ef8bc986"
      md5Hex result `shouldBe` expected
    it "Euler 100" $ do
      let result = euler 100
      let expected = "21156e3acc4ca35b7a318c541a0648d5"
      md5Hex result `shouldBe` expected
