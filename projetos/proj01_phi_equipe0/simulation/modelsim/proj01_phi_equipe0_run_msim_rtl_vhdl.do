transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Mercedes/Desktop/proj01v2_phi_equipe0/somador_de_1bit.vhd}
vcom -93 -work work {C:/Users/Mercedes/Desktop/proj01v2_phi_equipe0/seleciona_operacao.vhd}
vcom -93 -work work {C:/Users/Mercedes/Desktop/proj01v2_phi_equipe0/main.vhd}
vcom -93 -work work {C:/Users/Mercedes/Desktop/proj01v2_phi_equipe0/testbench.vhd}
