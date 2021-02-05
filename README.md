#### MODULE NAME
       RF

#### DEPENDENCIES
       Flopenr_32, Flopenr, DSwitch, MUX32_32, MUX32, Decoder_32

#### INPUTS
Name  | Size(Bits)
------|------------
clk  |     1      
reset |     1     
we   |     1      
r1a  |     5      
r2a  |     5      
wa   |     5      
wd   |     32     

#### OUTPUTS
Name | Size(Bits)
-----|------------
r1d  |     32    
r2d  |     32     

#### DESCRIPTION
       MIPS register file, containing all 32-bit MIPS registers

       When reset = 1, all registers are set to zero

       Otherwise:
         -r1d is set to the contents of register #r1a
         -r2d is set to the contents of register #r2a
         -if (we == 1), set register #wa equal to wd

#### AUTHOR
       Alexander T Pastoriza
       Trevor Cickovski

#### SEE ALSO
       qms(1), modclone(1)
