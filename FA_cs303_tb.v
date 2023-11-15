module FA_cs303_tb();

reg x,y,z;  // Inputs are registers.
wire S,C;   // Outputs are wires.

FA_cs303 dut(x, y, z, C, S); // Our design-under-test.

initial begin
    //  * Our waveform is saved under this file.
    
    $dumpfile("FA_cs303.vcd"); 
    
    // * Get the variables from the module.

    $dumpvars(0,FA_cs303_tb);

    $display("Simulation started.");
    x = 0;  // Set all inputs to zero.
    y = 0;
    z = 0;
    #10;     // Wait 10 time units.
    x = 0;
    y = 0;
    z = 1;
    #10; 
    x = 0;
    y = 1;
    z = 0;
    #10;
    x = 0;
    y = 1;
    z = 1;
    #10;
    x = 1;
    y = 0;
    z = 0;
    #10;
    x = 1;
    y = 0;
    z = 1;
    #10;
    x = 1;
    y = 1;
    z = 0;
    #10;
    x = 1;
    y = 1;
    z = 1;
    #10;
    $display("Simulation finished.");
    $finish(); // Finish simulation.
end

endmodule