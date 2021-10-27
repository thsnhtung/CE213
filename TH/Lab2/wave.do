onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned /tb/Input_test
add wave -noupdate -radix unsigned /tb/CLK_test
add wave -noupdate -radix unsigned /tb/Reset_test
add wave -noupdate -radix unsigned /tb/Moore_test
add wave -noupdate -radix unsigned /tb/Mealy_test
add wave -noupdate -radix unsigned /tb/Case
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {858331 ps} 0}
quietly wave cursor active 1
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
configure wave -timelineunits ns
update
WaveRestoreZoom {21648 ps} {1553034 ps}
