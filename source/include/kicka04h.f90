! start include/kicka04h.f90
#ifndef TILT
  mpe=4
  mx=2
  cxzr=xl
  cxzi=zl
  cxzyr=cxzr**2-cxzi**2
  cxzyi=cxzr*cxzi+cxzi*cxzr
  qu=(three*ekk)*cxzyr
  qv=(three*ekk)*cxzyi
  ab2(2)=-one*qv
  cxzyrr=cxzyr*cxzr-cxzyi*cxzi
  cxzyi=cxzyr*cxzi+cxzyi*cxzr
  cxzyr=cxzyrr
  dyy1=ekk*cxzyr
  dyy2=(-one*ekk)*cxzyi
  ab1(3)=(three*ekk)*xl
  ab2(3)=((-one*three)*ekk)*zl
  ab1(4)=ekk
#else
  mpe=4
  mx=2
  cxzr=xl
  cxzi=zl
  cxzyr=cxzr**2-cxzi**2
  cxzyi=cxzr*cxzi+cxzi*cxzr
  tiltck=tiltc(k)**2-tilts(k)**2
  tiltsk=(two*tiltc(k))*tilts(k)
  qu=(three*ekk)*(tiltck*cxzyr+tiltsk*cxzyi)
  qv=(three*ekk)*(tiltck*cxzyi-tiltsk*cxzyr)
  ab1(2)=qu
  ab2(2)=-one*qv
  cxzyrr=cxzyr*cxzr-cxzyi*cxzi
  cxzyi=cxzyr*cxzi+cxzyi*cxzr
  cxzyr=cxzyrr
  dyy1=ekk*(tiltc(k)*cxzyr+tilts(k)*cxzyi)
  dyy2=ekk*(tilts(k)*cxzyr-tiltc(k)*cxzyi)
  tiltckuk=tiltck*tiltc(k)-tiltsk*tilts(k)
  tiltsk=tiltck*tilts(k)+tiltsk*tiltc(k)
  tiltck=tiltckuk
  ab1(3)=(three*ekk)*(tiltck*xl+tiltsk*zl)
  ab2(3)=(three*ekk)*(tiltsk*xl-tiltck*zl)
  tiltckuk=tiltck*tiltc(k)-tiltsk*tilts(k)
  tiltsk=tiltck*tilts(k)+tiltsk*tiltc(k)
  tiltck=tiltckuk
  ab1(4)=ekk*tiltck
  ab2(4)=ekk*tiltsk
#endif
! end include/kicka04h.f90
