#!/bin/bash

ssh compute-0-3 "nvidia-smi -i 0 -c 1"
ssh compute-0-3 "nvidia-smi -i 1 -c 1"
ssh compute-0-4 "nvidia-smi -i 0 -c 1"
ssh compute-0-4 "nvidia-smi -i 1 -c 1"
ssh compute-0-5 "nvidia-smi -i 0 -c 1"
ssh compute-0-5 "nvidia-smi -i 1 -c 1"
ssh compute-0-28 "nvidia-smi -i 0 -c 1"
ssh compute-0-28 "nvidia-smi -i 1 -c 1"
ssh compute-0-29 "nvidia-smi -i 0 -c 1"
ssh compute-0-29 "nvidia-smi -i 1 -c 1"
ssh compute-0-30 "nvidia-smi -i 0 -c 1"
ssh compute-0-30 "nvidia-smi -i 1 -c 1"

ssh compute-0-0 "nvidia-smi -i 0 -c 1"
ssh compute-0-6 "nvidia-smi -i 0 -c 1"
ssh compute-0-1 "nvidia-smi -i 0 -c 3"
ssh compute-0-7 "nvidia-smi -i 0 -c 3"

