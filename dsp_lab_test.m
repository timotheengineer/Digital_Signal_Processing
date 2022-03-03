clear;
fs = 256;                       %sampling frequency                 %defining the z domain
b=[.1432,.4296,.4296,.1432];    %coefficients of numerator
a=[1,-.1801,.3419,-.0165];       %coeffcients of denom

%% (i).Using MATLAB, obtain the pole-zero plot of H(z)
%H=filt(b,a);
figure(1);
zplane(b,a);
title('Pole-zero plot');

%% ii.Give the Magnitude and Phase response of H(z)
figure(2)
[H,f] = freqz(b,a,1000,fs);%determines the magnitude and phase response
freqz(b,a,1000,fs);
title('Magnitude response')
figure(3);
plot(f,abs(H));
grid on;
title('Magnitude response');
xlabel('frequency(Hz)');
ylabel('absolute magnitude');
%Normalized frequency at 100 Hz: 100/128 × pi rad/sample

%% iii.truncated to three places after the decimal point
clf;
b1=[.143,.429,.429,.143];
a1=[1,-.180,.341,-.016];
figure(2)
[H1,f] = freqz(b1,a1,1000,fs);
freqz(b1,a1,1000,fs);
title('Magnitude response')
figure(3);
plot(f,abs(H1));
grid on;
title('Magnitude response');
xlabel('frequency(Hz)');
ylabel('absolute magnitude');

%% iv.
clf;
clear;
fs = 256;  
b2=[.143,.42,.42,.14];
a2=[1,-.18,.34,-.01];
figure(2)
[H2,f] = freqz(b2,a2,1000,fs);
freqz(b2,a2,1000,fs);
title('Magnitude response')
figure(3);
plot(f,abs(H2));
grid on;
title('Magnitude response');
xlabel('frequency(Hz)');
ylabel('absolute magnitude');


