
from qiskit_metal.qlibrary.tlines.straight_path import RouteStraight

from qiskit_metal.qlibrary.qubits.transmon_pocket import TransmonPocket

from qiskit_metal import designs, MetalGUI

design = designs.DesignPlanar()

gui = MetalGUI(design)



            # WARNING
#options_connection_pads failed to have a value
Q1 = TransmonPocket(
design,
name='Q1',
options={'connection_pads': {'readout': {'cpw_extend': '100um',
                                 'cpw_gap': 'cpw_gap',
                                 'cpw_width': 'cpw_width',
                                 'loc_H': 1,
                                 'loc_W': 1,
                                 'pad_cpw_extent': '25um',
                                 'pad_cpw_shift': '5um',
                                 'pad_gap': '15um',
                                 'pad_height': '30um',
                                 'pad_width': '200 '
                                              'um',
                                 'pocket_extent': '5um',
                                 'pocket_rise': '65um'}},
 'pad_width': '425 um',
 'pocket_height': '650 um'}
)





            # WARNING
#options_connection_pads failed to have a value
Q2 = TransmonPocket(
design,
name='Q2',
options={'connection_pads': {'readout': {'cpw_extend': '100um',
                                 'cpw_gap': 'cpw_gap',
                                 'cpw_width': 'cpw_width',
                                 'loc_H': 1,
                                 'loc_W': -1,
                                 'pad_cpw_extent': '25um',
                                 'pad_cpw_shift': '5um',
                                 'pad_gap': '15um',
                                 'pad_height': '30um',
                                 'pad_width': '200 '
                                              'um',
                                 'pocket_extent': '5um',
                                 'pocket_rise': '65um'}},
 'pad_width': '425 um',
 'pocket_height': '650 um',
 'pos_x': '1.0 mm'}
)




tunable_coupler = RouteStraight(
design,
name='tunable_coupler',
options={'_actual_length': '0.14999999999999997 '
                   'mm',
 'hfss': {'simulate': True},
 'lead_width': '10um',
 'pin_inputs': {'end_pin': {'component': 'Q2',
                            'pin': 'readout'},
                'start_pin': {'component': 'Q1',
                              'pin': 'readout'}},
 'trace_gap': 'cpw_gap',
 'tunable': {'freq_range': ['4.9GHz',
                            '5.1GHz']}},

type='CPW',
)



gui.rebuild()
gui.autoscale()
        