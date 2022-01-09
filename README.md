# Decrypting-a-hex-text
## Given the input of a hex string, it is required to display at the standard output the assembly instruction executed. 
### For example, for input A78801C00A7890EC04, it will be displayed at standard output x 1 let x -14 div.
## For operand coding we have the following structure:   
• Encoding is 12 bits (1.5 Bytes);  
• The significance of the bits is as follows: 

- the first bit, b0 is always equal to 1;  
- the next 2 bits identify what type the operand has: if we have 00, then the operand is number, and if we have 01, then the operand is variable;  
- if we had the number identifier, 00, then b3 is the sign bit: 0 means that the number is considered positive, respectively 1 means that the number is considered negative.
If we had the identifier 01, then the signal bit b3 will be considered 0;  
- the operand can be, as the case may be, as we have seen: either a positive number (from 0 to 255), or a negative number (also from 0 to 255, but with a changed sign), or a variable - the variables consist only of -a single letter. For example, if we have in the coding of the operand 01111000, 1111000 is actually 120 in base 10, which corresponds to the ASCII code for x.
- Thus, a complete 12-bit encoding 1 01 0 01111000 means that the current operand is variable x. If we had the same representation in the operand, but with a different identifier code, for example 00, 1 00 0 01111000, it would have been the integer 120, and if we had the sign bit 1, 1 00 1 01111000, it would have been the integer -120.  
- It only remains to codify the operations.  
- They will follow a similar structure - an initial bit 1, a identifier, and an operation code applied up to 12 bits in length:  
![image](https://user-images.githubusercontent.com/95349158/148680104-392a433d-34a3-4808-b250-67f5c73a03dc.png)
- We have the following encodings:      
**Coding operation**  
_let 000000000  
add 000000001  
under 000000010  
mul 000000011  
div 000000100_  
- The identifier is, in this case, 10 (the two bits that specify the identifier). Thus, the representation of an add operation would be 1 10 000000001.
For clarity, we present the identifiers in the following table:  
**Identifier Significance**  
_00 whole number  
01 variable  
10 operation_  
## An example of translation
Consider that we want to represent the instruction x 1 let x -14 div.
We will use the formats described above, and we will represent each field in turn.
1. x: as shown in an example above, x is encoded 1 01 0 01111000. We will group 4 digits each, so that the representation of x is 1010 0111 1000.
2. we encode it to 1. It is a positive integer operand encoding, so we have the identifier 00 and the sign bit 0. Its representation will be 1 00 0 00000001, and on the grouping 4 digits 1000 0000 0001.
3. let is an operation, it will be coded as an operation, thus having the identifier 10, respectively the operation code 000000000. Its representation will be 1 10 000000000, and on the grouping 4
digits 1100 0000 0000.
4. x will be represented again as 1010 0111 1000.
5. -14 is represented as operating a negative integer, so with the identifier 00, the sign bit 1, and the value 14 in the base 2 → 1110, but on 8 bits, so with 4 bits of 0 on the left (insignificant): 00001110. -14 will be represented, so 1 00 1 00001110, and on the group 4 digits each 1001 0000 1110.  
6. Finally, div is an operation, so the identifier 10, and the coding of the operation according to the table 000000100, so that it will be 1 10 000000100, and on the group 4 digits 1100 0000 0100.  
**In this case, we can concatenate all the binary representations, and have:**     
1010 0111 1000 1000 0000 0001 1100 0000 0000 1010 0111 1000 1001 0000 1110 1100 0000 0100  
**respectively in the hex:**  
A7 88 01 C0 0A 78 90 EC 04  
- Thus, we have that the operation in our assembly, x 1 let x -14 div, is translated into machine code in hex representation in A7 88 01 C0 0A 78 90 EC 04.
