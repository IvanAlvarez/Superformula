# Superformula
Generates 3D superellipses and visualises them in MATLAB.

### Installation
Add the scripts in this repository to your MATLAB path. 

### How to
To generate a single superformula solid with specific parameters, use  
s = Superformula(m, n, a, grain)  
  
To visualise it, use  
SuperformulaDisplay(s);
  
To generate a randomised family of superformula solids, use  
s = SuperformulaRandomize(Num, M, N, A, Grain);  
  

### About
Superformula equation described in Gielis, J. (2003). A generic geometric transformation that unifies a  wide range of natural and abstract shapes. American Journal of Botany, 90(3), pp.333-338.

Ivan Alvarez  
FMRIB, University of Oxford  
