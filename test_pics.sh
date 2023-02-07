#!/bin/bash
#FILE=ModelZoon/IR/val.txt
while read line; do
	./darknet detector test ./ModelZoo/IR/IR.data ./ModelZoo/IR/yolo-fastest-1.1_IR_small.cfg ./ModelZoo/IR/yolo-fastest-1.1_IR_40x40_LeiData_smallroom_30dc.weights  $line -i 0 -thresh 0.25 -show_delay 1000
	#echo $line
done < $1

