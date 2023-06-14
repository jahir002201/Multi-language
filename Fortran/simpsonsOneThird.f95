! simpson's one third rule

    parameter (pi=3.14159)
    f(x)=1.0/(1.0+x**2)
    a=0.0
    b=pi/4.0
    print*, 'Enter the number of strips n=2m '
    read*, n
    h=(b-a)/real(n)
    sum1=h*(f(a)+f(b))/3.0
    do 15 i=1,n-1,2
        sum=sum+4.0*h*f(a+real(i)*h)/3.0
15  continue
    do 25 j=2,n-2,2
        sum=sum+2.0*h*f(a+real(j)*h)/3.0
25  continue
    print*, 'The value of integration = ', sum
    stop
    end