#!/bin/bash

kallisto quant -i ../NGS/refseq/GRCm38/mmGRCm38_kallisto.idx -o kallisto/APC -b 100 -t 16 APC/APC_R1_val_1.fq.gz APC/APC_R2_val_2.fq.gz
