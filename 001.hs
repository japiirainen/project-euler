#! /usr/bin/env nix-shell
#! nix-shell -p "haskellPackages.ghcWithPackages (_: [])" -i runhaskell

-- | 'Multiples of 3 or 5'. https://projecteuler.net/problem=1
module Main where

import Data.Function ((&))
import Data.List (union)

main :: IO ()
main =
  union [5, 10 .. 1000] [3, 6 .. 1000]
    & sum
    & print
