import numpy as np
import matplotlib.pyplot as plt
from scipy.integrate import solve_ivp

# Parámetros del resonador
omega_res = 2 * np.pi * 5e9  # Frecuencia de resonancia (Hz)
Q = 1e4  # Factor de calidad
gamma = omega_res / Q  # Tasa de pérdida (1/s)

# Función para simular la dinámica del resonador
def resonator_dynamics(t, y, omega_res, gamma):
    # y = [Re(a), Im(a)] donde a es la amplitud compleja
    re_a, im_a = y
    d_re_a = -gamma * re_a - omega_res * im_a
    d_im_a = -gamma * im_a + omega_res * re_a
    return [d_re_a, d_im_a]

# Condiciones iniciales
a0 = [1.0, 0.0]  # Amplitud inicial en (Re, Im)
t_span = (0, 1e-6)  # Tiempo de simulación
t_eval = np.linspace(*t_span, 1000)

# Resolver ecuación diferencial
sol = solve_ivp(
    resonator_dynamics, t_span, a0, t_eval=t_eval, args=(omega_res, gamma)
)

# Convertir amplitud compleja
amplitude = np.sqrt(sol.y[0]**2 + sol.y[1]**2)

# Graficar la dinámica
plt.figure(figsize=(8, 5))
plt.plot(sol.t, amplitude, label="Amplitud del resonador")
plt.title("Decaimiento de la amplitud en un resonador superconductor")
plt.xlabel("Tiempo (s)")
plt.ylabel("Amplitud")
plt.legend()
plt.grid()
plt.show()

# Simulación del flujo cuántico
phi_0 = 2.067833831e-15  # Cuanto de flujo magnético (Wb)

def josephson_dynamics(t, phi, beta):
    """Dinámica del flujo cuántico en un circuito Josephson."""
    return [phi[1], -beta * np.sin(phi[0])]

# Parámetros del circuito Josephson
beta = 0.5  # Factor de no linealidad
phi_init = [0.1, 0.0]  # Condición inicial [phi, dphi/dt]

# Resolver dinámica del flujo cuántico
sol_phi = solve_ivp(josephson_dynamics, t_span, phi_init, t_eval=t_eval, args=(beta,))

# Graficar dinámica del flujo cuántico
plt.figure(figsize=(8, 5))
plt.plot(sol_phi.t, sol_phi.y[0], label="Flujo magnético φ(t)")
plt.title("Dinámica del flujo cuántico en un circuito Josephson")
plt.xlabel("Tiempo (s)")
plt.ylabel("Flujo magnético φ (Wb)")
plt.legend()
plt.grid()
plt.show()
