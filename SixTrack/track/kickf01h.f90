#ifndef TILT
!FOX  Y(1)=Y(1)+EKK ;
#else
!FOX  Y(1)=Y(1)+EKK*TILTC(I) ;
!FOX  Y(2)=Y(2)+EKK*TILTS(I) ;
#endif
