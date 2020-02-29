# Superformula
### About

Generates 3D superellipses and visualises them in MATLAB.

The general superformula equations are described in Gielis, J. (2003). [A generic geometric transformation that unifies a wide range of natural and abstract shapes](https://www.ncbi.nlm.nih.gov/pubmed/21659124). American Journal of Botany, 90(3), pp.333-338.

### Installation
Add the scripts in this repository to your MATLAB path.

### How to
To use the graphic interface, simply run

```matlab
SuperformulaGui
```

To generate a single superellipse solid with specific parameters, use

```matlab
s = superformula(m, n, a, grain);
```

To generate a randomised family of superellipse solids, use

```matlab
s = SuperformulaRandomize(num, m, n, a, grain);
```

To visualise one or more superellipse solids, use

```matlab
SuperformulaDisplay(s)
```

### License

v1.0.0 
25/05/2019

Ivan Alvarez
FMRIB, University of Oxford 

