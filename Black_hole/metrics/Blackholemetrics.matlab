%% MATLAB Code for Simulating Black Hole Metrics in LCG
% Limiting Curvature Gravity Equations

% Define constants
syms m gamma r f epsilon symbol R A Xprime symbol0 aB

% Static 2D black hole metric
f = 1 - m / (gamma * exp(-2 * gamma * r));

ds_squared = -f * (diff('t',2)) + (f^(-1));

% Boundary Values
beta = 4 * gamma^2 / A;
R_subA = 12 * gamma * log(beta);

% Subcritical Regime
C_squared = A - R;
epsilon = exp(-symbol0);
symbol0_aB = -1 / (4 * gamma * aB * R);

dsquared_eq = \f\;

% Supercritical
X = Xprime + epsilon^2
R_eval = @(X) exp(-R_symbol)

%%Add extra theoretical constants of the action Covariant
