#! /usr/bin/env nix-shell
#! nix-shell -p "haskellPackages.ghcWithPackages (_: [])" -i runhaskell

{-# LANGUAGE BlockArguments #-}

-- | 'Largest Palindrome Product'. https://projecteuler.net/problem=4
module Main where

import Control.Monad (guard)

main :: IO ()
main = print $ maximum do
  a <- [100 .. 999]
  b <- [100 .. 999]
  guard (show (a * b) == reverse (show (a * b)))
  pure (a * b)
