# Signals and Systems

## Basics
- Learning Array Operations and Common Commands
- Plotting Multiple Graphs Per Figure Using hold and subplot
- Plotting Using Different Colors and Labeling Graph
- Sampling Signal Over Period of N
- Comparing Signals 
- Loading Array from File

## Signal Analysis
-  
PART 1
1.	a) Use the help command to learn the basics of the disp command. Then plot the input x[n] and output y[n] signals over the interval 0 to 9. Also, calculate using looping the total energy of the input and output signals and display them using the disp command. 
b) Repeat the steps in part a) using a sinusoidal input signal over the same interval. Use the help command to learn the basics of the sin and cos commands. 
2.	a) Test the linearity of a system by comparing the output response to the addition of two x[n]s (x3[n] = x1[n] + x2[n]) with the addition of their respective two y[n]s (y3[n] = y1[n] + y2[n]). Finally, plot all the input and output signals in one graph using the stem command and display whether the system is linear or not using the disp command.
b)  Repeat the steps in part b) to test not only linearity, but also time invariance for the following systems:
	i) y[n] = x^2[n]
	ii) y[n] = 2x[n] + 5d[n]
3.	a) Test evenness and oddness by calculating the signal’s components. Use the help commands to familiarize yourself with the exp and abs commands. 
b)	Repeats the steps in part a) for a different signal.
c)	Compare and contrast the method used to determine linearity.
PART 2
1.	Using the transfer function H(w) and the difference equation y[n], calculate the response y[n] using x[n] from 0 to 9. Then plot the output y[n] signal over the interval 0 to 9 using the stem command. 
2.	Use the help command to familiarize yourself of the conv command. Then calculate the system response through the convolution of h[n] and x[n] using the conv function. Finally, plot y[n] using stem and compare both graphs. 
3.	a)  Determine whether a block box is linear or not. 
i)	Design a linearity test for any signal.
ii)	Describe the plot.
iii)	Determine whether your test was accurate and to what certainty 
b)  Determine whether a block box is time invariant or not. 
i)	Design a time invariance test for any signal.
ii)	Describe the plot.
iii)	Determine whether your test was accurate and to what certainty 

## PART 1: DISCRETE TIME FOURIER TRANSFORM
1.	Write a function to calculate and plot the DFT of the following x[n] over the interval -π to π using for loops and the length command. Set the step size by defining it between the upper and lower bound.
2.	Compare the script used over the interval 0 to 2π in question 1 to the fft command. Set an appropriate step size such that the array is of size 21. Finally, plot both signals to compare the results of the transform from the function in question 1 to the prebuilt one.
3.	 Calculate the inverse DFT using the ifft command and compare it to the original x[n] signal by plotting both signals. The signals should be identical as the ifft undoes the fft performed on the x[n] signal.

## PART 2: INTRODUCTION TO SIMULINK
1.	Simply type simulink in MATLAB to start Simulink! Once Simulink is opened, click on Blank Model and wait for an empty window to appear to start editing the model.
2.	Click on the Library Browser and select Sources, then Sine Wave. Draw and drop the Sine Wave into the Model Window. Then select Sinks, then Scope. Draw and drop the Scope into the Model Window. Connect the Sine Wave to the Scope by dragging the output port of the Sine Wave to the input port of the Scope block. 
3.	Double click the Sine wave function block to modify its parameters.
4.	Double click the Scope sink block to open its window and modify its parameters. 
5.	Run the simulation by simply clicking run in the Simulink Model Window. Doing so will open the Scope window and display a full period of the signal in question. 
6.	Simulate the difference equation y[n] = x[n] + (1/4)y[n – 1] using the following Simulink blocks and models: unit delay, gain, add, sine wave, and scope sink.

## LAB 4
1.	a) Write a function to calculate and plot the DFT of the following x[n] over the interval   -nπ to nπ using for loops and the length command, where n is the number of periods. Set the step size by defining it between the upper and lower bounds of the array definition. Request user input for the sampling rate and then plot the sampled signal. 
b) Repeat the steps described in Question 1 a, but request user input for the window size, keeping the sampling rate constant this time around.
2.	Write a script to calculate and perform the polar plot of a sin signal using the polar command. Repeat the steps given in Question 1 a  for the following signal: x[n] = 0.5*sin(2*pi/N*n) + 0.33*sin(4*pi/N*n). 
3.	a) Distortion may occur after compressing a signal to transmit it. Measure the MSE, mean square error, of the distorted and normal signal using a function and for loop. Load audio files into the program using audioread and plot them using plot.
b) Write a function to take the mean square error (MSE) of two signals.
c) Recover the original signal using the transfer and inverse transfer function and save the audio to a file using audiowrite. Designed a system in the frequency domain for signal recovery.
d) Use the function written in Question 3 b to take the MSE of the recovered and original signals. The system of Question 3c improved the MSE to be fractionally small by using the transfer function to counter most of the distortion in the signal. 
e) Play and listen to the recovered signal using audioplayer and play commands. If implemented correctly, the recovered signal should have an audio quality comparable to the original, much improved from the distorted signal quality.  

## LAB 5
1.	a) Design IIR Butterworth fourth and eighth order filters using either butter or designfilt commands. Then plot the input and output signals for each filter. 
b)	Repeat Q1 a) with Chebyshev Type I filters using cheby1 or designfilt commands.
c)	Repeat Q1 a) with Elliptic filters using ellip or designfilt commands.
d)	Plot the DFT of the input and output signals for the eighth order filters designed in Q1 a, b, and c). 

2.	PART A – Create a signal with three components
a)	Create a signal with a 200Hz tone from 0 to 3.
b)	Create a signal with a 330Hz tone from 1 to 3.
c)	Create a signal with a 480Hz tone from 2 to 3. 
d)	Plot and listen to the full signal.
PART B – Design a filter to remove the 330Hz component
a)	Plot the magnitude and phase of the filter.
b)	Filter the signal using filtfilt command.
c)	Compare and contrast the spectra before and after filtering.
d)	Finally, listen to the sound using the sound or audioplayer and play commands.

