`default_nettype none

module Ram_1w_1rs #(
  parameter wordCount = 256,
  parameter wordWidth = 32,
  parameter clockCrossing = 1'b0,
  parameter technology = "auto",
  parameter readUnderWrite = "dontCare",
  parameter wrAddressWidth = 8,
  parameter wrDataWidth = 32,
  parameter wrMaskWidth = 1,
  parameter wrMaskEnable = 1'b0,
  parameter rdAddressWidth = 8,
  parameter rdDataWidth = 32 
) (
`ifdef USE_POWER_PINS
  inout vccd1,	// User area 1 1.8V supply
  inout vssd1,	// User area 1 digital ground
`endif
  input wr_clk, //i
  input wr_en, //i
  input [wrMaskWidth-1:0] wr_mask, //i
  input [wrAddressWidth-1:0] wr_addr, //i
  input [wrDataWidth-1:0] wr_data, //i
  input rd_clk, //i
  input rd_en, //i
  input [rdAddressWidth-1:0] rd_addr, //i
  output reg [rdDataWidth-1:0] rd_data  //o
);

wire wr_mask0;
assign wr_mask0 = wrMaskEnable?wr_mask:4'hf;

sky130_sram_1kbyte_1rw1r_32x256_8 ram (
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),
`endif
    .clk0   (wr_clk),
    .csb0   (~wr_en),
    .web0   (~wr_en),
    .wmask0 (wr_mask0),
    .addr0  (wr_addr[7:0]),
    .din0   (wr_data),
    .dout0  (),
    .clk1   (rd_clk),
    .csb1   (~rd_en),
    .addr1  (rd_addr[7:0]),
    .dout1  (rd_data)
);
endmodule

`default_nettype wire
