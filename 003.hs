#! /usr/bin/env nix-shell
#! nix-shell -p "haskellPackages.ghcWithPackages (_: [])" -i runhaskell

-- | 'Largest Prime Factor'. https://projecteuler.net/problem=3
module Main where

import Data.Function ((&))
import Data.List (nub)

primes :: [Int]
primes = 2 : nub [p | m <- [3, 5 ..], p <- factor m]

factor :: Int -> [Int]
factor = go primes
  where
    go (p : ps) m
      -- `p` must be prime
      | p * p > m = [m]
      -- `p` is a factor
      | m `mod` p == 0 = p : go (p : ps) (m `div` p)
      -- `p` is not a factor
      | otherwise = go ps m

main :: IO ()
main = factor 600851475143 & last & print
