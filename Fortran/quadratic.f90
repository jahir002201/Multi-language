    program quadratic_eq
        implicit none
        real::a,b,c,d,root1,root2,delta,realPart,imagPart
        print*,"Enter coefficients a,b and c: "
        read*,a,b,c
        delta=b**2-4*a*c

        if(delta.gt.0)then
            d=sqrt(delta)
            root1=(-b/(2*a))+(d/(2*a))
            root2=(-b/(2*a))-(d/(2*a))

            print*,"Root1=",root1,"Root2=",root2
        else if(delta.eq.0)then
            root1=(-b/(2*a))
            print*,"Root1=Root2=",root1
        else
            realPart=-b/(2*a)
            imagPart=sqrt(-delta)/(2*a)

            print*,"Root1=",realPart,"+i",imagPart
            print*,"Root2=",realPart,"-i",imagPart
        end if
    end program



