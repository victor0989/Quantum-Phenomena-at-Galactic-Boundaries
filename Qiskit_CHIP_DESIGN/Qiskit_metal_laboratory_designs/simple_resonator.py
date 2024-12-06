import qiskit_metal as metal
from qiskit_metal import designs, draw
from qiskit_metal import MetalGUI, Dict, Headings
from qiskit_metal.qlibrary.terminations.open_to_ground import OpenToGround
from qiskit_metal.qlibrary.tlines.meandered import RouteMeander

# Define una función reutilizable para crear terminaciones
def create_open_to_ground(design, name, pos_x, pos_y, orientation):
    options = Dict(pos_x=pos_x, pos_y=pos_y, orientation=orientation)
    return OpenToGround(design, name, options=options)

# Crear diseño y GUI
design = designs.DesignPlanar()
gui = MetalGUI(design)

# Obtener opciones de plantilla para RouteMeander
RouteMeander.get_template_options(design)
design.overwrite_enabled = True

# Crear las terminaciones usando la función modular
open_start_meander = create_open_to_ground(design, 'Open_meander_start', '1000um', '0um', '-90')
open_end_meander = create_open_to_ground(design, 'Open_meander_end', '1000um', '1500um', '90')

# Opciones para el resonador meandro
meander_options = Dict(pin_inputs=Dict(
                            start_pin=Dict(component='Open_meander_start', pin='open'),
                            end_pin=Dict(component='Open_meander_end', pin='open')),
                      total_length='9mm',
                      fillet='99.99um')

# Crear el resonador meandro
testMeander = RouteMeander(design, 'meanderTest', options=meander_options)

# Construir, escalar y enfocar en los componentes
gui.rebuild()
gui.autoscale()
gui.zoom_on_components([testMeander.name, open_start_meander.name, open_end_meander.name])

# Capturar y guardar la visualización
gui.screenshot()
gui.figure.savefig('shot.png')

# Mostrar imagen en IPython
from IPython.display import Image, display
_disp_ops = dict(width=500)
display(Image('shot.png', **_disp_ops))

# Cerrar la GUI
gui.main_window.close()


