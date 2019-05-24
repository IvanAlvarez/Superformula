function SuperformulaDisplay(s)
% SuperformulaDisplay(s)
%
% Input:
%   s       [cellar] Cell array, containing one exemplar per cell. Each
%               cell is a structure containing the following fields;
%                   <>.m
%                   <>.n
%                   <>.a
%                   <>.X
%                   <>.Y
%                   <>.Z
%
% Displays superformula exemplars generated with Superformula.m
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
    help SuperformulaDisplay
    return
end

%% Settings

% Aesthetic
FaceColor = [1 .8 .8];

% Input control
if ~iscell(s)
    s = {s};
end

% Number of subplots
nplot = length(s);

% Number of subplots in each axis
rc = factorpairs(nplot);
rc = rc(end, :);

%% Display

% Clear axis
clf;

% Loop exemplars
for i = 1:length(s)
    
    % Element
    subplot(rc(1), rc(2), i);
    
    % Pick out the value
    x = s{i}.X;
    y = s{i}.Y;
    z = s{i}.Z;
    
    % Render
    h = surf(x, y, z);
   
    % Add parameter text
    title([num2str(s{i}.m), '  ', num2str(s{i}.n)]);
    
    % Tidy up
    h.EdgeColor = 'none';
    h.FaceColor = FaceColor;
    axis square;
    axis off;
    axis vis3d;
    light;
end
    
% Done
%