#ifndef TILT
  mpe=6
  mx=4
  cxzr=xl
  cxzi=zl
  cxzyr=cxzr**2-cxzi**2                                            !hr08
  cxzyi=cxzr*cxzi+cxzi*cxzr
  ab1(4)=(c1e1*ekk)*cxzyi                                          !hr02
  ab2(4)=(c1e1*ekk)*cxzyr                                          !hr02
  cxzyrr=cxzyr*cxzr-cxzyi*cxzi
  cxzyi=cxzyr*cxzi+cxzyi*cxzr
  cxzyr=cxzyrr
  ab1(3)=(c1e1*ekk)*cxzyi                                          !hr02
  ab2(3)=(c1e1*ekk)*cxzyr                                          !hr02
  cxzyrr=cxzyr*cxzr-cxzyi*cxzi
  cxzyi=cxzyr*cxzi+cxzyi*cxzr
  cxzyr=cxzyrr
  qu=(five*ekk)*cxzyi                                               !hr02
  qv=(-five*ekk)*cxzyr                                              !hr02
  ab2(2)=-one*qv                                                   !hr02
  cxzyrr=cxzyr*cxzr-cxzyi*cxzi
  cxzyi=cxzyr*cxzi+cxzyi*cxzr
  cxzyr=cxzyrr
  dyy1=ekk*cxzyi
  dyy2=ekk*cxzyr
  ab1(5)=(five*ekk)*zl                                              !hr02
  ab2(5)=(five*ekk)*xl                                              !hr02
  ab2(6)=ekk
#else
  mpe=6
  mx=4
  cxzr=xl
  cxzi=zl
  cxzyr=cxzr**2-cxzi**2                                            !hr08
  cxzyi=cxzr*cxzi+cxzi*cxzr
  tiltck=tiltc(k)**2-tilts(k)**2                                   !hr08
  tiltsk=(two*tiltc(k))*tilts(k)                                   !hr02
  tiltckuk=tiltck*tiltc(k)-tiltsk*tilts(k)
  tiltsk1=tiltck*tilts(k)+tiltsk*tiltc(k)
  tiltck1=tiltckuk
  tiltckuk=tiltck1*tiltc(k)-tiltsk1*tilts(k)
  tiltsk2=tiltck1*tilts(k)+tiltsk1*tiltc(k)
  tiltck2=tiltckuk
  ab1(4)=(c1e1*ekk)*(tiltck2*cxzyi-tiltsk2*cxzyr)                  !hr02
  ab2(4)=(c1e1*ekk)*(tiltck2*cxzyr+tiltsk2*cxzyi)                  !hr02
  cxzyrr=cxzyr*cxzr-cxzyi*cxzi
  cxzyi=cxzyr*cxzi+cxzyi*cxzr
  cxzyr=cxzyrr
  ab1(3)=(c1e1*ekk)*(tiltck1*cxzyi-tiltsk1*cxzyr)                  !hr02
  ab2(3)=(c1e1*ekk)*(tiltck1*cxzyr+tiltsk1*cxzyi)                  !hr02
  cxzyrr=cxzyr*cxzr-cxzyi*cxzi
  cxzyi=cxzyr*cxzi+cxzyi*cxzr
  cxzyr=cxzyrr
  qu=(five*ekk)*(tiltck*cxzyi-tiltsk*cxzyr)                         !hr02
  qv=(-five*ekk)*(tiltck*cxzyr+tiltsk*cxzyi)                        !hr02
  ab1(2)=qu
  ab2(2)=-one*qv                                                   !hr02
  cxzyrr=cxzyr*cxzr-cxzyi*cxzi
  cxzyi=cxzyr*cxzi+cxzyi*cxzr
  cxzyr=cxzyrr
  dyy1=ekk*(tiltc(k)*cxzyi-tilts(k)*cxzyr)
  dyy2=ekk*(tiltc(k)*cxzyr+tilts(k)*cxzyi)
  tiltckuk=tiltck2*tiltc(k)-tiltsk2*tilts(k)
  tiltsk=tiltck2*tilts(k)+tiltsk2*tiltc(k)
  tiltck=tiltckuk
  ab1(5)=(five*ekk)*(tiltck*zl-tiltsk*xl)                           !hr02
  ab2(5)=(five*ekk)*(tiltck*xl+tiltsk*zl)                           !hr02
  tiltckuk=tiltck*tiltc(k)-tiltsk*tilts(k)
  tiltsk=tiltck*tilts(k)+tiltsk*tiltc(k)
  tiltck=tiltckuk
  ab1(6)=ekk*tiltsk
  ab2(6)=ekk*tiltck
#endif
