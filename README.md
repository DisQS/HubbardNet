
This code is modified based on the paper:

Ziyan Zhu, Marios Mattheakis, Weiwei Pan, and
Efthimios Kaxiras, “HubbardNet: Efficient predictions
of the Bose-Hubbard model spectrum with deep neural
networks,” Physical Review Research 5, 043084 (2023).

1D/2D ground state: energy-based training using ADAM. Activation function : $\exp$

1D/2D excited states: fractal dimensions-based training using ADAM. Activation function: linear, $\exp$, $\exp(\text{sgn}(u^2))$

