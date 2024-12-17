from sklearn.linear_model import LinearRegression
import numpy as np
import matplotlib.pyplot as plt

# Datos simulados de ejemplo (temperatura, corriente, resistencia)
data = np.array([
    [100, 0.01, 1.5],  # Temperatura (K), Corriente (A), Resistencia (Ohm)
    [150, 0.02, 2.0],
    [200, 0.03, 2.5],
])

# Variables independientes (características)
X = data[:, :2]  # Temperatura y Corriente
# Variable dependiente (voltaje)
y = data[:, 2]  # Voltaje

# Crear el modelo de regresión
model = LinearRegression()
model.fit(X, y)

# Predicción para nuevos datos
temp, current = 180, 0.025  # Ejemplo de valores de entrada
voltage_pred = model.predict([[temp, current]])

print(f"Predicted voltage: {voltage_pred[0]:.2f} V")

# Visualización de los datos
plt.scatter(data[:, 0], y, color='blue', label='Original data')
plt.scatter(temp, voltage_pred, color='red', label='Prediction', marker='x', s=100)
plt.xlabel('Temperature (K)')
plt.ylabel('Voltage (V)')
plt.title('Voltage Prediction based on Temperature and Current')
plt.legend()
plt.grid()
plt.show()
