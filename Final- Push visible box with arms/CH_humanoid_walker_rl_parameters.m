%% Humanoid Walker With Reinforcement Learning Intialization
% Copyright 2019 The MathWorks, Inc.

%% Joint rotation limits
%These limits are similar to human joint rotation limits. 

% Legs joints
params.jointLimits.hipFrontalUpperLimit  =  30;  % (Deg)
params.jointLimits.hipFrontalLowerLimit  = -90;  % (Deg)
params.jointLimits.kneeUpperLimit        =  90;  % (Deg)
params.jointLimits.kneeLowerLimit        =  5;   % (Deg)
params.jointLimits.ankleUpperLimit       =  20;  % (Deg)
params.jointLimits.ankleLowerLimit       = -20;  % (Deg)
% Arm joints
params.jointLimits.shoulderFrontalUpperLimit        =  110; % (Deg)
params.jointLimits.shoulderFrontalLowerLimit        = -30;  % (Deg)
params.jointLimits.shoulderSagittalUpperLimit       =  90;  % (Deg)
params.jointLimits.shoulderSagittalLowerLimit       = -30;  % (Deg)
params.jointLimits.elbowLowerLimit                  = 5;    % (Deg)
params.jointLimits.elbowUpperLimit                  = 130;  % (Deg)
params.jointLimits.wristLowerLimit                  = -90;  % (Deg)
params.jointLimits.wristUpperLimit                  = 70;   % (Deg)

%% Motor Parameters: Left
% Current motor: https://uk.rs-online.com/web/p/dc-motors/7736804
%Stall Torque
params.motor.StallTorque.LeftHip                        = 100; % (Nm)
params.motor.StallTorque.LeftKnee                       = 100; % (Nm)
params.motor.StallTorque.LeftAnkle                      = 100; % (Nm)

params.motor.StallTorque.LeftShoulderFrontal            = 100; % (Nm)
params.motor.StallTorque.LeftShoulderSagital            = 100; % (Nm)
params.motor.StallTorque.LeftElbow                      = 100; % (Nm)
params.motor.StallTorque.LeftWrist                      = 100; % (Nm)

%Armature Inductance: UNKNOWN
params.motor.ArmatureInductance.LeftHip                 = 12e-6;
params.motor.ArmatureInductance.LeftKnee                = 12e-6;
params.motor.ArmatureInductance.LeftAnkle               = 12e-6;

params.motor.ArmatureInductance.LeftShoulderFrontal     = 12e-6;
params.motor.ArmatureInductance.LeftShoulderSagital     = 12e-6;
params.motor.ArmatureInductance.LeftElbow               = 12e-6;
params.motor.ArmatureInductance.LeftWrist               = 12e-6;

%No-Load Speed
params.motor.NoLoadSpeed.LeftHip                        = 22.5; % (RPM)
params.motor.NoLoadSpeed.LeftKnee                       = 22.5; % (RPM)
params.motor.NoLoadSpeed.LeftAnkle                      = 22.5; % (RPM)

params.motor.NoLoadSpeed.LeftShoulderFrontal            = 22.5; % (RPM)
params.motor.NoLoadSpeed.LeftShoulderSagital            = 22.5; % (RPM)
params.motor.NoLoadSpeed.LeftElbow                      = 22.5; % (RPM)
params.motor.NoLoadSpeed.LeftWrist                      = 22.5; % (RPM)

%Torque Constant
params.motor.RatedDCSupply.LeftHip                      = 12; % (V)
params.motor.RatedDCSupply.LeftKnee                     = 12; % (V)
params.motor.RatedDCSupply.LeftAnkle                    = 12; % (V)

params.motor.RatedDCSupply.LeftShoulderFrontal          = 12; % (V)
params.motor.RatedDCSupply.LeftShoulderSagital          = 12; % (V)
params.motor.RatedDCSupply.LeftElbow                    = 12; % (V)
params.motor.RatedDCSupply.LeftWrist                    = 12; % (V)

%% Motor Parameters: Right
%Stall Torque
params.motor.StallTorque.RightHip                        = 100; % (Nm)
params.motor.StallTorque.RightKnee                       = 100; % (Nm)
params.motor.StallTorque.RightAnkle                      = 100; % (Nm)

params.motor.StallTorque.RightShoulderFrontal            = 100; % (Nm)
params.motor.StallTorque.RightShoulderSagital            = 100; % (Nm)
params.motor.StallTorque.RightElbow                      = 100; % (Nm)
params.motor.StallTorque.RightWrist                      = 100; % (Nm)

%Armature Inductance
params.motor.ArmatureInductance.RightHip                 = 12e-6;
params.motor.ArmatureInductance.RightKnee                = 12e-6;
params.motor.ArmatureInductance.RightAnkle               = 12e-6;

params.motor.ArmatureInductance.RightShoulderFrontal     = 12e-6;
params.motor.ArmatureInductance.RightShoulderSagital     = 12e-6;
params.motor.ArmatureInductance.RightElbow               = 12e-6;
params.motor.ArmatureInductance.RightWrist               = 12e-6;

%No-Load Speed
params.motor.NoLoadSpeed.RightHip                        = 22.5; % (RPM)
params.motor.NoLoadSpeed.RightKnee                       = 22.5; % (RPM)
params.motor.NoLoadSpeed.RightAnkle                      = 22.5; % (RPM)

params.motor.NoLoadSpeed.RightShoulderFrontal            = 22.5; % (RPM)
params.motor.NoLoadSpeed.RightShoulderSagital            = 22.5; % (RPM)
params.motor.NoLoadSpeed.RightElbow                      = 22.5; % (RPM)
params.motor.NoLoadSpeed.RightWrist                      = 22.5; % (RPM)

%Torque Constant
params.motor.RatedDCSupply.RightHip                      = 12; % (V)
params.motor.RatedDCSupply.RightKnee                     = 12; % (V)
params.motor.RatedDCSupply.RightAnkle                    = 12; % (V)

params.motor.RatedDCSupply.RightShoulderFrontal          = 12; % (V)
params.motor.RatedDCSupply.RightShoulderSagital          = 12; % (V)
params.motor.RatedDCSupply.RightElbow                    = 12; % (V)
params.motor.RatedDCSupply.RightWrist                    = 12; % (V)


%% Material properties

params.materialProperties.lowerBodyDensity = 990;  % (kg/m^3)
params.materialProperties.upperBodyDensity = 1900; % (kg/m^3)

%% World damping
% We add damping to the vertical (z) and rotational (Rx, Ry, Rz) components
% of the bushing joint. This dissipates energy from the system and facilates 
% quicker learning. Increasing this improves stability and learning, but is
% less realistic. 

params.simulation.worldDamping = 6; % (Ns/m)

%% Simulation parameters

params.simulation.initialHeight=1.54; % (m) Intial height of robot
params.simulation.Ts = 0.025;         % (s) Control and sensing discretization time
params.simulation.Tf = 600;      % (s) Max simulation time

%% Spatial contact force block parameters. 
% The value of these parameters affects simulation and learning speed. 
% Higher damping generally improves learning but slows down simulation. 
% High static and dynamic friction values tend to improve learning. 

params.contact.stiffness        = 1e5;  % (N/m)
params.contact.damping          = 1e5;  % (Ns/m) 
params.contact.transitionWidth  = 1e-3; % (m)
params.contact.staticFriction   = 1;    % () 
params.contact.dynamicFriction  = 0.9;  % ()
params.contact.criticalVelocity = 1e-3; % (m/s) 
params.contact.contactRadius = 0.01;    % (m)

%% Controller parameters

params.controller.hipFrontalStiffness  = 80; % (N*m/rad)
params.controller.hipFrontalDamping    = 1;  % (N*m*s/rad)
params.controller.kneeStiffness        = 80; % (N*m*/rad)
params.controller.kneeDamping          = 1;  % (N*m*s/rad)
params.controller.ankleStiffness       = 80; % (N*m/rad)
params.controller.ankleDamping         = 1;  % (N*m*s/rad)
   

%% Stopping criteria
% Define the conditions under which the simulation is terminated early. 
% One or more of three conditions need to be satisfied for termination. 
% If the humanoid torso drops vertically, travels laterally or rotates in
% any axis more than a set of predefined values, or if the humanoid stops
% moving.

params.stoppingCriteria.heightChange     = 0.5; % (m)
params.stoppingCriteria.lateral          = 1000;   % (m)
params.stoppingCriteria.angle            = 60;  % (deg)
params.stoppingCriteria.timeoutTime      = 2;   % (s)
params.stoppingCriteria.timeoutDistance  = 1;   % (m)

%% Reward scaling parameters

params.reward.boxMoveRewardWeight   = 10;    % Object motion reward scale, w_1
params.reward.forwardRewardWeight   = 1;    % Forward velocity scale, w_2
params.reward.timestepRewardWeight  = -0.5;    % Not falling scale, w_3 - Penalise time taken, Strive to always move forward
params.reward.powerPenaltyWeight    = 5e-4; % Power scale, w_4
params.reward.verticalPenaltyWeight = 25;   % Vertical displacement scale, w_5
params.reward.lateralPenaltyWeight  = 2;  % Lateral displacement scale, w_6

%% Display parameters 

params.display.tileColour    = [0.956, 0.941, 0.941];
params.display.floorColour   = [0.756, 0.741, 0.741];
params.display.tileThickness = 0.005; 
params.display.planeWidth        = 100;   % (m)
params.display.planeLength       = 200;  % (m)
params.display.planeHeight       = 1;   % (m)
params.display.Gravity           = [0, 0, -9.80665];   % (m/s^2)


