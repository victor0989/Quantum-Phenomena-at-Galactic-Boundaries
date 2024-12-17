# Qiskit Metal Design
import qiskit_metal as metal
from qiskit_metal import designs, draw
from qiskit_metal import MetalGUI, Dict

# Initial design
design = designs.DesignPlanar({}, True)
design.chips.main.size['size_x'] = '2mm'
design.chips.main.size['size_y'] = '2mm'

gui = MetalGUI(design)

# Importing components
from qiskit_metal.qlibrary.qubits.transmon_pocket import TransmonPocket
from qiskit_metal.qlibrary.tlines.straight_path import RouteStraight

# Define qubits
q1 = TransmonPocket(design, 'Q1', options=dict(
    pad_width='425 um',
    pocket_height='650 um',
    connection_pads=dict(
        readout=dict(loc_W=+1, loc_H=+1, pad_width='200 um')
    )
))

q2 = TransmonPocket(design, 'Q2', options=dict(
    pos_x='1.0 mm',
    pad_width='425 um',
    pocket_height='650 um',
    connection_pads=dict(
        readout=dict(loc_W=-1, loc_H=+1, pad_width='200 um')
    )
))

# Route between qubits with tunable coupling
tunable_coupler = RouteStraight(design, 'tunable_coupler', Dict(
    pin_inputs=Dict(
        start_pin=Dict(component='Q1', pin='readout'),
        end_pin=Dict(component='Q2', pin='readout')
    ),
    lead_width='10um',
    hfss=dict(simulate=True),
    tunable=dict(freq_range=['4.9GHz', '5.1GHz'])  # Tunable coupler
))

# Display in GUI
gui.rebuild()
gui.autoscale()
gui.zoom_on_components(list(design.components.keys()))
gui.screenshot('design_screenshot.png')

# Display the captured design
from IPython.display import Image, display
display(Image('design_screenshot.png', width=500))

# Closing GUI
gui.main_window.close()

# --------------------------
# Physical Modeling with SciPy
# --------------------------

import numpy as np
from scipy.integrate import solve_ivp
import matplotlib.pyplot as plt

# Define coupler dynamics (oscillators)
def coupler_dynamics(t, y, omega, g):
    q1, q2 = y
    dq1_dt = -1j * (omega * q1 + g * q2)
    dq2_dt = -1j * (omega * q2 + g * q1)
    return [dq1_dt, dq2_dt]

# Parameters for qubits and coupling
omega = 2 * np.pi * 5e9  # Qubit frequency (Hz)
g = 2 * np.pi * 100e6    # Coupling strength (Hz)

# Initial state and simulation time
t_span = (0, 1e-9)  # Time span in seconds
y0 = [1 + 0j, 0 + 0j]  # Initial amplitudes
t_eval = np.linspace(0, 1e-9, 100)  # Evaluation times

# Solve the dynamics
solution = solve_ivp(coupler_dynamics, t_span, y0, args=(omega, g), t_eval=t_eval)

# Plot the probability evolution
plt.plot(solution.t, np.abs(solution.y[0])**2, label="Qubit 1")
plt.plot(solution.t, np.abs(solution.y[1])**2, label="Qubit 2")
plt.xlabel("Time (s)")
plt.ylabel("Probability")
plt.legend()
plt.title("Tunable Coupler Dynamics")
plt.grid()
plt.show()

# --------------------------
# FPGA Simulation Interface (Outline)
# --------------------------

# This section outlines how to integrate FPGA signal simulation
# with Python using PySerial or other interfaces for dynamic control.

# Example: Sending dynamic coupler data to an FPGA using PySerial
import serial

# Establish communication with the FPGA (example port and baudrate)
fpga_port = serial.Serial(port="COM3", baudrate=115200)

# Generate a control signal (e.g., for tunable coupling)
control_signal = [f"{freq}\n" for freq in np.linspace(4.9e9, 5.1e9, 10)]

# Send signals to the FPGA
for signal in control_signal:
    fpga_port.write(signal.encode())
    response = fpga_port.readline().decode()
    print("FPGA Response:", response)

fpga_port.close()
