import Data.Char
main=do
  n<-readLn
  print $ check13 n
  
check13:: Int->Int
check13 a=xs!!(a-1)
  where xs=[x|x<-[1..], not13 x]

{-net13:: String->Bool
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
-}
--skapa alla delsekvenser med längd 2
tvåsekvensa::Int->[(Int,Int)]
tvåsekvensa x|length as==1 && isDigit (head as)=[]
             |otherwise =(b,c):tvåsekvensa d
    where as=show x
          b=read [head as]
          c=read [as!!1]
          d=read (drop 1 as)

not13::Int->Bool
not13 x=not $ any is13 ts
  where ts=tvåsekvensa x

is13::(Int,Int)->Bool
is13 = (==(1,3))
--possibly incorrect indentation or mismatched brackets, line 23
