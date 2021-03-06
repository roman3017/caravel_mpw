module user_project_wrapper (user_clock2,
    vccd1,
    vccd2,
    vdda1,
    vdda2,
    vssa1,
    vssa2,
    vssd1,
    vssd2,
    wb_clk_i,
    wb_rst_i,
    wbs_ack_o,
    wbs_cyc_i,
    wbs_stb_i,
    wbs_we_i,
    analog_io,
    io_in,
    io_oeb,
    io_out,
    la_data_in,
    la_data_out,
    la_oenb,
    user_irq,
    wbs_adr_i,
    wbs_dat_i,
    wbs_dat_o,
    wbs_sel_i);
 input user_clock2;
 input vccd1;
 input vccd2;
 input vdda1;
 input vdda2;
 input vssa1;
 input vssa2;
 input vssd1;
 input vssd2;
 input wb_clk_i;
 input wb_rst_i;
 output wbs_ack_o;
 input wbs_cyc_i;
 input wbs_stb_i;
 input wbs_we_i;
 inout [28:0] analog_io;
 input [37:0] io_in;
 output [37:0] io_oeb;
 output [37:0] io_out;
 input [127:0] la_data_in;
 output [127:0] la_data_out;
 input [127:0] la_oenb;
 output [2:0] user_irq;
 input [31:0] wbs_adr_i;
 input [31:0] wbs_dat_i;
 output [31:0] wbs_dat_o;
 input [3:0] wbs_sel_i;

 wire zero_;
 wire \i_dout0[0] ;
 wire \i_dout0[10] ;
 wire \i_dout0[11] ;
 wire \i_dout0[12] ;
 wire \i_dout0[13] ;
 wire \i_dout0[14] ;
 wire \i_dout0[15] ;
 wire \i_dout0[16] ;
 wire \i_dout0[17] ;
 wire \i_dout0[18] ;
 wire \i_dout0[19] ;
 wire \i_dout0[1] ;
 wire \i_dout0[20] ;
 wire \i_dout0[21] ;
 wire \i_dout0[22] ;
 wire \i_dout0[23] ;
 wire \i_dout0[24] ;
 wire \i_dout0[25] ;
 wire \i_dout0[26] ;
 wire \i_dout0[27] ;
 wire \i_dout0[28] ;
 wire \i_dout0[29] ;
 wire \i_dout0[2] ;
 wire \i_dout0[30] ;
 wire \i_dout0[31] ;
 wire \i_dout0[3] ;
 wire \i_dout0[4] ;
 wire \i_dout0[5] ;
 wire \i_dout0[6] ;
 wire \i_dout0[7] ;
 wire \i_dout0[8] ;
 wire \i_dout0[9] ;
 wire \i_dout0_1[0] ;
 wire \i_dout0_1[10] ;
 wire \i_dout0_1[11] ;
 wire \i_dout0_1[12] ;
 wire \i_dout0_1[13] ;
 wire \i_dout0_1[14] ;
 wire \i_dout0_1[15] ;
 wire \i_dout0_1[16] ;
 wire \i_dout0_1[17] ;
 wire \i_dout0_1[18] ;
 wire \i_dout0_1[19] ;
 wire \i_dout0_1[1] ;
 wire \i_dout0_1[20] ;
 wire \i_dout0_1[21] ;
 wire \i_dout0_1[22] ;
 wire \i_dout0_1[23] ;
 wire \i_dout0_1[24] ;
 wire \i_dout0_1[25] ;
 wire \i_dout0_1[26] ;
 wire \i_dout0_1[27] ;
 wire \i_dout0_1[28] ;
 wire \i_dout0_1[29] ;
 wire \i_dout0_1[2] ;
 wire \i_dout0_1[30] ;
 wire \i_dout0_1[31] ;
 wire \i_dout0_1[3] ;
 wire \i_dout0_1[4] ;
 wire \i_dout0_1[5] ;
 wire \i_dout0_1[6] ;
 wire \i_dout0_1[7] ;
 wire \i_dout0_1[8] ;
 wire \i_dout0_1[9] ;
 wire o_csb0;
 wire o_csb0_1;
 wire \o_din0[0] ;
 wire \o_din0[10] ;
 wire \o_din0[11] ;
 wire \o_din0[12] ;
 wire \o_din0[13] ;
 wire \o_din0[14] ;
 wire \o_din0[15] ;
 wire \o_din0[16] ;
 wire \o_din0[17] ;
 wire \o_din0[18] ;
 wire \o_din0[19] ;
 wire \o_din0[1] ;
 wire \o_din0[20] ;
 wire \o_din0[21] ;
 wire \o_din0[22] ;
 wire \o_din0[23] ;
 wire \o_din0[24] ;
 wire \o_din0[25] ;
 wire \o_din0[26] ;
 wire \o_din0[27] ;
 wire \o_din0[28] ;
 wire \o_din0[29] ;
 wire \o_din0[2] ;
 wire \o_din0[30] ;
 wire \o_din0[31] ;
 wire \o_din0[3] ;
 wire \o_din0[4] ;
 wire \o_din0[5] ;
 wire \o_din0[6] ;
 wire \o_din0[7] ;
 wire \o_din0[8] ;
 wire \o_din0[9] ;
 wire \o_din0_1[0] ;
 wire \o_din0_1[10] ;
 wire \o_din0_1[11] ;
 wire \o_din0_1[12] ;
 wire \o_din0_1[13] ;
 wire \o_din0_1[14] ;
 wire \o_din0_1[15] ;
 wire \o_din0_1[16] ;
 wire \o_din0_1[17] ;
 wire \o_din0_1[18] ;
 wire \o_din0_1[19] ;
 wire \o_din0_1[1] ;
 wire \o_din0_1[20] ;
 wire \o_din0_1[21] ;
 wire \o_din0_1[22] ;
 wire \o_din0_1[23] ;
 wire \o_din0_1[24] ;
 wire \o_din0_1[25] ;
 wire \o_din0_1[26] ;
 wire \o_din0_1[27] ;
 wire \o_din0_1[28] ;
 wire \o_din0_1[29] ;
 wire \o_din0_1[2] ;
 wire \o_din0_1[30] ;
 wire \o_din0_1[31] ;
 wire \o_din0_1[3] ;
 wire \o_din0_1[4] ;
 wire \o_din0_1[5] ;
 wire \o_din0_1[6] ;
 wire \o_din0_1[7] ;
 wire \o_din0_1[8] ;
 wire \o_din0_1[9] ;
 wire \o_waddr0[0] ;
 wire \o_waddr0[1] ;
 wire \o_waddr0[2] ;
 wire \o_waddr0[3] ;
 wire \o_waddr0[4] ;
 wire \o_waddr0[5] ;
 wire \o_waddr0[6] ;
 wire \o_waddr0[7] ;
 wire \o_waddr0[8] ;
 wire \o_waddr0_1[0] ;
 wire \o_waddr0_1[1] ;
 wire \o_waddr0_1[2] ;
 wire \o_waddr0_1[3] ;
 wire \o_waddr0_1[4] ;
 wire \o_waddr0_1[5] ;
 wire \o_waddr0_1[6] ;
 wire \o_waddr0_1[7] ;
 wire \o_waddr0_1[8] ;
 wire o_web0;
 wire o_web0_1;
 wire \o_wmask0[0] ;
 wire \o_wmask0[1] ;
 wire \o_wmask0[2] ;
 wire \o_wmask0[3] ;
 wire \o_wmask0_1[0] ;
 wire \o_wmask0_1[1] ;
 wire \o_wmask0_1[2] ;
 wire \o_wmask0_1[3] ;

 user_proj mprj (.clk_i(wb_clk_i),
    .o_csb0(o_csb0),
    .o_csb0_1(o_csb0_1),
    .o_web0(o_web0),
    .o_web0_1(o_web0_1),
    .rst_i(wb_rst_i),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wb_clk_i(wb_clk_i),
    .wb_rst_i(wb_rst_i),
    .wbs_ack_o(wbs_ack_o),
    .wbs_cyc_i(wbs_cyc_i),
    .wbs_stb_i(wbs_stb_i),
    .wbs_we_i(wbs_we_i),
    .i_dout0({\i_dout0[31] ,
    \i_dout0[30] ,
    \i_dout0[29] ,
    \i_dout0[28] ,
    \i_dout0[27] ,
    \i_dout0[26] ,
    \i_dout0[25] ,
    \i_dout0[24] ,
    \i_dout0[23] ,
    \i_dout0[22] ,
    \i_dout0[21] ,
    \i_dout0[20] ,
    \i_dout0[19] ,
    \i_dout0[18] ,
    \i_dout0[17] ,
    \i_dout0[16] ,
    \i_dout0[15] ,
    \i_dout0[14] ,
    \i_dout0[13] ,
    \i_dout0[12] ,
    \i_dout0[11] ,
    \i_dout0[10] ,
    \i_dout0[9] ,
    \i_dout0[8] ,
    \i_dout0[7] ,
    \i_dout0[6] ,
    \i_dout0[5] ,
    \i_dout0[4] ,
    \i_dout0[3] ,
    \i_dout0[2] ,
    \i_dout0[1] ,
    \i_dout0[0] }),
    .i_dout0_1({\i_dout0_1[31] ,
    \i_dout0_1[30] ,
    \i_dout0_1[29] ,
    \i_dout0_1[28] ,
    \i_dout0_1[27] ,
    \i_dout0_1[26] ,
    \i_dout0_1[25] ,
    \i_dout0_1[24] ,
    \i_dout0_1[23] ,
    \i_dout0_1[22] ,
    \i_dout0_1[21] ,
    \i_dout0_1[20] ,
    \i_dout0_1[19] ,
    \i_dout0_1[18] ,
    \i_dout0_1[17] ,
    \i_dout0_1[16] ,
    \i_dout0_1[15] ,
    \i_dout0_1[14] ,
    \i_dout0_1[13] ,
    \i_dout0_1[12] ,
    \i_dout0_1[11] ,
    \i_dout0_1[10] ,
    \i_dout0_1[9] ,
    \i_dout0_1[8] ,
    \i_dout0_1[7] ,
    \i_dout0_1[6] ,
    \i_dout0_1[5] ,
    \i_dout0_1[4] ,
    \i_dout0_1[3] ,
    \i_dout0_1[2] ,
    \i_dout0_1[1] ,
    \i_dout0_1[0] }),
    .io_in({io_in[37],
    io_in[36],
    io_in[35],
    io_in[34],
    io_in[33],
    io_in[32],
    io_in[31],
    io_in[30],
    io_in[29],
    io_in[28],
    io_in[27],
    io_in[26],
    io_in[25],
    io_in[24],
    io_in[23],
    io_in[22],
    io_in[21],
    io_in[20],
    io_in[19],
    io_in[18],
    io_in[17],
    io_in[16],
    io_in[15],
    io_in[14],
    io_in[13],
    io_in[12],
    io_in[11],
    io_in[10],
    io_in[9],
    io_in[8],
    io_in[7],
    io_in[6],
    io_in[5],
    io_in[4],
    io_in[3],
    io_in[2],
    io_in[1],
    io_in[0]}),
    .io_oeb({io_oeb[37],
    io_oeb[36],
    io_oeb[35],
    io_oeb[34],
    io_oeb[33],
    io_oeb[32],
    io_oeb[31],
    io_oeb[30],
    io_oeb[29],
    io_oeb[28],
    io_oeb[27],
    io_oeb[26],
    io_oeb[25],
    io_oeb[24],
    io_oeb[23],
    io_oeb[22],
    io_oeb[21],
    io_oeb[20],
    io_oeb[19],
    io_oeb[18],
    io_oeb[17],
    io_oeb[16],
    io_oeb[15],
    io_oeb[14],
    io_oeb[13],
    io_oeb[12],
    io_oeb[11],
    io_oeb[10],
    io_oeb[9],
    io_oeb[8],
    io_oeb[7],
    io_oeb[6],
    io_oeb[5],
    io_oeb[4],
    io_oeb[3],
    io_oeb[2],
    io_oeb[1],
    io_oeb[0]}),
    .io_out({io_out[37],
    io_out[36],
    io_out[35],
    io_out[34],
    io_out[33],
    io_out[32],
    io_out[31],
    io_out[30],
    io_out[29],
    io_out[28],
    io_out[27],
    io_out[26],
    io_out[25],
    io_out[24],
    io_out[23],
    io_out[22],
    io_out[21],
    io_out[20],
    io_out[19],
    io_out[18],
    io_out[17],
    io_out[16],
    io_out[15],
    io_out[14],
    io_out[13],
    io_out[12],
    io_out[11],
    io_out[10],
    io_out[9],
    io_out[8],
    io_out[7],
    io_out[6],
    io_out[5],
    io_out[4],
    io_out[3],
    io_out[2],
    io_out[1],
    io_out[0]}),
    .irq({user_irq[2],
    user_irq[1],
    user_irq[0]}),
    .o_din0({\o_din0[31] ,
    \o_din0[30] ,
    \o_din0[29] ,
    \o_din0[28] ,
    \o_din0[27] ,
    \o_din0[26] ,
    \o_din0[25] ,
    \o_din0[24] ,
    \o_din0[23] ,
    \o_din0[22] ,
    \o_din0[21] ,
    \o_din0[20] ,
    \o_din0[19] ,
    \o_din0[18] ,
    \o_din0[17] ,
    \o_din0[16] ,
    \o_din0[15] ,
    \o_din0[14] ,
    \o_din0[13] ,
    \o_din0[12] ,
    \o_din0[11] ,
    \o_din0[10] ,
    \o_din0[9] ,
    \o_din0[8] ,
    \o_din0[7] ,
    \o_din0[6] ,
    \o_din0[5] ,
    \o_din0[4] ,
    \o_din0[3] ,
    \o_din0[2] ,
    \o_din0[1] ,
    \o_din0[0] }),
    .o_din0_1({\o_din0_1[31] ,
    \o_din0_1[30] ,
    \o_din0_1[29] ,
    \o_din0_1[28] ,
    \o_din0_1[27] ,
    \o_din0_1[26] ,
    \o_din0_1[25] ,
    \o_din0_1[24] ,
    \o_din0_1[23] ,
    \o_din0_1[22] ,
    \o_din0_1[21] ,
    \o_din0_1[20] ,
    \o_din0_1[19] ,
    \o_din0_1[18] ,
    \o_din0_1[17] ,
    \o_din0_1[16] ,
    \o_din0_1[15] ,
    \o_din0_1[14] ,
    \o_din0_1[13] ,
    \o_din0_1[12] ,
    \o_din0_1[11] ,
    \o_din0_1[10] ,
    \o_din0_1[9] ,
    \o_din0_1[8] ,
    \o_din0_1[7] ,
    \o_din0_1[6] ,
    \o_din0_1[5] ,
    \o_din0_1[4] ,
    \o_din0_1[3] ,
    \o_din0_1[2] ,
    \o_din0_1[1] ,
    \o_din0_1[0] }),
    .o_waddr0({\o_waddr0[8] ,
    \o_waddr0[7] ,
    \o_waddr0[6] ,
    \o_waddr0[5] ,
    \o_waddr0[4] ,
    \o_waddr0[3] ,
    \o_waddr0[2] ,
    \o_waddr0[1] ,
    \o_waddr0[0] }),
    .o_waddr0_1({\o_waddr0_1[8] ,
    \o_waddr0_1[7] ,
    \o_waddr0_1[6] ,
    \o_waddr0_1[5] ,
    \o_waddr0_1[4] ,
    \o_waddr0_1[3] ,
    \o_waddr0_1[2] ,
    \o_waddr0_1[1] ,
    \o_waddr0_1[0] }),
    .o_wmask0({\o_wmask0[3] ,
    \o_wmask0[2] ,
    \o_wmask0[1] ,
    \o_wmask0[0] }),
    .o_wmask0_1({\o_wmask0_1[3] ,
    \o_wmask0_1[2] ,
    \o_wmask0_1[1] ,
    \o_wmask0_1[0] }),
    .wbs_adr_i({wbs_adr_i[31],
    wbs_adr_i[30],
    wbs_adr_i[29],
    wbs_adr_i[28],
    wbs_adr_i[27],
    wbs_adr_i[26],
    wbs_adr_i[25],
    wbs_adr_i[24],
    wbs_adr_i[23],
    wbs_adr_i[22],
    wbs_adr_i[21],
    wbs_adr_i[20],
    wbs_adr_i[19],
    wbs_adr_i[18],
    wbs_adr_i[17],
    wbs_adr_i[16],
    wbs_adr_i[15],
    wbs_adr_i[14],
    wbs_adr_i[13],
    wbs_adr_i[12],
    wbs_adr_i[11],
    wbs_adr_i[10],
    wbs_adr_i[9],
    wbs_adr_i[8],
    wbs_adr_i[7],
    wbs_adr_i[6],
    wbs_adr_i[5],
    wbs_adr_i[4],
    wbs_adr_i[3],
    wbs_adr_i[2],
    wbs_adr_i[1],
    wbs_adr_i[0]}),
    .wbs_dat_i({wbs_dat_i[31],
    wbs_dat_i[30],
    wbs_dat_i[29],
    wbs_dat_i[28],
    wbs_dat_i[27],
    wbs_dat_i[26],
    wbs_dat_i[25],
    wbs_dat_i[24],
    wbs_dat_i[23],
    wbs_dat_i[22],
    wbs_dat_i[21],
    wbs_dat_i[20],
    wbs_dat_i[19],
    wbs_dat_i[18],
    wbs_dat_i[17],
    wbs_dat_i[16],
    wbs_dat_i[15],
    wbs_dat_i[14],
    wbs_dat_i[13],
    wbs_dat_i[12],
    wbs_dat_i[11],
    wbs_dat_i[10],
    wbs_dat_i[9],
    wbs_dat_i[8],
    wbs_dat_i[7],
    wbs_dat_i[6],
    wbs_dat_i[5],
    wbs_dat_i[4],
    wbs_dat_i[3],
    wbs_dat_i[2],
    wbs_dat_i[1],
    wbs_dat_i[0]}),
    .wbs_dat_o({wbs_dat_o[31],
    wbs_dat_o[30],
    wbs_dat_o[29],
    wbs_dat_o[28],
    wbs_dat_o[27],
    wbs_dat_o[26],
    wbs_dat_o[25],
    wbs_dat_o[24],
    wbs_dat_o[23],
    wbs_dat_o[22],
    wbs_dat_o[21],
    wbs_dat_o[20],
    wbs_dat_o[19],
    wbs_dat_o[18],
    wbs_dat_o[17],
    wbs_dat_o[16],
    wbs_dat_o[15],
    wbs_dat_o[14],
    wbs_dat_o[13],
    wbs_dat_o[12],
    wbs_dat_o[11],
    wbs_dat_o[10],
    wbs_dat_o[9],
    wbs_dat_o[8],
    wbs_dat_o[7],
    wbs_dat_o[6],
    wbs_dat_o[5],
    wbs_dat_o[4],
    wbs_dat_o[3],
    wbs_dat_o[2],
    wbs_dat_o[1],
    wbs_dat_o[0]}),
    .wbs_sel_i({wbs_sel_i[3],
    wbs_sel_i[2],
    wbs_sel_i[1],
    wbs_sel_i[0]}));
 sky130_sram_2kbyte_1rw1r_32x512_8 sram (.csb0(o_csb0),
    .csb1(zero_),
    .web0(o_web0),
    .clk0(wb_clk_i),
    .clk1(zero_),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .addr0({\o_waddr0[8] ,
    \o_waddr0[7] ,
    \o_waddr0[6] ,
    \o_waddr0[5] ,
    \o_waddr0[4] ,
    \o_waddr0[3] ,
    \o_waddr0[2] ,
    \o_waddr0[1] ,
    \o_waddr0[0] }),
    .addr1({zero_,
    zero_,
    zero_,
    zero_,
    zero_,
    zero_,
    zero_,
    zero_,
    zero_}),
    .din0({\o_din0[31] ,
    \o_din0[30] ,
    \o_din0[29] ,
    \o_din0[28] ,
    \o_din0[27] ,
    \o_din0[26] ,
    \o_din0[25] ,
    \o_din0[24] ,
    \o_din0[23] ,
    \o_din0[22] ,
    \o_din0[21] ,
    \o_din0[20] ,
    \o_din0[19] ,
    \o_din0[18] ,
    \o_din0[17] ,
    \o_din0[16] ,
    \o_din0[15] ,
    \o_din0[14] ,
    \o_din0[13] ,
    \o_din0[12] ,
    \o_din0[11] ,
    \o_din0[10] ,
    \o_din0[9] ,
    \o_din0[8] ,
    \o_din0[7] ,
    \o_din0[6] ,
    \o_din0[5] ,
    \o_din0[4] ,
    \o_din0[3] ,
    \o_din0[2] ,
    \o_din0[1] ,
    \o_din0[0] }),
    .dout0({\i_dout0[31] ,
    \i_dout0[30] ,
    \i_dout0[29] ,
    \i_dout0[28] ,
    \i_dout0[27] ,
    \i_dout0[26] ,
    \i_dout0[25] ,
    \i_dout0[24] ,
    \i_dout0[23] ,
    \i_dout0[22] ,
    \i_dout0[21] ,
    \i_dout0[20] ,
    \i_dout0[19] ,
    \i_dout0[18] ,
    \i_dout0[17] ,
    \i_dout0[16] ,
    \i_dout0[15] ,
    \i_dout0[14] ,
    \i_dout0[13] ,
    \i_dout0[12] ,
    \i_dout0[11] ,
    \i_dout0[10] ,
    \i_dout0[9] ,
    \i_dout0[8] ,
    \i_dout0[7] ,
    \i_dout0[6] ,
    \i_dout0[5] ,
    \i_dout0[4] ,
    \i_dout0[3] ,
    \i_dout0[2] ,
    \i_dout0[1] ,
    \i_dout0[0] }),
    .dout1({_NC1,
    _NC2,
    _NC3,
    _NC4,
    _NC5,
    _NC6,
    _NC7,
    _NC8,
    _NC9,
    _NC10,
    _NC11,
    _NC12,
    _NC13,
    _NC14,
    _NC15,
    _NC16,
    _NC17,
    _NC18,
    _NC19,
    _NC20,
    _NC21,
    _NC22,
    _NC23,
    _NC24,
    _NC25,
    _NC26,
    _NC27,
    _NC28,
    _NC29,
    _NC30,
    _NC31,
    _NC32}),
    .wmask0({\o_wmask0[3] ,
    \o_wmask0[2] ,
    \o_wmask0[1] ,
    \o_wmask0[0] }));
 sky130_sram_2kbyte_1rw1r_32x512_8 sram1 (.csb0(o_csb0_1),
    .csb1(zero_),
    .web0(o_web0_1),
    .clk0(wb_clk_i),
    .clk1(zero_),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .addr0({\o_waddr0_1[8] ,
    \o_waddr0_1[7] ,
    \o_waddr0_1[6] ,
    \o_waddr0_1[5] ,
    \o_waddr0_1[4] ,
    \o_waddr0_1[3] ,
    \o_waddr0_1[2] ,
    \o_waddr0_1[1] ,
    \o_waddr0_1[0] }),
    .addr1({zero_,
    zero_,
    zero_,
    zero_,
    zero_,
    zero_,
    zero_,
    zero_,
    zero_}),
    .din0({\o_din0_1[31] ,
    \o_din0_1[30] ,
    \o_din0_1[29] ,
    \o_din0_1[28] ,
    \o_din0_1[27] ,
    \o_din0_1[26] ,
    \o_din0_1[25] ,
    \o_din0_1[24] ,
    \o_din0_1[23] ,
    \o_din0_1[22] ,
    \o_din0_1[21] ,
    \o_din0_1[20] ,
    \o_din0_1[19] ,
    \o_din0_1[18] ,
    \o_din0_1[17] ,
    \o_din0_1[16] ,
    \o_din0_1[15] ,
    \o_din0_1[14] ,
    \o_din0_1[13] ,
    \o_din0_1[12] ,
    \o_din0_1[11] ,
    \o_din0_1[10] ,
    \o_din0_1[9] ,
    \o_din0_1[8] ,
    \o_din0_1[7] ,
    \o_din0_1[6] ,
    \o_din0_1[5] ,
    \o_din0_1[4] ,
    \o_din0_1[3] ,
    \o_din0_1[2] ,
    \o_din0_1[1] ,
    \o_din0_1[0] }),
    .dout0({\i_dout0_1[31] ,
    \i_dout0_1[30] ,
    \i_dout0_1[29] ,
    \i_dout0_1[28] ,
    \i_dout0_1[27] ,
    \i_dout0_1[26] ,
    \i_dout0_1[25] ,
    \i_dout0_1[24] ,
    \i_dout0_1[23] ,
    \i_dout0_1[22] ,
    \i_dout0_1[21] ,
    \i_dout0_1[20] ,
    \i_dout0_1[19] ,
    \i_dout0_1[18] ,
    \i_dout0_1[17] ,
    \i_dout0_1[16] ,
    \i_dout0_1[15] ,
    \i_dout0_1[14] ,
    \i_dout0_1[13] ,
    \i_dout0_1[12] ,
    \i_dout0_1[11] ,
    \i_dout0_1[10] ,
    \i_dout0_1[9] ,
    \i_dout0_1[8] ,
    \i_dout0_1[7] ,
    \i_dout0_1[6] ,
    \i_dout0_1[5] ,
    \i_dout0_1[4] ,
    \i_dout0_1[3] ,
    \i_dout0_1[2] ,
    \i_dout0_1[1] ,
    \i_dout0_1[0] }),
    .dout1({_NC33,
    _NC34,
    _NC35,
    _NC36,
    _NC37,
    _NC38,
    _NC39,
    _NC40,
    _NC41,
    _NC42,
    _NC43,
    _NC44,
    _NC45,
    _NC46,
    _NC47,
    _NC48,
    _NC49,
    _NC50,
    _NC51,
    _NC52,
    _NC53,
    _NC54,
    _NC55,
    _NC56,
    _NC57,
    _NC58,
    _NC59,
    _NC60,
    _NC61,
    _NC62,
    _NC63,
    _NC64}),
    .wmask0({\o_wmask0_1[3] ,
    \o_wmask0_1[2] ,
    \o_wmask0_1[1] ,
    \o_wmask0_1[0] }));
 assign la_data_out[0] = zero_;
 assign la_data_out[100] = zero_;
 assign la_data_out[101] = zero_;
 assign la_data_out[102] = zero_;
 assign la_data_out[103] = zero_;
 assign la_data_out[104] = zero_;
 assign la_data_out[105] = zero_;
 assign la_data_out[106] = zero_;
 assign la_data_out[107] = zero_;
 assign la_data_out[108] = zero_;
 assign la_data_out[109] = zero_;
 assign la_data_out[10] = zero_;
 assign la_data_out[110] = zero_;
 assign la_data_out[111] = zero_;
 assign la_data_out[112] = zero_;
 assign la_data_out[113] = zero_;
 assign la_data_out[114] = zero_;
 assign la_data_out[115] = zero_;
 assign la_data_out[116] = zero_;
 assign la_data_out[117] = zero_;
 assign la_data_out[118] = zero_;
 assign la_data_out[119] = zero_;
 assign la_data_out[11] = zero_;
 assign la_data_out[120] = zero_;
 assign la_data_out[121] = zero_;
 assign la_data_out[122] = zero_;
 assign la_data_out[123] = zero_;
 assign la_data_out[124] = zero_;
 assign la_data_out[125] = zero_;
 assign la_data_out[126] = zero_;
 assign la_data_out[127] = zero_;
 assign la_data_out[12] = zero_;
 assign la_data_out[13] = zero_;
 assign la_data_out[14] = zero_;
 assign la_data_out[15] = zero_;
 assign la_data_out[16] = zero_;
 assign la_data_out[17] = zero_;
 assign la_data_out[18] = zero_;
 assign la_data_out[19] = zero_;
 assign la_data_out[1] = zero_;
 assign la_data_out[20] = zero_;
 assign la_data_out[21] = zero_;
 assign la_data_out[22] = zero_;
 assign la_data_out[23] = zero_;
 assign la_data_out[24] = zero_;
 assign la_data_out[25] = zero_;
 assign la_data_out[26] = zero_;
 assign la_data_out[27] = zero_;
 assign la_data_out[28] = zero_;
 assign la_data_out[29] = zero_;
 assign la_data_out[2] = zero_;
 assign la_data_out[30] = zero_;
 assign la_data_out[31] = zero_;
 assign la_data_out[32] = zero_;
 assign la_data_out[33] = zero_;
 assign la_data_out[34] = zero_;
 assign la_data_out[35] = zero_;
 assign la_data_out[36] = zero_;
 assign la_data_out[37] = zero_;
 assign la_data_out[38] = zero_;
 assign la_data_out[39] = zero_;
 assign la_data_out[3] = zero_;
 assign la_data_out[40] = zero_;
 assign la_data_out[41] = zero_;
 assign la_data_out[42] = zero_;
 assign la_data_out[43] = zero_;
 assign la_data_out[44] = zero_;
 assign la_data_out[45] = zero_;
 assign la_data_out[46] = zero_;
 assign la_data_out[47] = zero_;
 assign la_data_out[48] = zero_;
 assign la_data_out[49] = zero_;
 assign la_data_out[4] = zero_;
 assign la_data_out[50] = zero_;
 assign la_data_out[51] = zero_;
 assign la_data_out[52] = zero_;
 assign la_data_out[53] = zero_;
 assign la_data_out[54] = zero_;
 assign la_data_out[55] = zero_;
 assign la_data_out[56] = zero_;
 assign la_data_out[57] = zero_;
 assign la_data_out[58] = zero_;
 assign la_data_out[59] = zero_;
 assign la_data_out[5] = zero_;
 assign la_data_out[60] = zero_;
 assign la_data_out[61] = zero_;
 assign la_data_out[62] = zero_;
 assign la_data_out[63] = zero_;
 assign la_data_out[64] = zero_;
 assign la_data_out[65] = zero_;
 assign la_data_out[66] = zero_;
 assign la_data_out[67] = zero_;
 assign la_data_out[68] = zero_;
 assign la_data_out[69] = zero_;
 assign la_data_out[6] = zero_;
 assign la_data_out[70] = zero_;
 assign la_data_out[71] = zero_;
 assign la_data_out[72] = zero_;
 assign la_data_out[73] = zero_;
 assign la_data_out[74] = zero_;
 assign la_data_out[75] = zero_;
 assign la_data_out[76] = zero_;
 assign la_data_out[77] = zero_;
 assign la_data_out[78] = zero_;
 assign la_data_out[79] = zero_;
 assign la_data_out[7] = zero_;
 assign la_data_out[80] = zero_;
 assign la_data_out[81] = zero_;
 assign la_data_out[82] = zero_;
 assign la_data_out[83] = zero_;
 assign la_data_out[84] = zero_;
 assign la_data_out[85] = zero_;
 assign la_data_out[86] = zero_;
 assign la_data_out[87] = zero_;
 assign la_data_out[88] = zero_;
 assign la_data_out[89] = zero_;
 assign la_data_out[8] = zero_;
 assign la_data_out[90] = zero_;
 assign la_data_out[91] = zero_;
 assign la_data_out[92] = zero_;
 assign la_data_out[93] = zero_;
 assign la_data_out[94] = zero_;
 assign la_data_out[95] = zero_;
 assign la_data_out[96] = zero_;
 assign la_data_out[97] = zero_;
 assign la_data_out[98] = zero_;
 assign la_data_out[99] = zero_;
 assign la_data_out[9] = zero_;
endmodule
