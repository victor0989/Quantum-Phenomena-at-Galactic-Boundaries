import qiskit_metal as metal
from qiskit_metal import designs, draw
from qiskit_metal import MetalGUI, Dict, Headings

design = designs.DesignPlanar({}, True)
design.chips.main.size['size_x'] = '3mm'
design.chips.main.size['size_y'] = '3mm'

gui = MetalGUI(design)

from qiskit_metal.qlibrary.qubits.transmon_cross_fl import TransmonCrossFL
from qiskit_metal.qlibrary.couplers.tunable_coupler_01 import TunableCoupler01

TransmonCrossFL.get_template_options(design)

Q1 = TransmonCrossFL(design, 'Q1', options = dict(pos_x = '0', pos_y='-0.3mm',
                                                 connection_pads = dict(
                                                     bus_01 = dict(connector_location = '180',claw_length ='95um'),
                                                     readout = dict(connector_location = '0')),
                                                 fl_options = dict()))

Q2 = TransmonCrossFL(design, 'Q2', options = dict(pos_x = '0', pos_y='0.3mm', orientation = '180',
                                                 connection_pads = dict(
                                                     bus_02 = dict(connector_location = '0',claw_length ='95um'),
                                                     readout = dict(connector_location = '180')),
                                                 fl_options = dict()))


tune_c_Q12 = TunableCoupler01(design,'Tune_C_Q12', options = dict(pos_x = '-0.06mm', pos_y = '0',
                                                                  orientation=90, c_width='500um'))

gui.rebuild()
gui.autoscale()
# Get a list of all the qcomponents in QDesign and then zoom on them.
all_component_names = design.components.keys()

gui.zoom_on_components(all_component_names)
#Save screenshot as a .png formatted file.
gui.screenshot()

# Screenshot the canvas only as a .png formatted file.
gui.figure.savefig('shot.png')

from IPython.display import Image, display
_disp_ops = dict(width=500)
display(Image('shot.png', **_disp_ops))

gui.main_window.close()
