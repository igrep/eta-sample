{-# LANGUAGE DataKinds #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE OverloadedStrings #-}

module Main where

import Java

main :: IO ()
main = putStrLn "test"


foreign export java "@static com.example.blah.Foo.foo"
  foo :: Char -> Java a ()

foo :: Char -> Java a ()
foo _ = return ()


foreign export java "@static com.example.baz.Bar.bar"
  bar :: Int -> Java a ()

bar :: Int -> Java a ()
bar _ = return ()
