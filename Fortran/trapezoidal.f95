! trapezoidal 

program trapezoidal
real::a,b
integer::n

f(x)=1.0/(1.0+x**2)
write(*,*) 'Enter the lower limit, upper limit and the number of intervals'
read(*,*)a,b,n
h=(b-a)/float(n)
s=f(a)+f(b)
do i=1,n-1
   s=s+2.0*f(a+float(i)*h)
end do
trap=s*h/2.0
write(*,*) 'The integer value is = ',trap
end program trapezoidal