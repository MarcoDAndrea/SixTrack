! start include/kicka05h.f90
#ifndef TILT
  mpe=5
  mx=3
  cxzr=xl
  cxzi=zl
  cxzyr=cxzr**2-cxzi**2
  cxzyi=cxzr*cxzi+cxzi*cxzr
  ab1(3)=(six*ekk)*cxzyr
  ab2(3)=(-six*ekk)*cxzyi
  cxzyrr=cxzyr*cxzr-cxzyi*cxzi
  cxzyi=cxzyr*cxzi+cxzyi*cxzr
  cxzyr=cxzyrr
  qu=(four*ekk)*cxzyr
  qv=(four*ekk)*cxzyi
  ab2(2)=-one*qv
  cxzyrr=cxzyr*cxzr-cxzyi*cxzi
  cxzyi=cxzyr*cxzi+cxzyi*cxzr
  cxzyr=cxzyrr
  dyy1=ekk*cxzyr
  dyy2=(-one*ekk)*cxzyi
  ab1(4)=(four*ekk)*xl
  ab2(4)=((-one*four)*ekk)*zl
  ab1(5)=ekk
#else
  mpe=5
  mx=3
  cxzr=xl
  cxzi=zl
  cxzyr=cxzr**2-cxzi**2
  cxzyi=cxzr*cxzi+cxzi*cxzr
  tiltck=tiltc(k)**2-tilts(k)**2
  tiltsk=(two*tiltc(k))*tilts(k)
  tiltckuk=tiltck*tiltc(k)-tiltsk*tilts(k)
  tiltsk1=tiltck*tilts(k)+tiltsk*tiltc(k)
  tiltck1=tiltckuk
  ab1(3)=(six*ekk)*(tiltck1*cxzyr+tiltsk1*cxzyi)
  ab2(3)=(six*ekk)*(tiltsk1*cxzyr-tiltck1*cxzyi)
  cxzyrr=cxzyr*cxzr-cxzyi*cxzi
  cxzyi=cxzyr*cxzi+cxzyi*cxzr
  cxzyr=cxzyrr
  qu=(four*ekk)*(tiltck*cxzyr+tiltsk*cxzyi)
  qv=(four*ekk)*(tiltck*cxzyi-tiltsk*cxzyr)
  ab1(2)=qu
  ab2(2)=-one*qv
  cxzyrr=cxzyr*cxzr-cxzyi*cxzi
  cxzyi=cxzyr*cxzi+cxzyi*cxzr
  cxzyr=cxzyrr
  dyy1=ekk*(tiltc(k)*cxzyr+tilts(k)*cxzyi)
  dyy2=ekk*(tilts(k)*cxzyr-tiltc(k)*cxzyi)
  tiltckuk=tiltck1*tiltc(k)-tiltsk1*tilts(k)
  tiltsk=tiltck1*tilts(k)+tiltsk1*tiltc(k)
  tiltck=tiltckuk
  ab1(4)=(four*ekk)*(tiltck*xl+tiltsk*zl)
  ab2(4)=(four*ekk)*(tiltsk*xl-tiltck*zl)
  tiltckuk=tiltck*tiltc(k)-tiltsk*tilts(k)
  tiltsk=tiltck*tilts(k)+tiltsk*tiltc(k)
  tiltck=tiltckuk
  ab1(5)=ekk*tiltck
  ab2(5)=ekk*tiltsk
#endif
! end include/kicka05h.f90
