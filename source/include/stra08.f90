! start include/stra08.f90
#ifndef TILT
  strack(i)=smiv(1,i)*c1m18
#else
  strack(i)=smiv(1,i)*c1m18
  strackc(i)=strack(i)*tiltc(i)
  stracks(i)=strack(i)*tilts(i)
#endif
! end include/stra08.f90