zubtract:: [Int]->[Int]
zubtract (a:b:[])|b>=45        =(a:(b-45):[])
                 |b<=44 && a==0=(23:(60+(b-45)):[])
                 |otherwise   =((a-1):(60+(b-45)):[])

wordstoint::[String]->[Int]
wordstoint =map read 

main=do
  as<-getLine
  let bs=zubtract (wordstoint (words as))
      cs=(show(bs!!0))++" "++(show(bs!!1))
--unwords . map show
  putStrLn cs

