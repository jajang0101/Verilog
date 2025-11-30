# LDM (LED Dot Matrix)

Control the 16*16 display

- Pixel data is splited into 16 lines (line_16[15:0]).
- For each line, nth bit represents the state of the nth LED
- LDM_ADDR selects a line.
- At every S_5 of the fsm, the line switches to the next.
