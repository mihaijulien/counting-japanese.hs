module TransformTest (spec) where

import Test.Hspec
import Transform

spec :: Spec
spec = do
  describe "num2words" $ do
    it "takes an integer as input and outputs the string representation of it" $ do
      num2words 1 `shouldBe` "ichi 一"
      num2words 91 `shouldBe` "kyuujuuichi 九十一"

  describe "separateNumsAndWords" $ do
    it "separates numbers from words" $ do
        separateNumsAndWords "123 test" `shouldBe` (123, "test")
        separateNumsAndWords "321    Test" `shouldBe` (321, "Test")

  describe "assignCounter" $ do
    it "assign a counter word" $ do
        assignCounter "chopsticks" `shouldBe` Just "本 (ほん) / hon"
        assignCounter "books" `shouldBe` Just "冊 (さつ/satsu)"
        assignCounter "cats" `shouldBe` Just "匹 (ひき) / hiki"
        assignCounter "horses" `shouldBe` Just "頭 (とう) / tou"
        assignCounter "students" `shouldBe` Just "人 (にん) / nin"

  describe "transform" $ do
    it "en -> jp" $ do
        transform "2 cats" `shouldBe` "ni 二 匹 (ひき) / hiki"
        transform "50 cars" `shouldBe` "gojuu 五十 台 (だい) / dai"
