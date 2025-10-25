## Bugs: This file contains all the bugs discovered in the modules and will give the reason for the occurence of bug and how it was debugged

## 1) **ALU Gate Implementation**
 - In the subtraction mode of [8Bit_ALU_GI.circ](../ALU) the result getting outputted was correct sometimes and sometimes not.
 - It seemed completely random and i initially thought it was a simulator bug rather than a design bug
 - After a lot of trial and error i find out it happens due to using 2 seperate 4 Bit ALU's in case of subtraction

   ## Reason
 - Even though the value (1,2,4,8,...,128) given to pins were consistent with the logic but due to using 2 seperate 4 bit ALU's the output of that individual ALU would be wrong(in 2's complement form), if the value of B pins is greater than value of A pins despite the overall value of A being high the result would still be wrong.
 - Eg: A->0110 0000 (96) B-> 0000 1111 (15) the ALU outputs 97 which is wrong it should be 81
 - let us denote the first 4 strings by 1 so A1 is 0110 and B1 is 0000 and next four by A2 and B2
 - as our 8 Bit ALU is made up of 2-4 Bit ALU'sso A1 and B1 are computed seperately thus this outputs (A1-B1)-> 0110 (6)
 - The second 4 Bit ALU computes (A2-B2), here B2 is greater than A2 thus the result we get is in it's 2's complement form thus not consitent with the mathematical logic. So we get (A2-B2)-> 0001 (1)
 - So now the entire string is 01100001 (97), far from the actual value
