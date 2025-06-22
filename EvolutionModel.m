function X_1 = EvolutionModel(X, U)
% EVOLUTIONMODEL Summary of this function goes here
% Detailed explanation goes here

X_1 = [ X(1) + U(1) * cos(X(3));
        X(2) + U(1) * sin(X(3));
        X(3) + U(2)];
end