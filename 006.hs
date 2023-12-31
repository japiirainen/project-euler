#! /usr/bin/env nix-shell
#! nix-shell -p "haskellPackages.ghcWithPackages (_: [])" -i runhaskell

-- | 'Sum Square Difference'. https://projecteuler.net/problem=6
module Main where

main :: IO ()
main = print (sumSquared - sumOfSquares)
  where
    n = 100
    sumSquared = let s = (n * (n + 1)) `div` 2 in s * s
    sumOfSquares = (n * (n + 1) * (2 * n + 1)) `div` 6
