transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Mercedes/QuartusLite/Projetos/PHI_VHDL/projetos/proj2.2_phi_equipe0/sel_mostrador_relogio.vhd}
vcom -93 -work work {C:/Users/Mercedes/QuartusLite/Projetos/PHI_VHDL/projetos/proj2.2_phi_equipe0/testbench.vhd}

