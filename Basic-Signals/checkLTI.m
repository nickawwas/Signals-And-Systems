% Nicholas Kawwas (40124338)
% ELEC 342 UK-X Lab 2 - Question 2b
% Determines Whether the System is LTI (Linear Time Invariant)

clc;
clear all;
close all;
 
n=0:10;
x1=sin((2*pi/10)*n);
x2=sin((2*pi/10)*n);
x3=x1+x2;
 
y1=x1.^2;
y2=x2.^2;
y3=y1+y2;
y4=x3.^2;
 
disp('Part 1')
if (y4 == y3)
    disp('Linear!')
else
    disp('Not Linear!')
end
 
x1s=sin((2*pi/10)*(2));
y1s=x1s.^2;
 
if (y1s == y1(2))
    disp('Time Invariant!')
else
    disp('Not Time Invariant!')
end
 
d1 = dirac(n);
d2 = dirac(n);
d3 = d1+d2;
y5=2*x1 + 5*d1;
y6=2*x2 + 5*d2;
y7=y5+y6;
y8=2*x3 + 5*d3;
 
disp('Part 2')
if (y8 == y7)
    disp('Linear!')
else
    disp('Not Linear!')
end
 
d1s=dirac(2);
y1s=2*x1s + 5*d1s;
 
if (y1s == y5(2))
    disp('Time Invariant!')
else
    disp('Not Time Invariant!')
end
 
function out=dirac(inp)
for i=1:length(inp)
    if(inp(i) == 0)
        out(i) = 1;
    else
        out(i) = 0;
    end
end
end
