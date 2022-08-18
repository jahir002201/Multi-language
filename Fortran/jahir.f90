dimension n(40)
n(1)=1
n(2)=1
do i=3,40
    n(i)=n(i-2)+n(i-1)
end do
 print 10,n
 10 format(4x,i12)
stop
end
