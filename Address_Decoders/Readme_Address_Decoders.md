## Address Decoders
- Each memory location in the RAM can be identified by an address
- In order to access a specific memeory location we need address decoders

## Features
- 4-Bit address, therefore we can address 16 memory locations (Cell0-Cell15)
- Pins:-
   1) OUT_CONTROL -> If high we can access any memory cell, it enables our adress decode logic to access any memeory cell
   2) E0W1 -> If 0 then the we can put the data of the selected memory cell on to the bus
           -> If 1 then we can read the data from the bus and store it in the memory
   3) A0 -> Least significant bit of our address, when high it holds value of 1
   4) A1 -> When high it holds value of 2
   5) A2 -> When high it holds value of 4
   6) A3 -> Most significant bit of our address, when high it holds value of 8




