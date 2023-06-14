! 0,1,1,2,3,5,.......

    dimension a(40)
    a(1) = 0
    a(2) = 1
    do i = 3, 40
        a(i) = a(i-1) + a(i-2)
    end do
    print 10, a
10  format (5f12.0)
    stop
    end