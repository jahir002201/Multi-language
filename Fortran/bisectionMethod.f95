! bisection method

   program bisection
   f(x)=exp(-x)-x
   tol=0.0001
   print*,"Enter x0 and xn"
10 read(5,*) x0,xn
20 if(f(x0)*f(xn).lt.0) then
   c=(x0+xn)/2.0
   else
   write(6,*) "change for another x0 & xn"
   goto 10
   end if 
   if(f(x0)*f(c).lt.0) then
   xn=c
   else
   x0=c
   end if
   if(abs(xn-x0).gt.tol) goto 20
   write(*,*) "the root is= ",c
   end program bisection