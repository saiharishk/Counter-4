vlib work

vlog fancycounter.v +acc
vlog fancycounter_tb.v +acc

vsim work.tb
add wave -r *
run -all
