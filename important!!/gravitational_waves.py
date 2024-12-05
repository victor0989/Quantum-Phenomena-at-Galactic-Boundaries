import numpy as np
import matplotlib.pyplot as plt

def gravitational_wave_signal(A, f_start, f_end, duration, sampling_rate):
    t = np.linspace(0, duration, int(sampling_rate * duration))
    f = np.linspace(f_start, f_end, len(t))
    phase = 2 * np.pi * np.cumsum(f / sampling_rate)
    signal = A * np.cos(phase)
    return t, signal

t, signal = gravitational_wave_signal(A=1e-21, f_start=30, f_end=300, duration=1, sampling_rate=10000)
plt.plot(t, signal)
plt.title("Simulated Gravitational Wave Signal")
plt.show()
