! 1 => 500 prime number 2,3,5,7,......499 

    integer primeQ, p(500)
    i=0
    do n=2,500
       if(primeQ(n).eq.1) then
          i=i+1
          p(i)=n
       end if
    end do
    print 20, (p(j),j=1,i)
20  format(500i5)
    stop 
    end

    function primeQ(n)
    integer primeQ
    primeQ=0
    do i=2,n/2
       if(mod(n,i).eq.0) goto 10
    end do
    primeQ=1
    return
10  primeQ=0
    return
    end       