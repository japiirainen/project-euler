#! /usr/bin/env nix-shell
#! nix-shell -p "haskellPackages.ghcWithPackages (_: [])" -i runhaskell

{-# LANGUAGE BlockArguments #-}

-- | 'Special Pythagorean Triplet'. https://projecteuler.net/problem=9
module Main where

import Control.Monad (guard)

main :: IO ()
main = (print . head) do
  a <- [1 .. 500]
  b <- [1 .. 500]
  guard (a ^ 2 + b ^ 2 == (1000 - a - b) * (1000 - a - b))
  [a * b * (1000 - a - b)]
