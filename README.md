
# Numerical Simulation of Contaminant Dispersion Using FEM

## Project Description
This project models the dispersion of a contaminant in a water channel using the Finite Element Method (FEM). The model incorporates second-order temporal discretization and a refined mesh to achieve accurate results. It demonstrates the interplay between convection, diffusion, and source terms in fluid dynamics.

## Features
- **Finite Element Method (FEM) Implementation**:
  - Solves contaminant dispersion using FEM with second-order temporal discretization.
- **Mesh Generation and Refinement**:
  - Employs MATLAB's PDE toolbox to define and refine the mesh.
- **Parameter Customization**:
  - Allows users to adjust water velocity, contaminant flow, and diffusion coefficient.

## Included Files
   - `fem_main.m`: Main MATLAB script implementing FEM for contaminant dispersion.
   - `convection_matrix_computation.m`: Helper script for convection matrix computation.
   - `mesh.m` and `detailed_mesh.m`: Scripts for defining and refining the mesh.

## Requirements
- MATLAB R2020b or higher.

## Usage
1. Clone this repository:
   ```bash
   git clone https://github.com/rmodregoe/contaminant-dispersion-fem.git
   ```
2. Open the MATLAB scripts in MATLAB.
3. Run `trabajomef.m` to execute the simulation.
4. Adjust parameters (e.g., velocity, flow rate, diffusion coefficient) within the script for different scenarios.

## Results
- The simulation visualizes contaminant concentration over time in the water channel.
- Outputs include plots showing the dispersion pattern and concentration profiles.

## License
This project is licensed under the [MIT License](LICENSE).

## Contact
Created by Ricardo Modrego. For questions or comments, contact me at [r.modrego.e@gmail.com](mailto:r.modrego.e@gmail.com).
