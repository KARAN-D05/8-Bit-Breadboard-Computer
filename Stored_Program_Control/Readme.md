# 📦Stored Program Control
- This machine is controlled by a microprogram consisting of pre-encoded microinstructions stored in a clock-driven flowing memory. Each microinstruction advances sequentially through memory and directly drives the machine’s control and data signals when it reaches the execution interface.

<p align="center">
  <img src="images/Stored_Program_Control.png" alt="Stored Program Control" width="800"><br>
  <strong>Figure:</strong> Flow-sequenced microprogram control memory driving the machine.
</p>

## 📐 Instruction Format
- Bit 1: Load Register A
- Bit 2: Enable Register A
- Bit 3: Load Register B
- Bit 4: Enable Register B
- Bit 5: Load Memory Address Register
- Bit 6: Enable Memory Address Register
- Bit 7: Enable Input Data Lines
- Bit 8: RAM Chip Enable
- Bit 9: E0W1
- Bit 10: Enable Program Counter Operation
- Bit 11: Load Program Counter
- Bit 12: Enable Program Counter
- Bit 13: Enable ALU
- Bit 14: SUB
- Bit 15: Load Instruction Register
- Bit 16: Enable Instruction Register

## 🧪Sample Program
- 


## ⚙️Architectural details
- Refer [This](https://github.com/KARAN-D05/Computing_Machinery_from_Scratch/tree/main/RAM_V4) for architectural details about the program flowing memory.
