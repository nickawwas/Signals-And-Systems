# Signals and Systems
Classified and Simulated Time Systems, Performed Fourier Transforms, Recovered Distorted Audio and Designed Filters

## Basics
- Practice Array Operations and Common Commands
- Plot Multiple Graphs Per Figure Using hold and subplot
- Plot Using Different Colors and Labeling Graph
- Sample Signal Over Period of N
- Compare Signals to Check Equivalency 
- Determine Periodicity of Signals
- Load Array Values from Text File

## Signal Analysis
- Check for Linearity and Time Invariance (LTI)
- Test Evenness and Oddness by Splitting Signal into its Components
- Calculate Response Function, y[n], Given Transfer Function, H(w)
- Perform Convolution to Calculate System Response 
- Calculate Total Energy of Signal

## Signal Transformations
- Write a Function to Calculate DFT
- Calculate and Plot DFT using fft
- Compare Built-In Fast Fourier Transform (FFT) with Own DFT 
- Perform DFT with User Input for Step Size, Sampling Rate and Window Size
- Determined Minimum Sampling Rate using Nyquist Theorem
- Calculate Inverse DFT using ifft
- Plot DFT in Time, Frequency and Polar Domains using plot and polar

## Audio Signals
- Recover Distorted Signal using Inverse Transfer and Transfer Functions
- Load and Play Audio Signals using audioread and play
- Save Audio to File using audiowrite
- Write a Function to Measure Mean Square Error (MSE) of Distorted and Normal Signals
- Listen to Recovered Signal

## Filter Design
- Create a Signal With Multiple Components
- Design a Filter to Filter a Component using filtfilt
- Design Butterworth Filters using butter and designfilt
- Design Chebyshev Type I Filters using cheby1 and designfilt
- Design Elliptic Filters using ellip and designfilt
- Plot Phase and Magnitude Response using bode
- Calcualte Pole and Zero Plots using zplane
