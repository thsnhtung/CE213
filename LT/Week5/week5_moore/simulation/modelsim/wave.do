onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Moore_tb/n
add wave -noupdate /Moore_tb/Start
add wave -noupdate /Moore_tb/CLK
add wave -noupdate -radix unsigned /Moore_tb/input_data
add wave -noupdate -radix unsigned /Moore_tb/out
add wave -noupdate /Moore_tb/Done
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {428800 ps} {940800 ps}
