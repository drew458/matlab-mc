
figure(1)
clf
axis([-10   10  0 30]);

hold on

[x,y]=ginput(10);

P=polyfit(x,y,5);

base=[-10:0.1:10];

val=polyval(P,base);


% plot dei punti e del polinomio interpolante

h1=plot(x,y,'*');
h2=plot(base,val);

hold off


