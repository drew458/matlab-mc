x=0;
y=0;
theta=0;

figure(1)
clf
hold on
axis([0 15 -3 3]);
%axis equal

p=tri_plot(x,y,theta,[0 0 1]);



for i=1:1000
    x=x+0.025;
    y=sin(x);
    theta=cos(x);
    delete(p);
    p=tri_plot(x,y,theta,[0 1 0]);
    plot(x,y,'r.')
    drawnow
    %pause(0.005)
end
