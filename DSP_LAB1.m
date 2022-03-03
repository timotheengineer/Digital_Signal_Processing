clear;
b=[.1432,.4296,.4296,.1432];%coefficients of numerator
a=[1,-.1801,.3419,-.0165];   %coefficients of the denom

figure(1);
zplane(b,a) %pole-zero plot

%finding the magnitude
[H,w]=freqz(b,a,'whole',256);
phaH=angle(H);
magH=abs(H);
figure(2)
freqz(b,a,w,256)