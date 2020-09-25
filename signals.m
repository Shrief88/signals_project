% initializing variables
fs = 10000;
ts = 1/fs;
t = -1 : ts : 1-ts ; 
f1 = 400;
f2 = 800;
f3 = 1200;
f4 = 1600;
f5 = 2000;
x = cos(2*pi*f1.*t) + sin(2*pi*f2.*t) + cos(2*pi*f3.*t)+ sin(2*pi*f4.*t) + cos(2*pi*f5.*t);
n = length(x);


%% plot the function 
figure;
plot(t,x);
xlabel('time (in seconds)');
ylabel('Function Amplitude');
title('Signal versus Time');

%% store in audio file (.wav)
z1 = x / ( max(x) - min(x) )
load handel.mat;
filename = 'x(t).wav';
audiowrite(filename,z1,fs);

%% calculate Energy
[~,locs]=findpeaks(x);
T = mean( diff(locs)*0.001);
fun = @(t) abs(cos(2*pi*f1.*t) + sin(2*pi*f2.*t) + cos(2*pi*f3.*t)+ sin(2*pi*f4.*t) + cos(2*pi*f5.*t)).^2;
P = integral(fun,0,T);
P = P/T;
E1 = P*(n/fs);

%% Compute the frequency spectrum x(t)
fftSignal = fftshift(fft(x));

%% Plot the magnitude of x(f) in the frequency range -fs/2 < fs < fs/2,
f= -fs/2 : fs/n : (fs/2)-(fs/n);
figure;
plot(f, abs(fftSignal)/n);
title('magnitude of x(t)');
xlabel('Frequency (Hz)');
ylabel('magnitude');

%% Compute the Energy of the signal x(t) from its frequency spectrum x(f)
pow = (abs(fftSignal).^2)/n;
pow = sum(pow);
pow = (pow/n);
E2 = pow *2;

%% Design a Butterworth low-pass filter 
fc = 1250;
[b,a] = butter(20,fc/(fs/2));

%% Plot the magnitude and phase response of the Butterworth LPF
figure;
freqz(b,a)

%%  Apply the signal x(t) to Butterworth LPF
y1 = filter(b,a,x);

%% audio file
z2 = y1 / ( max(y1) - min(y1) )
load handel.mat
filename = 'y(t).wav';
audiowrite(filename,z2,fs);

%% Plot the signal y(t)
figure;
plot(t,y1);
xlabel('time (in seconds)');
ylabel('Function Amplitude');
title('Signal versus Time');

%% Compute the frequency spectrum y(f) of signal.
fftSignal2 = fftshift(fft(y1));

%% Plot the magnitude of y(f) in the frequency range -fs/2 < fs < fs/2,

f = (-n/2:n/2-1)*(fs/n);
figure;
plot(f, abs(fftSignal2)/n);
title('magnitude of y(f)');
xlabel('Frequency (Hz)');
ylabel('magnitude');
%% 



