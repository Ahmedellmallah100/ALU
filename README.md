# Arithmetic Logic Unit (ALU) Design — 8-bit

An essential digital system project designing an 8-bit ALU capable of performing arithmetic and logic operations. The design includes input conditioning, binary-to-BCD conversion, and 7-segment display driving modules for comprehensive functionality.

---

## 🗂️ Project Agenda

1. Overview of the Project  
2. Block Diagram  
3. Debouncing Block  
4. ALU Core Block  
5. Binary to BCD Block  
6. Clock Divider Block  
7. Anode Select Block  
8. 7-Segment Multiplexer  
9. 7-Segment Decoder  
10. Top Module  

---

## 🔍 Project Overview

The 8-bit ALU supports six core operations:
- Unsigned Addition  
- Unsigned Subtraction  
- 2’s Complement Negation of Operand A  
- Bitwise AND  
- Bitwise OR  
- Bitwise XOR  

Peripheral components include:  
- **Debouncer:** Cleanses noisy push button inputs  
- **ALU Core:** Arithmetic and logic operation unit  
- **Binary to BCD Converter:** Prepares data for 7-segment display  
- **Clock Divider:** Reduces clock frequency for multiplexing  
- **Anode Select:** Activates individual 7-segment digits sequentially  
- **7-Segment Multiplexer:** Selects BCD digits or letter display  
- **7-Segment Decoder:** Translates BCD to segment control signals  
- **Top Module:** Integrates all submodules and manages interfaces  

---

## 📊 Block Diagram

Inputs → Debouncing → ALU Core → Binary-to-BCD Conversion → Display Multiplexing → Output  
- Inputs: Push Buttons (Load A, Load B, Operation), Switches (Operand/Opcode)  
- Outputs: 8-bit LEDs and 7-segment display (ones, tens, hundreds, letter)

*(Add your block diagram image here)*

---

## ⚙️ Module Details

### Debouncing Block
- Removes noise from mechanical push buttons  
- Implements clock division and flip-flop synchronization for clean signals  

### ALU Core
- Takes two 8-bit operands and a 3-bit opcode  
- Performs specified arithmetic/logic operations  
- Produces 9-bit output including carry  
- Outputs 4-bit character code for display (e.g., “A” or “B”)  

### Binary to BCD Conversion
- Converts 8-bit binary ALU output to BCD format suitable for display  

### Clock Divider
- Scales down high-frequency clock (e.g., 50MHz) for multiplexed display and debouncing  

### Anode Select and 7-Segment Multiplexer
- Cycles through displaying one digit at a time  
- Selects between number digits and letters  

### 7-Segment Decoder
- Converts BCD inputs to segment control signals for display  

### Top Module
- Integrates all blocks and manages input/output coordination  

---

## ✅ Summary

- Designed and simulated a versatile 8-bit ALU with six core operations  
- Developed supporting modules for robust input handling and display output  
- Verified system performance thoroughly using simulation and testbenches  

---

## 🔗 LinkedIn Post & PDF Documentation

[![View ALU Project on LinkedIn](https://media-exp1.licdn.com/dms/image/C4E22AQF99io_6T6E9g/feedshare-shrink_800/0/1692223073989?e=2147483647&v=beta&t=rSw0lmdpboeCrGU-ygd0FTyOfOLo5oZXrAOVWrw7tas)](https://www.linkedin.com/posts/ahmed-ellmallah-86883b341_alu-activity-7369378935089844227-4_47)

Click the image above to view the full project post and access the PDF documentation on LinkedIn.

---

_Last updated: September 2025_
