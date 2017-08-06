-- pairs.hs
module Pairs where
pairs :: String -> [[Char]]
pairs inputstr = 
    if length inputstr <= 2
        then 
            if length inputstr == 1
                then [inputstr ++ "_"]
            else 
                [inputstr]
    else
        [take 2 inputstr] ++ (pairs $ drop 2 inputstr)