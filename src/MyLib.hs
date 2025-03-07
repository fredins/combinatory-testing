{-# LANGUAGE UnicodeSyntax #-}
{-# OPTIONS_GHC -Wno-unused-binds -Wno-unused-imports #-}

module MyLib (someFunc) where

import GHC.TypeLits (Nat, type (+))
import Data.Kind (Type)
import Data.List (List)
import Test.QuickCheck (Gen, Arbitrary(arbitrary, shrink))

data Tree a = Leaf | Node (Tree a) a (Tree a)

sizedTree ∷ Int → Tree a
sizedTree n 
  | n <= 0    = error "Size of tree ≤ 0"
  | otherwise = undefined

someFunc ∷ IO ()
someFunc = putStrLn "someFunc"
