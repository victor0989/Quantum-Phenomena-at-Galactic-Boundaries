from qiskit_metal import designs, MetalGUI
from qiskit_metal.qlibrary.qubits.transmon_pocket import TransmonPocket
from PyQt5.QtWidgets import QApplication  # Importar QApplication desde PyQt5

# Crea un diseño básico en Metal
design = designs.DesignPlanar()

# Inicia el GUI
gui = MetalGUI(design)

# Agrega un transmon qubit
qubit = TransmonPocket(design, 'Q1', options=dict(pos_x='0um', pos_y='0um'))

# Renderiza y visualiza
gui.rebuild()
gui.autoscale()

# Genera y guarda el diseño como imagen en un archivo
gui.screenshot()

# Crear una instancia de la aplicación Qt
app = QApplication([])  # El argumento es necesari
# o, aunque vacío
app.exec_()  # Inicia el ciclo de eventos de Qt

# Mantener el script activo para que no se cierre la ventana
input("Press Enter to exit...")  # Esto espera que el usuario presione Enter antes de cerrar el script



