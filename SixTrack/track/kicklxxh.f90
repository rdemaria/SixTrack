#ifndef TILT
dyy1=ekk*crkve
dyy2=-ekk*cikve
#else
dyy1=ekk*(tiltc(k)*crkve+tilts(k)*cikve)
dyy2=ekk*(tilts(k)*crkve-tiltc(k)*cikve)                         !hr02
#endif
