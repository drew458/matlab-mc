% x(1): y 
% x(2): theta
% x(3): y dot 
% x(4): theta dot


%...................................
M=45000;  % peso in Kg 
Ine=1/12*M*(9^2+50^2); % inerzia in Kg*m^2
L=20;    % distanza baricentro-ugello
L2=30;  % distanza baricento punta
Nos=13.72 % altezza nosecone
g=9.8;  % accelerazione di gravità
D=M*g/66; % attrito necesario a cadere al massimo a 237 Km/h
Specific_Inpulse=334; % Impulso specifico
Flow_Rate=931.2; % sea level
Fmax=(Flow_Rate*Specific_Inpulse)*3; % 3 raptors
D2=M*g/100; % attrito quando verticale
dalpha=L2-10; % distanza alettone superiore dal baricentro 
dbeta=L-3.5; % distanza alettione inferiore dal baricentro
d=5;    % distanza dfal baricentro dell'asse del pendolo
l=4;    % lunghezza del pendolo
m=1000; % massa del pendolo
Dpsi=2500; % smorzamento pendolo
%...................................


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% sistema linearizzato sulla verticale a velocità nulla di discesa: f=Mg

f=M*g;

%D= g/100; % attrito necesario a cadere al massimo a 350 Km/h

A=[0    0       1   0
   0    0       0   1
   0   -f/M     -D2/M   0
   0    0       0   0];
   
   
   
B=[ 0
    0
    -f/M
    -L/Ine*f];

    
Co = ctrb(A,B);
uncontrollable = length(A) - rank(Co)
    

K=-acker(A,B,[-2 -1 -1 -1]*0.4)








    
   