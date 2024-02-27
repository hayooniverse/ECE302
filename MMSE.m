%% Hailey Hayoon Chung and Eric Taeyoo Kim
% ECE 302 - Project 2
clc; clear; close all;

%% Scenario 1

% Simulate this system by random draws of Y and W, and then estimating Y from the observations X = Y + W.

N = 10000;
Y = unifrnd(-1,1,[N 1]);
W = unifrnd(-2,2,[N 1]);
X = Y + W;

% Bayes MMSE Estimator

MMSE_bayes = zeros(N,1);
% Taking a look at eq (8.30), breakdown x into three pieces:
piece1 = (X<-1) & (X>=-3);
piece2 = (X<1) & (X>=-1);
piece3 = (X<=3) & (X>=1);

MMSE_bayes(piece1) = (1/2) + (1/2) * X(piece1);
MMSE_bayes(piece2) = 0;
MMSE_bayes(piece3) = -(1/2) + (1/2) * X(piece3);

% Empirical Mean Square Error using MMSE_bayes:
MSE_bayes = mean((Y-MMSE_bayes).^2);

% Empirical Mean Square Error - Eq (8.31):
% MSE_bayes(piece1) = ((3+X(piece1)).^2)/(12);
% MSE_bayes(piece2) = 1/3;
% MSE_bayes(piece3) = ((3-X(piece3)).^2)/(12);
% MSE_bayes_empirical = mean(MSE_bayes);

% Theoretical Bayes MSE = 1/4 (on page 149 of textbook)
MSE_bayes_theoretical = 1/4;

% Linear MMSE Estimator

corr = corrcoef(X,Y);
rho = corr(1,2);
MMSE_linear = mean(Y) + rho * (std(Y)/std(X)) * (X - mean(X));

% Empirical Mean Square Error using MMSE_linear:
MSE_linear = mean((Y-MMSE_linear).^2);

% Theoretical linear MSE = 4/15 (on page 154 of textbook)
MSE_linear_theoretical = 4/15;

% Define the data for the table
% I didn't know how to create a table in Matlab, so I received some help
% from chatgpt...!
estimators = {'Bayesian MMSE'; 'Linear MMSE'};
empirical_MSEs = [MSE_bayes; MSE_linear];
theoretical_MSEs = [MSE_bayes_theoretical; MSE_linear_theoretical];

% Create the table
results_scenario1 = table(estimators, empirical_MSEs, theoretical_MSEs, 'VariableNames', {'Estimator', 'Empirical MSE', 'Theoretical MSE'});

% Display the table
disp(results_scenario1);

