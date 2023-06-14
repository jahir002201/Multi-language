! simpson's three eight rule 

    f(x)=1.0/(1.0+x**2)
    a=0.0
    b=1.0
    print*, 'Enter the number of strips n=3m'
    read*, n
    h=(b-a)/real(n)
    sum=3.0*h*(f(a)+f(b))/8.0
    do 15 i=1,n-1
       if(i/3*3.eq.i) then
          sum=sum+2.0*h*f(a+real(i)*h)/4.0
       else
          sum=sum+3.0*h*f(a+real(i)*h)/8.0
       end if
15  continue
    print*, 'The value of integration = ', sum
    stop
    end