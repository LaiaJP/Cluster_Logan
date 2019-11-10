#!/bin/bash

numprocs=`qconf -se compute-0-17 | awk '/^processors/ {print $2}'`
/opt/rocks/bin/rocks set host boot compute-0-17 action=install
qsub -p 1024 -pe mpi $numprocs -q cpu.q@compute-0-17 /opt/gridengine/examples/jobs/reboot.qsub
echo "Set compute-0-17 for Reinstallation"


