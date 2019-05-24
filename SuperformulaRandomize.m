function s = SuperformulaRandomize(Num, M, N, A, Grain)
% s = SuperformulaRandomizeNum, [M], [N], [A], [Grain])
%
% Inputs:
%   Num     [scalar] number of exemplars requested
%   M       [1x2 vector] min and max number of lobes, default = [1, 8]
%   N       [1x2 vector] min and max shape parameter values, default = [1, 12]
%   A       [1x2 vector] scaling factors A, default = [1, 1]
%   Grain   [scalar] number of points to sample, default = 600
%
% Outputs:
%   s       [cellar] Cell array containing one exemplar per cell
%
% Randomise parameter values inputted to Superformula.m and return a cell
% array with one exemplar per cell.
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

%% Settings

% Help message
if nargin == 0
    help SuperformulaRandomize
    return
end

% Defaults
if nargin < 2
    M = [1, 8];
end
if nargin < 3
    N = [1, 12];
end 
if nargin < 4
    A = [1, 1];
end
if nargin < 5
    Grain = 600;
end

%% Generate

% Randomise number of lobes
m = randi(M, Num, 1);

% Randomise shape parameters
n = randi(N, Num, 3);

% Scale factors are fixed
a = A;

% Empty cell array
s = cell(Num, 1);

% Loop exemplars
for i = 1 : Num
    
    % Generate superformula points and store
    s{i} = Superformula(m(i), n(i, :), a, Grain);
end

%% Done
%