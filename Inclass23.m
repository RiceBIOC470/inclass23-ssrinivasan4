
%GB commments
1. 70 incorrect plots. Should be generated like this:
sol = ode23(@repressilator,[0 200], [1, 0,0]);
hold on
plot(sol.x, sol.y(1,:));
plot(sol.x, sol.y(2,:));
plot(sol.x, sol.y(3,:));
hold off 
legend('x1','x2','x3')

2 70 incorrect plot. Please see the above plotting approach. Using this and inputting .5 for all starting concentrations will indicate that the oscillatory behavior for all genes is removed. 
3. 80 This questions requires you to scan through multiple parameters of k2 to capture and understand the behavior of the system. Values of k2<1 leads to dampened oscillations. Values above 1 generate oscillations with a periodicity and amplitude directed by how large that number is.  
4. 100
overall 80

%In this directory, you will find a derivaitve function representing a
%three gene circuit in which each gene product represses the transcription of another
%gene in a cycle. This simple three gene circuit displays oscillations and was one
%of the first synthetic circuits ever constructed (see Elowitz & Leibler
%Nature 2000). 

% 1. Start with initial conditions x(1) = 1, x(2) = x(3) = 0. 
% Run the model for 200 time units and plot the result. verify that it
% does indeed oscillate. 

sol = ode23(@repressilator,[0 200],[1,0,0]);
plot(sol.y(1,:),sol.y(2,:));
hold on;

% 2. What happens if you start with initial conditions x(1) = x(2) = x(3) =
% 0.5? Why?

sol = ode23(@repressilator,[0 200],[0.5,0.5,0.5]);
plot(sol.y(1,:),sol.y(2,:));
hold on;

% if the same value is used for x1, x2 and x3, all three of the equations
% within the repressilator function are identical. Because of this, all
% genes affect each other equally, so any change would be equal for all
% three, resulting in a linear change rather than an oscillation. 

% 3. The strength of the repression is governed by the constant k2 which is
% the same for all the genes. What happens when you make k2 larger or
% smaller? Find the approximate value of k2 for which the system no longer
% oscillates. 

% only at a k2 value of 0 would there be no dependence between the two
% genes. Even a small value of k2 would introduce interdependency between
% the two genes, resulting in oscillation. 

% 4. What happens when you make k2 larger or smaller for only one of the
% genes? 

% when k2 is increased for one gene, that gene controls the entire network.
% if the value of k2 is decreased for one gene, the other two genes would
% control the network more, and the relative contribution of the gene with
% the lower k2 to the system is decreased accordingly. 
