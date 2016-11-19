import Data.Complex
type C=Complex Double
newton::(C->C)->(C->C)->C->C
newton f f' z=z-(f z)/(f' z)

i::C
i=0:+1

--to get fig 18.4a
fig184a::C->C
fig184a  z=z^2+1

fig184a'::C->C
fig184a' z=2*z

a=newton fig184a fig184a'

testa= take 5.iterate a

--to get 18.4b
fig184b::C->C
fig184b  z=z^3-1

fig184b'::C->C
fig184b' z=3*z^2

b=newton fig184b fig184b'

testb= take 5.iterate b

--myiterate::(a->a)->(a->a)
--myiterate f=f.f

--It doesn't work and I do not know why... 'Not in scope'
