% parametri del robot
a1=1;
a2=1;


figure(1)
clf
hold on
axis equal

pw(1)=-a1;
pw(2)=a1;

for i=1:100

% inizializzazione
theta=zeros(2,1);


% calcolo theta2
c2=(pw(1)^2+pw(2)^2-a1^2-a2^2)/(2*a1*a2);
theta(2)=acos(c2);

% calcolo theta1
alpha= atan2(pw(2),pw(1));
a=(pw(1)^2+pw(2)^2+a1^2-a2^2)/(2*a1*sqrt(pw(1)^2+pw(2)^2));
beta=acos(a);
theta(1)=alpha-beta;

figure(1)
h=plot(pw(1),pw(2),'b*');

% calcolo posozione dei link
x1=a1*cos(theta(1));
y1=a1*sin(theta(1));

x2=x1+a2*cos(theta(1)+theta(2));
y2=y1+a2*sin(theta(1)+theta(2));

h2=line([0 x1 x2],[0 y1 y2]);


pw(1)=pw(1)+0.03;
pw(2)=pw(2)-0.015;


theta'

end

