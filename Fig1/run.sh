#!/bin/bash
for i in 64 128 256 512 1024 2048 4096
do
   python3 main.py --decay=1e-4 --lr=0.001 --layer=3 --seed=2020 --dataset="gowalla" --topks="[20]" --recdim=$i
done