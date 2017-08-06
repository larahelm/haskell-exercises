-- Pairs.hs
module Pairs where
pairs :: String -> [[Char]]
pairs s = 
    if length s <= 2
        then 
            if length s == 1
                then [s ++ "_"]
            else 
                [s]
    else
        [take 2 s] ++ (pairs $ drop 2 s)
