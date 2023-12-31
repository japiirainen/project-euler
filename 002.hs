#! /usr/bin/env nix-shell
#! nix-shell -p "haskellPackages.ghcWithPackages (_: [])" -i runhaskell

-- | 'Even Fibbonacci Numbers'. https://projecteuler.net/problem=2
module Main where

import Data.Function ((&))
import Data.List (takeWhile)

fibs :: (Num a) => [a]
fibs = 1 : 2 : zipWith (+) fibs (tail fibs)

main :: IO ()
main = fibs & sum . filter even . takeWhile (<= 4_000_000) & print
