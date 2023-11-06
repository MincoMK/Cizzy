module Main where

import Data.Ratio
import qualified MyLib (someFunc)

fn a = do
	let d = 1 % a^2
	putStrLn $ "1 / " ++ show a ++ " = " ++ show d
	if a < 1000000 then fn (a * 10 + 9) else return ()

main :: IO ()
main = do
	fn 9
	MyLib.someFunc
