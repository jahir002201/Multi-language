! Gauss Seidel method

   parameter (n=20)
   y=0.0
   z=0.0
   do i=1,n
        x=(3*y-2.0*z+20.0)/8.0
        y=(-4.0*x+z+33.0)/11.0
        z=(-6.0*x-3.0*y+35.0)/12.0
    end do
    print 10, x,y,z
10  format('The solution by Gauss Seidel method is ','x= ',f8.4,' y= ',f8.4,' z= ',f8.4)
    stop
    end        