# signals_project

This project for Faculty of Engineering, Ain Shams University at my 2nd Electrical year, It is required to develop a program to implement basic signal processing functions using Matlab : 
1. Generate the signal 𝑥(𝑡) defined as follows:
𝑥(𝑡)=cos(2𝜋𝑓1𝑡)+sin(2𝜋𝑓2𝑡)+cos(2𝜋𝑓3𝑡)+sin(2𝜋𝑓4𝑡)+cos(2𝜋𝑓5𝑡) where 𝑓1=400 𝐻𝑧,𝑓2=800 𝐻𝑧,𝑓3=1200 𝐻𝑧,𝑓4=1600 𝐻𝑧,and 𝑓5=2000 𝐻𝑧.
2. Store the generated signal 𝑥(𝑡) as an audio file with extension (*.wav).
3. Plot the signal 𝑥(𝑡) versus time t from -1 to 1 s with appropriate sampling period.
4. Compute the energy of the signal 𝑥(𝑡).
5. Compute the frequency spectrum 𝑥(𝑡) of this signal.
6. Plot the magnitude of 𝑋(𝑓) in the frequency range −𝑓𝑠/2≤𝑓≤𝑓𝑠/2, where 𝑓𝑠 is the sampling frequency.
7. Compute the Energy of the signal 𝑥(𝑡) from its frequency spectrum 𝑋(𝑓), and hence you can verify Parseval's theorem.
8. Design a Butterworth low-pass filter with filter order 20 and cut-off frequency of 1.25 kHz.
9. Plot the magnitude and phase response of the Butterworth LPF you've designed.
10. Apply the signal 𝑥(𝑡) to this Butterworth LPF and let's denote the output signal as 𝑦(𝑡).
11. Store the generated signal 𝑦(𝑡) as an audio file with extension (*.wav).
12. Plot the signal 𝑦(𝑡) versus time t from -1 to 1 s with appropriate sampling period.
13. Compute the frequency spectrum 𝑌(𝑓) of this signal.
14. Plot the magnitude of 𝑌(𝑓) in the frequency range −𝑓𝑠/2≤𝑓≤𝑓𝑠/2.
15. Verify steps 4, 5, 6, 7, 9, 13, and 14 by equations and hand analysis.

# General Constraints:
take fs = 10000 and ts = 1/fs so => t = -1 : ts : 1-ts.  
Useful Matlab / GNU-Octave Commands:
1. freqz
2. filter
3. butter
4. fft, fftshift
5. audioread, audiowrite
