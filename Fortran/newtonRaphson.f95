! Newton Raphson Method

    program newton_raphson
    f(x)=cos(x)-x*exp(x)
    df(x)=-sin(x)-exp(x)-x*exp(x)
    tol=0.00001
    print*, "Enter x0"
10  read(5,*) x0
    n=1
    print*, ' n   x '
20  a=f(x0)
    if(a.eq.0.0) goto 40
    b=df(x0)
    if(b.eq.0.0) goto 10
    write(6,30) n,x0
30  format(3x,i3,2x,f10.4)
    x1=x0-a/b
    if(abs(x1-x0).lt.tol) goto 40
    n=n+1
    x0=x1
    goto 20
40  write(6,30) x0
50  format(3x,'The solution x=',f10.4)
    end program newton_raphson                