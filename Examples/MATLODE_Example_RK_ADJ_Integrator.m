%% MATLODE_Example_RK_ADJ_Integrator
%
% <html>
%   <div>
%       <img style="float: right" src="../MATLODE_LOGO.png" height="150px"></img>
%   </div>
% </html>
%
% <html>
%    Up: <a href="../Examples/html/Examples.html">Examples</a>
% </html>
%%
% For the following examples we will use Van Der Pol as a toy problem 
% to illustrate |MATLODE_RK_ADJ_Integrator| functionalities and features.
% To initially setup Brusselator, execute the MATLAB commands below to
% load our input parameters into our workspace. 
Ode_Function        = @vanDerPol_Function;
Ode_Jacobian        = @vanDerPol_Jacobian;
Ode_Lambda          = @vanDerPol_Lambda;
Ode_Quadrature      = @vanDerPol_Quadrature;
Ode_QFun            = @vanDerPol_QFun;
Ode_DRDP            = @vanDerPol_DRDP;
Ode_DRDY            = @vanDerPol_DRDY;
Ode_Jacp            = @vanDerPol_Jacp;
Ode_Mu              = @vanDerPol_Mu;
Time_Interval       = [ 0 20 ];
Y0                  = [2; -0.66];

%% Basic Functionality
% Now that we have our model loaded in our workspace, we can perform an adjoint
% implicit Runge-Kutta integration using MATLODE's prebuilt default
% settings. We note that a Jacobian and Lambda are required and passed by MATLODE(R)'s
% option struct.
Options  = MATLODE_OPTIONS('Jacobian',Ode_Jacobian,'Lambda',Ode_Lambda);
[ ~, Y, Sens ] = MATLODE_RK_ADJ_Integrator(Ode_Function,Time_Interval,Y0,Options);

%%
% Printing out our results, we can analyze our model state at our final
% time.
disp('solution at Time_Interval(2)');
disp(Y(end,:));
disp('sensitivity at Time_Interval(2)');
disp(Sens);

%% Advanced Features
% Calculating Mu and Quadrature depends on the input parameters to the
% option struct. Below are three examples illustrating the required input
% parameters to obtain the desired output.

%%
% *Example 1:* Mu: false | Quadrature: true
Options = MATLODE_OPTIONS('Jacobian',Ode_Jacobian,'Lambda',Ode_Lambda,'Quadrature',Ode_Quadrature,'QFun',Ode_QFun,'DRDY',Ode_DRDY);
[ ~, Y, Sens, Quad, ~ ] = MATLODE_RK_ADJ_Integrator(Ode_Function,Time_Interval,Y0,Options);

%%
% Printing out our results, we can analyze our model state at our final
% time.
disp('solution at Time_Interval(2)');
disp(Y(end,:));
disp('sensitivity at Time_Interval(2)');
disp(Sens);
disp('quadrature at Time_Interval(2)');
disp(Quad);

%%
% *Example 2:* Mu: true | Quadrature: false
Options = MATLODE_OPTIONS('Jacobian',Ode_Jacobian,'Lambda',Ode_Lambda,'Jacp',Ode_Jacp,'Mu',Ode_Mu);
[ ~, Y, Sens, ~, Mu ] = MATLODE_RK_ADJ_Integrator(Ode_Function,Time_Interval,Y0,Options);

%%
% Printing out our results, we can analyze our model state at our final
% time.
disp('solution at Time_Interval(2)');
disp(Y(end,:));
disp('sensitivity at Time_Interval(2)');
disp(Sens);
disp('mu at Time_Interval(2)');
disp(Mu);

%%
% *Example 3:* Mu: true | Quadrature: true
Options = MATLODE_OPTIONS('Jacobian',Ode_Jacobian,'Lambda',Ode_Lambda,'Jacp',Ode_Jacp,'Mu',Ode_Mu,'Quadrature',Ode_Quadrature,'QFun',Ode_QFun,'DRDY',Ode_DRDY,'DRDP',Ode_DRDP);
[ ~, Y, Sens, Quad, Mu ] = MATLODE_RK_ADJ_Integrator(Ode_Function,Time_Interval,Y0,Options);

%%
% Printing out our results, we can analyze our model state at our final
% time.
disp('solution at Time_Interval(2)');
disp(Y(end,:));
disp('sensitivity at Time_Interval(2)');
disp(Sens);
disp('quadrature at Time_Interval(2)');
disp(Quad);
disp('mu at Time_Interval(2)');
disp(Mu);

%%
%  Authored by Tony D'Augustine, Adrian Sandu, and Hong Zhang.
%  Computational Science Laboratory, Virginia Tech.
%  ©2015 Virginia Tech Intellectual Properties, Inc.
%

%%
% <html>
%   <div>
%       <img style="float: right" src="../CSL_LogoWithName_1.png" height="50px"></img>
%   </div>
% </html>