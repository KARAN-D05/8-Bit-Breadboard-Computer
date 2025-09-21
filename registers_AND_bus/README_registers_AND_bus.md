# Registers & Data Bus Module

## About
This module implements the core **registers and data bus system** for the 8-bit breadboard computer. 
Registers are built in **Logisim** using standard TTL ICs:

- **74LS175** – Quad D-type flip-flop (for storing register data) 
- **74LS245** – Octal bidirectional bus transceiver (for connecting registers to the 8-bit data bus)

The design allows any register to **input or output data** to the shared 8-bit data bus using control pins (Load or Enable).

---

## Features
- **Four 8-bit registers** connected via a single data bus 
- **Bidirectional data flow** between registers and bus 
- **Control pins** for selective loading or enabling registers 
- Demonstrates how CPUs manage data transfer at the gate level 

---

## How to Use (Logisim)
1. Open the Logisim simulation file (`DataBus.circ`). 
2. Observe the **four registers** connected to the **8-bit data bus**. 
3. Use the **Load pins** to write data from the bus into a register. 
4. Use the **Enable pins** to output a register’s value onto the bus. 
5. Test different combinations to see how multiple registers interact with the bus. 

> Tip: Each register’s output only appears on the bus when its **Enable** pin is active, preventing bus conflicts.

---

## Images
All schematics and snapshots of the module are stored in the `images/` folder.

