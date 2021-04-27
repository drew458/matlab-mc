tic;
x=[-10:0.1:10];y=x;

n=length(x);

for i=1:n
    for j=1:n
        z(i,j)=-(x(i)^2+y(j)^2);
    end
end

figure(2),mesh(x,y,z)

colormap default

b=toc;
fprintf('Tempo di esecuzione %f secondi \n',b )
   