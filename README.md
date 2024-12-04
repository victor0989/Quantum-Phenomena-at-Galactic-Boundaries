# Quantum Horizons: Modeling Extreme Galactic Phenomena in Computational Physics
from qiskit_metal import designs, draw, MetalGUI

# design
design = designs.DesignPlanar()
gui = MetalGUI(design)

# resonator
resonator = design.add_qcomponent('Resonator', options=dict(length='300um'))
gui.show()

![Quantum Horizons Image](https://github.com/victor0989/Quantum-Phenomena-at-Galactic-Boundaries/blob/main/imagen/Hyper_Space/imagen.png)

# Meaning and content of the project

# "The Edge of Infinity": 
Evokes the idea of studying phenomena at the boundaries of extreme objects, such as event horizons or quantum edges in galactic systems.
"Quantum Phenomena at Galactic Boundaries": Highlights the focus on quantum effects occurring at the outermost limits of supermassive black holes, neutron stars, and magnetars.The title captures both the scientific and the technical scope of modeling boundary-layer quantum mechanics using tools like MATLAB, COMSOL, and Qiskit.

# "Quantum Horizons": 
Retains the connection to black hole event horizons and quantum-scale exploration.
"Exploring the Edge of Infinity": Captures the boundary-layer phenomena at the extreme edges of galactic objects, blending with the concept of infinity.

# Tools used are:
1. Qiskit for quantum circuit simulation and signal detection in quantum channels, 
2. Documentation on Supermassive Black Holes, Magnetars, and Neutron Stars can inspire fascinating projects. Below, I'll expand on the ideas of this project in English, providing additional examples in Qiskit and HDL (Hardware Description Language).
3. C example GPIO:
   HAL_GPIO_writePin(GPIOA, GPIO_PIN_5, 1);
      HAL_Delay(1000);
      HAL_GPIO_WritePin(GPIOA, GPIO_PIN_5, 0);
      HAL_Delay(1000);

STM32F103RBTx
LQFP64

# 3. Example:

% Initialize COMSOL Model
model = comsol.ModelUtil.create('Model');
model.modelPath('C:\COMSOL\MagneticFieldSimulation');

% Create 3D geometry (sphere to represent material)
geom1 = model.geom.create('geom1', 3);
geom1.feature.create('sph1', 'Sphere');
geom1.feature('sph1').set('r', '1e-3'); % Radius in meters

% Define material properties (using air and iron for example)
mat1 = model.material.create('mat1', 'Common');
mat1.propertyGroup('def').set('mu', {'1', '1e-5'}); % Relative permeability

% Add Magnetic Fields (mf) physics
mf = model.physics.create('mf', 'MagneticFields', 'geom1');
mf.feature.create('f1', 'MagneticField', 3);
mf.feature('f1').set('B0', [0, 0, 1e5]); % Uniform magnetic field in z-direction

% Set boundary conditions (magnetic insulation on boundary)
mf.feature.create('b1', 'Boundary', 2);
mf.feature('b1').set('BoundaryType', 'MagneticInsulation');

% Mesh the geometry
mesh1 = model.mesh.create('mesh1', 'geom1');
mesh1.autoMeshSize(2); % Set mesh size for better accuracy

% Run the simulation
study1 = model.study.create('std1');
study1.feature.create('stat', 'Stationary');
study1.run;

% Plot the magnetic field results
model.result.create('pg1', 'PlotGroup3D');
model.result('pg1').create('surf1', 'Surface');
model.result('pg1').feature('surf1').set('expr', 'mf.B');
model.result('pg1').run;

