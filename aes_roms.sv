module sbox(input logic [7:0] a,
           output logic [7:0] y);
	logic [255:0] sbox[7:0];
	$readmemh(sbox, "sbox.rom");
	assign y = sbox[a];
endmodule

module rcon(input logic [7:0] a,
           output logic [7:0] y);
	logic [255:0] rcon[7:0];
	$readmemh(rcon, "rcon.rom");
	assign y = rcon[a];
endmodule

module gmult2(input logic [7:0] a,
             output logic [7:0] y);
	logic [255:0] gmult2[7:0];
	$readmemh(gmult2, "gmult2.rom");
	assign y = gmult2[a];
endmodule

module gmult3(input logic [7:0] a,
             output logic [7:0] y);
	logic [255:0] gmult3[7:0];
	$readmemh(gmult3, "gmult2.rom");
	assign y = gmult3[a];
endmodule