transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Mercedes/QuartusLite/Projetos/lab-intro/decod.vhd}
vcom -93 -work work {C:/Users/Mercedes/QuartusLite/Projetos/lab-intro/contador99_testbench.vhd}
vcom -93 -work work {C:/Users/Mercedes/QuartusLite/Projetos/lab-intro/contador99.vhd}
vcom -93 -work work {C:/Users/Mercedes/QuartusLite/Projetos/lab-intro/contador.vhd}

