{-
check13:: Int->Int
check13 a=a!!xs
  where xs=[x|x<-[1..], not13 (show x)]
-}
net13:: String->Bool
net13 x|x=="13"          =False
       |x==[a]++"13"     =False
       |x==as++"13"      =False
       |x==[a]++"13"++[a]=False
       |x==[a]++"13"++as =False
       |x==as++"13"++[a] =False
       |x==as++"13"++as  =False
       |x=="13"++[a]     =False
       |x=="13"++as      =False
       |otherwise        =True

--skapa alla delsekvenser med längd 2
tvåsekvensa::Int->[(Int,Int)]
tvåsekvensa x|isDigit as=[]
             |otherwise =(b,c)++tvåsekvensa d
    where as==show x
          b==read (head as)
          c==read (2!!as)
          d==read (drop 2 as) 
--possibly incorrect indentation or mismatched brackets, line 23
