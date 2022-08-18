read*,n
if(n.lt.2)stop
if(n.eq.2)goto 10
do i=2,sqrt(real(n))
    print*,i
    if(mod(n,i).eq.0)goto 7
end do
print*,n,"is a prime"
stop
7 print*,n,"is not a prime"
stop
10 print*,"2 is a prime"
stop
end

