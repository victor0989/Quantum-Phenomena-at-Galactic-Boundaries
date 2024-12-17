
from qiskit_metal.qlibrary.tlines.anchored_path import RouteAnchors

from qiskit_metal.qlibrary.qubits.transmon_pocket_cl import TransmonPocketCL

from qiskit_metal.qlibrary.terminations.launchpad_wb import LaunchpadWirebond

from qiskit_metal.qlibrary.tlines.meandered import RouteMeander

from qiskit_metal.qlibrary.terminations.launchpad_wb_coupled import LaunchpadWirebondCoupled

from qiskit_metal import designs, MetalGUI

design = designs.DesignPlanar()

gui = MetalGUI(design)



            # WARNING
#options_connection_pads failed to have a value
Q1 = TransmonPocketCL(
design,
name='Q1',
options={'cl_off_center': '-50um',
 'cl_pocket_edge': '180',
 'connection_pads': {'a': {'cpw_extend': '50um',
                           'cpw_gap': 'cpw_gap',
                           'cpw_width': 'cpw_width',
                           'loc_H': -1,
                           'loc_W': 1,
                           'pad_cpw_extent': '25um',
                           'pad_cpw_shift': '5um',
                           'pad_gap': '15um',
                           'pad_height': '30um',
                           'pad_width': '70um',
                           'pocket_extent': '5um',
                           'pocket_rise': '65um'},
                     'b': {'cpw_extend': '50um',
                           'cpw_gap': 'cpw_gap',
                           'cpw_width': 'cpw_width',
                           'loc_H': -1,
                           'loc_W': -1,
                           'pad_cpw_extent': '25um',
                           'pad_cpw_shift': '5um',
                           'pad_gap': '15um',
                           'pad_height': '30um',
                           'pad_width': '125um',
                           'pocket_extent': '5um',
                           'pocket_rise': '65um'},
                     'c': {'cpw_extend': '50um',
                           'cpw_gap': 'cpw_gap',
                           'cpw_width': 'cpw_width',
                           'loc_H': 1,
                           'loc_W': -1,
                           'pad_cpw_extent': '25um',
                           'pad_cpw_shift': '5um',
                           'pad_gap': '15um',
                           'pad_height': '30um',
                           'pad_width': '110um',
                           'pocket_extent': '5um',
                           'pocket_rise': '65um'}},
 'gds_cell_name': 'FakeJunction_01',
 'pos_x': '+2420um',
 'pos_y': '69um'}
)





            # WARNING
#options_connection_pads failed to have a value
Q2 = TransmonPocketCL(
design,
name='Q2',
options={'cl_off_center': '-50um',
 'cl_pocket_edge': '180',
 'connection_pads': {'a': {'cpw_extend': '50um',
                           'cpw_gap': 'cpw_gap',
                           'cpw_width': 'cpw_width',
                           'loc_H': -1,
                           'loc_W': 1,
                           'pad_cpw_extent': '25um',
                           'pad_cpw_shift': '5um',
                           'pad_gap': '15um',
                           'pad_height': '30um',
                           'pad_width': '70um',
                           'pocket_extent': '5um',
                           'pocket_rise': '65um'},
                     'b': {'cpw_extend': '50um',
                           'cpw_gap': 'cpw_gap',
                           'cpw_width': 'cpw_width',
                           'loc_H': -1,
                           'loc_W': -1,
                           'pad_cpw_extent': '25um',
                           'pad_cpw_shift': '5um',
                           'pad_gap': '15um',
                           'pad_height': '30um',
                           'pad_width': '125um',
                           'pocket_extent': '5um',
                           'pocket_rise': '65um'},
                     'c': {'cpw_extend': '50um',
                           'cpw_gap': 'cpw_gap',
                           'cpw_width': 'cpw_width',
                           'loc_H': 1,
                           'loc_W': -1,
                           'pad_cpw_extent': '25um',
                           'pad_cpw_shift': '5um',
                           'pad_gap': '15um',
                           'pad_height': '30um',
                           'pad_width': '110um',
                           'pocket_extent': '5um',
                           'pocket_rise': '65um'}},
 'gds_cell_name': 'FakeJunction_01',
 'orientation': '270',
 'pos_x': '0um',
 'pos_y': '-857.6um'}
)





            # WARNING
#options_connection_pads failed to have a value
Q3 = TransmonPocketCL(
design,
name='Q3',
options={'cl_off_center': '-50um',
 'cl_pocket_edge': '180',
 'connection_pads': {'a': {'cpw_extend': '50um',
                           'cpw_gap': 'cpw_gap',
                           'cpw_width': 'cpw_width',
                           'loc_H': -1,
                           'loc_W': 1,
                           'pad_cpw_extent': '25um',
                           'pad_cpw_shift': '5um',
                           'pad_gap': '15um',
                           'pad_height': '30um',
                           'pad_width': '70um',
                           'pocket_extent': '5um',
                           'pocket_rise': '65um'},
                     'b': {'cpw_extend': '50um',
                           'cpw_gap': 'cpw_gap',
                           'cpw_width': 'cpw_width',
                           'loc_H': -1,
                           'loc_W': -1,
                           'pad_cpw_extent': '25um',
                           'pad_cpw_shift': '5um',
                           'pad_gap': '15um',
                           'pad_height': '30um',
                           'pad_width': '125um',
                           'pocket_extent': '5um',
                           'pocket_rise': '65um'},
                     'c': {'cpw_extend': '50um',
                           'cpw_gap': 'cpw_gap',
                           'cpw_width': 'cpw_width',
                           'loc_H': 1,
                           'loc_W': -1,
                           'pad_cpw_extent': '25um',
                           'pad_cpw_shift': '5um',
                           'pad_gap': '15um',
                           'pad_height': '30um',
                           'pad_width': '110um',
                           'pocket_extent': '5um',
                           'pocket_rise': '65um'}},
 'gds_cell_name': 'FakeJunction_01',
 'orientation': '180',
 'pos_x': '-2420um',
 'pos_y': '69um'}
)





            # WARNING
#options_connection_pads failed to have a value
Q4 = TransmonPocketCL(
design,
name='Q4',
options={'cl_off_center': '-50um',
 'cl_pocket_edge': '180',
 'connection_pads': {'a': {'cpw_extend': '50um',
                           'cpw_gap': 'cpw_gap',
                           'cpw_width': 'cpw_width',
                           'loc_H': -1,
                           'loc_W': 1,
                           'pad_cpw_extent': '25um',
                           'pad_cpw_shift': '5um',
                           'pad_gap': '15um',
                           'pad_height': '30um',
                           'pad_width': '70um',
                           'pocket_extent': '5um',
                           'pocket_rise': '65um'},
                     'b': {'cpw_extend': '50um',
                           'cpw_gap': 'cpw_gap',
                           'cpw_width': 'cpw_width',
                           'loc_H': -1,
                           'loc_W': -1,
                           'pad_cpw_extent': '25um',
                           'pad_cpw_shift': '5um',
                           'pad_gap': '15um',
                           'pad_height': '30um',
                           'pad_width': '125um',
                           'pocket_extent': '5um',
                           'pocket_rise': '65um'},
                     'c': {'cpw_extend': '50um',
                           'cpw_gap': 'cpw_gap',
                           'cpw_width': 'cpw_width',
                           'loc_H': 1,
                           'loc_W': -1,
                           'pad_cpw_extent': '25um',
                           'pad_cpw_shift': '5um',
                           'pad_gap': '15um',
                           'pad_height': '30um',
                           'pad_width': '110um',
                           'pocket_extent': '5um',
                           'pocket_rise': '65um'}},
 'gds_cell_name': 'FakeJunction_01',
 'orientation': '90',
 'pos_x': '0um',
 'pos_y': '+857.6um'}
)




cpw1 = RouteMeander(
design,
name='cpw1',
options={'_actual_length': '9.0 mm',
 'fillet': '99.99um',
 'lead': {'end_jogged_extension': '',
          'end_straight': '250um',
          'start_jogged_extension': '',
          'start_straight': '100um'},
 'meander': {'asymmetry': '-413.75um',
             'spacing': '200um'},
 'pin_inputs': {'end_pin': {'component': 'Q4',
                            'pin': 'b'},
                'start_pin': {'component': 'Q1',
                              'pin': 'c'}},
 'total_length': '9000um',
 'trace_gap': 'cpw_gap'},

type='CPW',
)




cpw2 = RouteMeander(
design,
name='cpw2',
options={'_actual_length': '9.0 mm',
 'fillet': '99.99um',
 'lead': {'end_jogged_extension': '',
          'end_straight': '250um',
          'start_jogged_extension': '',
          'start_straight': '100um'},
 'meander': {'asymmetry': '+413.75um',
             'spacing': '200um'},
 'pin_inputs': {'end_pin': {'component': 'Q4',
                            'pin': 'c'},
                'start_pin': {'component': 'Q3',
                              'pin': 'b'}},
 'total_length': '9000um',
 'trace_gap': 'cpw_gap'},

type='CPW',
)




cpw3 = RouteMeander(
design,
name='cpw3',
options={'_actual_length': '8.999999999999996 '
                   'mm',
 'fillet': '99.99um',
 'lead': {'end_jogged_extension': '',
          'end_straight': '250um',
          'start_jogged_extension': '',
          'start_straight': '100um'},
 'meander': {'asymmetry': '-551.75um',
             'spacing': '200um'},
 'pin_inputs': {'end_pin': {'component': 'Q2',
                            'pin': 'b'},
                'start_pin': {'component': 'Q3',
                              'pin': 'c'}},
 'total_length': '9000um',
 'trace_gap': 'cpw_gap'},

type='CPW',
)




cpw4 = RouteMeander(
design,
name='cpw4',
options={'_actual_length': '8.999999999999996 '
                   'mm',
 'fillet': '99.99um',
 'lead': {'end_jogged_extension': '',
          'end_straight': '250um',
          'start_jogged_extension': '',
          'start_straight': '100um'},
 'meander': {'asymmetry': '+551.75um',
             'spacing': '200um'},
 'pin_inputs': {'end_pin': {'component': 'Q2',
                            'pin': 'c'},
                'start_pin': {'component': 'Q1',
                              'pin': 'b'}},
 'total_length': '9000um',
 'trace_gap': 'cpw_gap'},

type='CPW',
)




P1_C = LaunchpadWirebond(
design,
name='P1_C',
options={'lead_length': '0um',
 'orientation': '270',
 'pos_x': '3545um',
 'pos_y': '2812um'},

component_template=None,
)




P2_C = LaunchpadWirebond(
design,
name='P2_C',
options={'lead_length': '0um',
 'orientation': '90',
 'pos_x': '3545um',
 'pos_y': '-2812um'},

component_template=None,
)




P3_C = LaunchpadWirebond(
design,
name='P3_C',
options={'lead_length': '0um',
 'orientation': '90',
 'pos_x': '-3545um',
 'pos_y': '-2812um'},

component_template=None,
)




P4_C = LaunchpadWirebond(
design,
name='P4_C',
options={'lead_length': '0um',
 'orientation': '270',
 'pos_x': '-3545um',
 'pos_y': '2812um'},

component_template=None,
)




P1_Q = LaunchpadWirebondCoupled(
design,
name='P1_Q',
options={'lead_length': '30um',
 'orientation': '180',
 'pos_x': '4020um',
 'pos_y': '0'},

component_template=None,
)




P2_Q = LaunchpadWirebondCoupled(
design,
name='P2_Q',
options={'lead_length': '30um',
 'orientation': '90',
 'pos_x': '-990um',
 'pos_y': '-2812um'},

component_template=None,
)




P3_Q = LaunchpadWirebondCoupled(
design,
name='P3_Q',
options={'lead_length': '30um',
 'orientation': '0',
 'pos_x': '-4020um',
 'pos_y': '0'},

component_template=None,
)




P4_Q = LaunchpadWirebondCoupled(
design,
name='P4_Q',
options={'lead_length': '30um',
 'orientation': '270',
 'pos_x': '990um',
 'pos_y': '2812um'},

component_template=None,
)




ol1 = RouteMeander(
design,
name='ol1',
options={'_actual_length': '8.6 mm',
 'fillet': '99.99um',
 'lead': {'end_jogged_extension': '',
          'end_straight': '0um',
          'start_jogged_extension': '',
          'start_straight': '430um'},
 'meander': {'asymmetry': '+150um',
             'spacing': '200um'},
 'pin_inputs': {'end_pin': {'component': 'P1_Q',
                            'pin': 'tie'},
                'start_pin': {'component': 'Q1',
                              'pin': 'a'}},
 'total_length': '8.6 mm',
 'trace_gap': 'cpw_gap'},

type='CPW',
)




ol3 = RouteMeander(
design,
name='ol3',
options={'_actual_length': '8.6 mm',
 'fillet': '99.99um',
 'lead': {'end_jogged_extension': '',
          'end_straight': '0um',
          'start_jogged_extension': '',
          'start_straight': '430um'},
 'meander': {'asymmetry': '+150um',
             'spacing': '200um'},
 'pin_inputs': {'end_pin': {'component': 'P3_Q',
                            'pin': 'tie'},
                'start_pin': {'component': 'Q3',
                              'pin': 'a'}},
 'total_length': '8.6 mm',
 'trace_gap': 'cpw_gap'},

type='CPW',
)




ol2 = RouteMeander(
design,
name='ol2',
options={'_actual_length': '8.6 mm',
 'fillet': '99.99um',
 'lead': {'end_jogged_extension': '',
          'end_straight': '0um',
          'start_jogged_extension': '',
          'start_straight': '535um'},
 'meander': {'asymmetry': '+200um',
             'spacing': '200um'},
 'pin_inputs': {'end_pin': {'component': 'P2_Q',
                            'pin': 'tie'},
                'start_pin': {'component': 'Q2',
                              'pin': 'a'}},
 'total_length': '8.6 mm',
 'trace_gap': 'cpw_gap'},

type='CPW',
)




ol4 = RouteMeander(
design,
name='ol4',
options={'_actual_length': '8.6 mm',
 'fillet': '99.99um',
 'lead': {'end_jogged_extension': '',
          'end_straight': '0um',
          'start_jogged_extension': '',
          'start_straight': '535um'},
 'meander': {'asymmetry': '+200um',
             'spacing': '200um'},
 'pin_inputs': {'end_pin': {'component': 'P4_Q',
                            'pin': 'tie'},
                'start_pin': {'component': 'Q4',
                              'pin': 'a'}},
 'total_length': '8.6 mm',
 'trace_gap': 'cpw_gap'},

type='CPW',
)




line_cl1 = RouteAnchors(
design,
name='line_cl1',
options={'_actual_length': '3.277251774148665 '
                   'mm',
 'fillet': '99.99um',
 'lead': {'end_jogged_extension': '',
          'end_straight': '225um',
          'start_jogged_extension': OrderedDict([(0,
                                                  ['L',
                                                   '200um'])]),
          'start_straight': '120um'},
 'pin_inputs': {'end_pin': {'component': 'P1_C',
                            'pin': 'tie'},
                'start_pin': {'component': 'Q1',
                              'pin': 'Charge_Line'}},
 'trace_gap': 'cpw_gap'},

type='CPW',
)




line_cl3 = RouteAnchors(
design,
name='line_cl3',
options={'_actual_length': '3.4152517741486648 '
                   'mm',
 'fillet': '99.99um',
 'lead': {'end_jogged_extension': '',
          'end_straight': '225um',
          'start_jogged_extension': OrderedDict([(0,
                                                  ['L',
                                                   '200um'])]),
          'start_straight': '120um'},
 'pin_inputs': {'end_pin': {'component': 'P3_C',
                            'pin': 'tie'},
                'start_pin': {'component': 'Q3',
                              'pin': 'Charge_Line'}},
 'trace_gap': 'cpw_gap'},

type='CPW',
)




line_cl2 = RouteAnchors(
design,
name='line_cl2',
options={'_actual_length': '4.865735698864887 '
                   'mm',
 'anchors': {0: array([ 2. , -2.5])},
 'fillet': '99.99um',
 'lead': {'end_jogged_extension': '',
          'end_straight': '225um',
          'start_jogged_extension': OrderedDict([(0,
                                                  ['L',
                                                   '300um'])]),
          'start_straight': '200um'},
 'pin_inputs': {'end_pin': {'component': 'P2_C',
                            'pin': 'tie'},
                'start_pin': {'component': 'Q2',
                              'pin': 'Charge_Line'}},
 'trace_gap': 'cpw_gap'},

type='CPW',
)




line_cl4 = RouteAnchors(
design,
name='line_cl4',
options={'_actual_length': '4.865735698864887 '
                   'mm',
 'anchors': {0: array([-2. ,  2.5])},
 'fillet': '99.99um',
 'lead': {'end_jogged_extension': '',
          'end_straight': '225um',
          'start_jogged_extension': OrderedDict([(0,
                                                  ['L',
                                                   '300um'])]),
          'start_straight': '200um'},
 'pin_inputs': {'end_pin': {'component': 'P4_C',
                            'pin': 'tie'},
                'start_pin': {'component': 'Q4',
                              'pin': 'Charge_Line'}},
 'trace_gap': 'cpw_gap'},

type='CPW',
)



gui.rebuild()
gui.autoscale()
        