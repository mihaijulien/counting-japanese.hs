module TransformTest (spec) where

import Test.Hspec
import Transform

spec :: Spec
spec = do
  describe "num2words" $ do
    it "takes an integer as input and outputs the string representation of it" $ do
      num2words 1 `shouldBe` "ichi"
      num2words 91 `shouldBe` "kyuujuuichi"