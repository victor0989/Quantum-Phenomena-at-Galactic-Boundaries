
from qiskit_metal.qlibrary.qubits.star_qubit import StarQubit

from qiskit_metal import designs, MetalGUI

design = designs.DesignPlanar()

gui = MetalGUI(design)


Star = StarQubit(
design,
name='Star',
options={'number_of_connectors': 4,
 'pos_x': '5um',
 'pos_y': '5um'},

component_template=None,
)



gui.rebuild()
gui.autoscale()
        