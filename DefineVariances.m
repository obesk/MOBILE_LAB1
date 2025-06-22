% Set the parameters which have the "Determined by student" comment to tune
% the Kalman filter. Do not modify anything else in this file.

% Uncertainty on initial position of the robot.

% errors due to the size of the magnet magnetic field
sigmaX     = 5 ;         % Determined by student 
sigmaY     = 5 ;         % Determined by student
sigmaTheta =  deg2rad(5);   % Determined by student %erro in placing the car
Pinit = diag( [sigmaX^2 sigmaY^2 sigmaTheta^2] ) ;

% Measurement noise.
sigmaXmeasurement = sqrt(20^2/12) ;  % Determined by student
sigmaYmeasurement = sqrt(20^2/12) ;  % Determined by student
Qgamma = diag( [sigmaXmeasurement^2 sigmaYmeasurement^2] ) ;


% Input noise
sigmaTuning = 0.12; 
Qwheels = sigmaTuning^2 * eye(2) ;
Qbeta   = jointToCartesian * Qwheels * jointToCartesian.' ; 

% State noise
%TODO: ask professor 
Qalpha = zeros(3) ;

% Mahalanobis distance threshold

mahaThreshold =  sqrt(chi2inv(0.95, 2));  % Determined by student
