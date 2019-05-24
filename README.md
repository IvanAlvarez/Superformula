# Superformula
Generates 3D superellipses and visualises them in MATLAB.

# How to
Add the scripts in this repository to your MATLAB path. 

To generate a single superformula solid with specific parameters, use:
s = Superformula(m, n, a, grain)

To visualise it, use:
SuperformulaDisplay(s);

To generate a randomised family of superformula solids, use:
 s = SuperformulaRandomize(Num, M, N, A, Grain);
 
20/05/2019 
Ivan Alvarez
FMRIB, University of Oxford
