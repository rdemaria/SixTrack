#ifndef TILT
!FOX  Y(1)=Y(1)+BBI(I,1)*MTCDA/(ONE+DPDA) ;
!FOX  Y(2)=Y(2)+AAI(I,1)*MTCDA/(ONE+DPDA) ;
#else
!FOX  Y(1)=Y(1)+(TILTC(I)*BBI(I,1)-TILTS(I)*AAI(I,1))*MTCDA/(ONE+DPDA) ;
!FOX  Y(2)=Y(2)+(TILTC(I)*AAI(I,1)+TILTS(I)*BBI(I,1))*MTCDA/(ONE+DPDA) ;
#endif
