%% Humanoid Walker With Reinforcement Learning Intialization
% Copyright 2019 The MathWorks, Inc.

%% Joint rotation limits
%These limits are similar to human joint rotation limits. 

% Legs= joints
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

params.torqueLimits.hipFrontal  = 100; % (N*m)
params.torqueLimits.knee        = 100; % (N*m)
params.torqueLimits.ankle       = 100; % (N*m)

%% Stopping criteria
% Define the conditions under which the simulation is terminated early. 
% One or more of three conditions need to be satisfied for termination. 
% If the humanoid torso drops vertically, travels laterally or rotates in
% any axis more than a set of predefined values, or if the humanoid stops
% moving.

params.stoppingCriteria.heightChange     = 5; % (m)
params.stoppingCriteria.lateral          = 100;   % (m)
params.stoppingCriteria.angle            = 30;  % (deg)
params.stoppingCriteria.timeoutTime      = 5;   % (s)
params.stoppingCriteria.timeoutDistance  = 1;   % (m)

%% Reward scaling parameters

params.reward.forwardRewardWeight   = 1;    % Forward velocity scale, w_1
params.reward.timestepRewardWeight  = 1;    % Not falling scale, w_2
params.reward.powerPenaltyWeight    = 5e-4; % Power scale, w_3
params.reward.verticalPenaltyWeight = 25;   % Vertical displacement scale, w_4
params.reward.lateralPenaltyWeight  = 5;  % Lateral displacement scale, w_5

%% Display parameters 

params.display.tileColour    = [0.956, 0.941, 0.941];
params.display.floorColour   = [0.756, 0.741, 0.741];
params.display.tileThickness = 0.005;
params.display.planeWidth        = 25;   % (m)
params.display.planeLength       = 25;  % (m)
params.display.planeHeight       = 1;   % (m)
params.display.Gravity           = [0, 0, -9.80665];   % (m/s^2)
params.display.planeDimensions = [params.display.planeWidth params.display.planeLength params.display.planeHeight];

%% Environment Parameters

% Box interaction parameters
params.display.box_size = 1;
params.display.object_density = 5; %density required to be interactable - 
params.display.box_dist_x = -3; 
params.display.box_dist_y = 5;
params.display.box_dist_z = 0;

% Wall length, height, width, density
params.display.wall_width = 15;
params.display.wall_height = 1;
params.display.wall_length = 1;
params.display.wall_density = 1000;
params.display.wall_colour = [0.64 0 0.88];

% Wall 1 distances, based on seed generation or rng, create 'maze' of walls
% at distances in x, y and z plane

% Environment perimeter parameters
params.display.perimeter_left_lim = params.display.planeWidth/2;
params.display.perimeter_right_lim = -params.display.planeWidth/2;
params.display.perimeter_back_lim = params.display.planeLength;
params.display.perimeter_height = params.display.wall_height;
params.display.perimeter_length = params.display.planeLength;
params.display.perimeter_depth = 0.25;
params.display.perimeterDimensions_side = [params.display.perimeter_depth params.display.perimeter_length params.display.perimeter_height];
params.display.perimeterDimensions_back = [params.display.perimeter_length params.display.perimeter_depth params.display.perimeter_height];
params.display.perimeterTranslation_right = [params.display.perimeter_right_lim 0 -params.display.planeHeight*2];
params.display.perimeterTranslation_back = [0 -params.display.perimeter_back_lim/2 -params.display.planeHeight*2];

params.display.perimeter_wall_dimensions = [0.25 params.display.planeLength 3];
params.display.perimeter_back_dimensions = [params.display.planeWidth 0.25 3];

params.display.perimeter_colour = [0.796 0.2549 0.3294];

params.sim.gradient_1 = 3.5;
params.sim.gradient_2 = 5;

%% Seed selection for random placement of obstacles
%/select_seed = /%

select_seed = 2;

if select_seed == 0
    params.display.wall_1_dist_x = 0;
    params.display.wall_1_dist_y = 0;
    params.display.wall_1_dist_z = 0;
elseif select_seed == 1
    params.display.wall_1_dist_x = 12.5;
    params.display.wall_1_dist_y = 5;
    params.display.wall_1_dist_z = params.display.planeHeight*1.5;
elseif select_seed == 2
    params.display.wall_1_dist_x = 17.5;
    params.display.wall_1_dist_y = 5;
    params.display.wall_1_dist_z = params.display.planeHeight*1.5;
elseif select_seed == 3
    params.display.wall_1_dist_x = 22.5;
    params.display.wall_1_dist_y = 5;
    params.display.wall_1_dist_z = params.display.planeHeight*1.5;
end
