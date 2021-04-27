
figure(1)
clf
axis([-10   10  0 30]);

hold on

x=zeros(10);
y=zeros(10);

for i=1:10
    [x(i),y(i)]=ginput(1);
    plot(x(i),y(i),'r*');
end


P=polyfit(x,y,8);

base=[-10:0.1:10];

val=polyval(P,base);


% plot dei punti e del polinomio interpolante


h2=plot(base,val,'b');

hold off


