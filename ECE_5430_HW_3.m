% Charlotte Meola
% ECE 5430, Homework 3

clear all; close all; clc;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Problem 2: Gaussian Random Fields
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

u = transpose([0 1] - [1 2])

% Covariance Matrix
K = [0.1, -0.3, 0.5, 0.1;
    -0.3, 1, 0.1, 0.2;
    0.5, 0.1, 2, 0.3;
    0.1, 0.2, 0.3, 0.3];

% Precision Matrix, R
R = K^-1
plot(R, '.', 'MarkerSize', 32)
title({'Precision Matrix Plot', 'R = K^-^1'});
saveas(gcf, 'PrecisionMatrixPlot.jpg');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Problem 3: Linear Reception Model
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

A_old = [1, 2, 3; 0.5, 6, 4; -1, 2,-1]

A = A_old.*transpose(A_old)

syms y
XLSE= ((transpose(A).*A)^-1)*transpose(A)*y;
simplify(XLSE)


