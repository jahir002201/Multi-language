! pi^2/6=1+1/2^2+....+1/n^2

sun=0.0
do i=1,1000
   sun=sun+1.0/float(i**2)
end do
pi=sqrt(6.0*sun)
print*,'pi=',pi
stop
end