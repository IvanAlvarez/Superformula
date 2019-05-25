function s = Superformula(m, n, a, grain)
% s = Superformula(m, n, a, grain)
% 
% Inputs:
%  m        [scalar] number of lobes
%  n        [vector] 3 parameters;
%                    n1 = 'round-ness', high values = more round
%                    n2 = 'square-ness', high values = more square
%                    n3 = 'squash-ness', high values = more squashed
%  a        [vector] 2 parameters;
%                    a1 = 'pinch', squeezes half the lobes to centre
%                    a2 = 'pinch', squeezes the other half to the centre
%  grain    [scalar] number of points to sample
%
% Output:
%  s        [struct]
%  s.m      [scalar] copy of 'm'
%  s.n      [vector] copy of 'n'
%  s.a      [vector] copy of 'a'
%  s.X      [i,j mat] X coordinates
%  s.Y      [i,j mat] Y coordinates
%  s.Z      [i,j mat] Z coordinates
% 
% Generates a 3D superellipse following the description in Gielis (2003).
%
% Gielis, J. (2003). A generic geometric transformation that unifies a 
% wide range of natural and abstract shapes. American Journal of Botany, 
% 90(3), pp.333-338.
%

%
% Changelog
%
% 20/01/2016    Written
% 24/05/2019    Cosmetic changes for publication
% 
% Ivan Alvarez
% FMRIB, University of Oxford
%

%% Defaults

% Help message
if nargin == 0
    help Superformula
    return
end

% Example values
if nargin < 2
    n = [2, 8, 4];
end
if nargin < 3
    a = [1, 1];    
end
if nargin < 4
    grain = 100;
end

%% Generate

% Store parameters
s.m = m;
s.n = n;
s.a = a;

% Pre-allocate matrices
s.X = zeros(grain, grain);
s.Y = zeros(grain, grain);
s.Z = zeros(grain, grain);

% Sampling
p1 = -pi : 2 * pi / (grain - 1) : pi;
p2 = -pi / 2 : pi / (grain - 1) : pi / 2;

% Search grid
[g1, g2] = ndgrid(p1, p2);

% Loop
for i = 1 : numel(g1)
    
    % Sample
    r1 = abs(abs(1 / a(1) * abs(cos(m .* g1(i) / 4))) .^ n(2) + abs(1 / a(2) * abs(sin(m * g1(i) / 4))) .^ n(3)) .^ (-1 / n(1));
    r2 = abs(abs(1 / a(1) * abs(cos(m .* g2(i) / 4))) .^ n(2) + abs(1 / a(2) * abs(sin(m * g2(i) / 4))) .^ n(3)) .^ (-1 / n(1));
    
    % Coordinate points
    s.X(i) = r1 * cos(g1(i)) * r2 * cos(g2(i));
    s.Y(i) = r1 * sin(g1(i)) * r2 * cos(g2(i));
    s.Z(i) = r2 * sin(g2(i));
end

% Done
%