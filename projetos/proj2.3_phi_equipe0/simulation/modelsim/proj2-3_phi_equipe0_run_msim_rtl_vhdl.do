transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/User/Documents/UFPA/6 Semestre/Projeto de Hardware e Interfaceamento/PHI_VHDL/projetos/proj2.3_phi_equipe0/controle_portao.vhd}
vcom -93 -work work {C:/Users/User/Documents/UFPA/6 Semestre/Projeto de Hardware e Interfaceamento/PHI_VHDL/projetos/proj2.3_phi_equipe0/testbench.vhd}

