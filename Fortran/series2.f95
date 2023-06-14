! 1+1/2+1/3!+......+1/n! =?

parameter (n=10)
sum=0.0
do i=1,n
    sum=sum+1.0/factorial(i)
end do
print*,'sum=',sum
stop
end

function factorial(n)
factorial=1.0
do i=1,n
    factorial=factorial*i
end do
return
end