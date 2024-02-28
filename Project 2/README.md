# Project 2: MMSE Estimation

Overview: In this exercise, you will construct several estimators and compare the results. You will implement Bayesian and linear MMSE estimators.

 

## Scenario 1:
Implement the Bayes MMSE and Linear MMSE estimators from examples 8.5 and 8.6. Simulate this system by random draws of Y and W, and then estimating Y from the observations X = Y + W. Verify that your simulation is correct by comparing theoretical and empirical values of the MSE. Report your results in a table.


## Scenario 2:
Implement the linear estimator for multiple noisy observations, similar to example 8.8 from the notes. Extend this example so that it works for an arbitrary number of observations. Use Gaussian random variables for Y and R. Set μy = 1. Experiment with a few different variances for both Y and R. On one plot, show the mean squared error of your simulation compared to the theoretical values for at least 2 different pairs of variances.


## Scenario 3:
Using the attached .mat file of SAT scores, implement linear estimators of SAT verbal scores. As these estimator will be made using empirical data, you should compute the mean, variances and covariances you need directly from the data.  Implement estimators of SAT Verbal scores from SAT Math scores for 3 different subsets of the data:



The entire range of total SAT Scores

Total SAT score between 1150 and 1250

Total SAT score above 1320



To visualize your results, make a scatter plot of the empirical scores and plot your estimators as lines on top. Comment on how the estimators behave differently when computed over different ranges
