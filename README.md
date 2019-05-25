# Superformula
Generates 3D superellipses and visualises them in MATLAB.

### Installation
Add the scripts in this repository to your MATLAB path. 

### How to
To use the graphic interface, simply run:
SuperformulaGui

To generate a single superformula solid with specific parameters, use  
s = Superformula(m, n, a, grain)  
  
And to visualise it, use
SuperformulaDisplay(s);
  
If you wish to generate a randomised family of superformula solids, use  
s = SuperformulaRandomize(Num, M, N, A, Grain);  
  
### About
Superformula equation described in Gielis, J. (2003). A generic geometric transformation that unifies a  wide range of natural and abstract shapes. American Journal of Botany, 90(3), pp.333-338.

v1.0.0 25/05/2019

Ivan Alvarez  
FMRIB, University of Oxford 
