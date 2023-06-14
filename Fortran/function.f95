! fx=1.0-x**2, fx=1.0+2.0*x, fx=3.0+1.0/x

    print*,'x  f(x)'
    x=-10.0
    do while(x.le.10.0)
    if(x.lt.0.0) fx=1.0-x**2
    if((x.ge.0.0).and.(x.lt.1.0)) fx=1.0+2.0*x
    if(x.ge.1.0) fx=3.0+1.0/x
    print 10,x,fx
10  format(f7.2,f7.2)
    x=x+0.5
    end do
    stop
    end    