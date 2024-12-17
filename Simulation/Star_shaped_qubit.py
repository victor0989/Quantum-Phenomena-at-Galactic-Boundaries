import qiskit_metal as metal
import numpy as np
from math import *
from qiskit_metal import designs, draw, Dict
from qiskit_metal.qlibrary.core import BaseQubit, QComponent
from qiskit_metal import MetalGUI
from qiskit_metal.qlibrary.qubits.star_qubit import StarQubit

design = designs.DesignPlanar()
gui = MetalGUI(design)
gui.rebuild()

StarQubit.get_template_options(design)
design.overwrite_enabled = True

qubit_options = dict(
    pos_x = '5um',
    pos_y = '5um',
    number_of_connectors = 4
)

q1 = StarQubit(design, 'Star', options=qubit_options)

gui.rebuild()
gui.autoscale()
gui.zoom_on_components(['Star'])

q1
gui.screenshot()
gui.figure.savefig('shot.png')

from IPython.display import Image, display
_disp_ops = dict(width=500)
display(Image('shot.png', **_disp_ops))

gui.main_window.close()

