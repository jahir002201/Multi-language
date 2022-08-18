!==Program to evaluate piecewise function
PROGRAM piecewise
    REAL X,FX
    PRINT*,"X FX"
    X=-10.0
!==main loop of the program===
  15 IF(X.LT.0.0)THEN
  FX=1.0-X**2
     END IF
     IF((X.GE.0.0).AND.(X.LT.1.0))THEN
        FX=1.0+2.0*X
     END IF
     IF(X.GT.1.0)THEN
        FX=3.0+1.0/X
     END IF
     WRITE(6,20)X,FX
     X=X+0.5
     IF(X.LE.10.0)GOTO 15
   20 FORMAT(3X,2F10.3)
END PROGRAM piecewise
