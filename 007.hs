#! /usr/bin/env nix-shell
#! nix-shell -p "haskellPackages.ghcWithPackages (p: with p; [data-ordlist])" -i runhaskell

-- | '10001st Prime'. https://projecteuler.net/problem=7
module Main where

import Data.List.Ordered (minus, unionAll)

primes :: [Int]
primes = 2 : 3 : minus [5, 7 ..] (unionAll [[p * p, p * p + 2 * p ..] | p <- tail primes])

main :: IO ()
main = print (primes !! 10000)
