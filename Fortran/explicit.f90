!==implement several functions in one program
program explicit
    implicit none
    real::a=1.0,b=2.0,c=3.0,x=4.0,y=5.0
    integer::n=3,fact
    print*,a+b/c**2
    print*,x**4/fact(4)
    print*,exp(x+y)-sin(x+n*y)
    print*,cos(log(x)+log10(x+3*b))
    print*,sqrt(a**2+b**2)
    print*,1/abs(a**2*b)+c
    print*,acos(x)+atan(x)
    print*,(x/y)**(n+1)
    print*,sqrt(a**2/(b+c))
    print*,sinh(x-2*y)+exp(x*y)-abs(x**2-y**2)
    stop
end program explicit
!==function subprogram===
   function fact(i)
    integer::i,fact,k
    fact=1
    do k=1,i
        fact=fact*k
    end do
    return
   end function fact
