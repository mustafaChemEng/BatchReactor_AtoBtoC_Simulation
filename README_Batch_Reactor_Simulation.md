# 🔬 Batch Reactor Simulation – A → B → C

This project simulates a **batch reactor undergoing a sequential reaction** of the form:

> A → B → C

The goal is to model the concentration profiles of all three components (A, B, and C) over time using both **MATLAB** and **Simulink**, and to determine the **maximum concentration of intermediate product B** along with the required reactor volume.

---

## 🧪 Reaction Details

- **Initial Conditions**:
  - CA₀ = 5 mol/L
  - CB₀ = 0 mol/L
  - CC₀ = 0 mol/L
- **Rate Constants**:
  - k₁ = 0.4 min⁻¹ (A → B)
  - k₂ = 0.2 min⁻¹ (B → C)
- **Flow Rate**: 50 L/min (for calculating volume at CB max)

---

## 📈 Objectives

- Simulate dynamic concentration profiles for A, B, and C.
- Identify the **time and volume** at which **CB is maximum**.
- Implement the model using both:
  - MATLAB script (ODEs with `ode45`)
  - Simulink model (standard blocks and MATLAB function blocks)

---

## 📊 Results

- **Maximum CB**: 2.5 mol/L
- **Time at Max CB**: 3.39 minutes
- **Reactor Volume at Max CB**: 169.67 L

![Simulink Block Diagram](./images/simulink_block.png) <!-- Replace with your actual image if available -->

---

## 🛠️ Files

- `BatchReactor_AtoBtoC.m`: MATLAB ODE simulation script
- `BatchReactor.slx`: Simulink model (standard and function-based)
- `Final_Report_Mustafa_Adam.pdf`: Full project report with code, plots, and discussion

---

## 📚 Tools Used

- MATLAB R2024a
- Simulink
- ode45 solver
- Scope, Gain, Sum, Integrator blocks
- MATLAB Function Blocks

---

## 🧠 Learning Outcomes

- Applying kinetic modeling for batch reactors
- Transitioning from ODEs to block-based simulation
- Interpreting concentration curves for intermediate products
- Evaluating maximum yield conditions and sizing batch reactors

---

## 👨‍🎓 Author

**Mustafa Ali Yahya Adam**  
Chemical Engineering Undergraduate  
Bolu Abant Izzet Baysal University, Türkiye  
Erasmus Candidate – 2025

---

## 📩 Contact

If you’re interested in this project or want to collaborate, feel free to connect:

- [LinkedIn](https://www.linkedin.com/in/mustafa-adam-2b5624257/)
- Email: your_email@example.com
