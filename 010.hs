#! /usr/bin/env nix-shell
#! nix-shell -p "haskellPackages.ghcWithPackages (p: with p; [data-ordlist])" -i runhaskell
{-# LANGUAGE BlockArguments #-}

-- | 'Summation Of Primes'. https://projecteuler.net/problem=10
module Main where

import Data.List.Ordered (minus, unionAll)

primes :: [Integer]
primes = 2 : 3 : minus [5, 7 ..] (unionAll [[p ^ 2, p ^ 2 + 2 * p ..] | p <- tail primes])

main :: IO ()
main = print ((sum . takeWhile (<= 2_000_000)) primes)
