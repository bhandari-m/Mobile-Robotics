function R = sane_mvnrnd(mu_hat, sigma_hat, alpha, numSamples)
% SANE_MVNRND  'Sane' random vectors from the multivariate normal
% distribution.
%   R = SANE_MVNRND(MU_HAT, SIGMA_HAT, ALPHA, NUMSAMPLES) returns an N-by-D
%   matrix R of random vectors from the multivariate normal distribution 
%   with mean vector MU_HAT and covariance matrix SIGMA_HAT, such that all 
%   samples returned will be contained in the ALPHA-confidence ellipse of 
%   the distribution. ALPHA is a variable indicating confidence level. 
%   ALPHA typically lies in the range [0,1], but the boundary values are 
%   not of significance, so ALPHA for all practical purposes is in the 
%   range (0,1).
%
%   Inputs:
%       mu_hat: D-by-1 mean vector
%       sigma_hat: D-by-D covariance matrix
%       alpha: scalar confidence level (0 < alpha < 1)
%       numSamples: number of samples to be drawn
%   Output:
%       R: N-by-D matrix of random vectors



% Get the number of dimensions of the multivariate gaussian
numDims = size(mu_hat,1);

% Initialize R to be an N-by-D zero matrix
R = zeros(numSamples, numDims);

% TODO: Check if the dimensions of the mean vector and covariance matrix
% are compatible. Print an error message and return if incompatible.

% TODO: Check if alpha lies in the range (0,1) (note the open interval).
% Print an error message and return if check fails.

% TODO: Look up the confidence level in the inverse chi squared table, and
% retrieve the Mahalanobis distance threshold. Hint: use the chi2inv
% function. For details type 'help chi2inv' in the command window.

% Note that the following is a simple, but possibly inefficient strategy to
% generate large numbers of samples. Feel free to innovate here.
% TODO: Run a loop for 'numSamples' iterations. In each iteration of the
% loop, keep sampling from mvnrnd and compute the Mahalanobis norm for the
% sample until you get atleast one sample whose Mahalanobis norm is less
% than the threshold computed from the inverse chi squared lookup table.


end