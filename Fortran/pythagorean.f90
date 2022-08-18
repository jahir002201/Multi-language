program pythagorean
integer a,b,c
print*,"  a b c"
do 15 a=1,24
do b=a,25
d=sqrt(real(a**2+b**2))
c=int(d)
if(a**2+b**2.eq.c**2)then
print*,a,b,c
end if
end do
15 continue
stop
end program
