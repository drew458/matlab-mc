function hg=tri_plot(tx,ty,theta,color)

A0=[3  0  1]';
B0=[0  1  1]';
C0=[0 -1  1]';

R=[cos(theta) -sin(theta) tx
   sin(theta)  cos(theta) ty
    0           0         1];

% Robot rototraslato
 A=R*A0;
 B=R*B0;
 C=R*C0;
 
 h=line([A(1) B(1) C(1) A(1)],[A(2) B(2) C(2) A(2)]);
 h.Color=color;
 
 hg=hggroup();
 set(h,'Parent',hg);
 
 
 
 
 
 
 