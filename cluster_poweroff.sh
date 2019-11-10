#!/bin/bash

qmod -d 1080.q,all.q,cpu.q,otras.q

ssh compute-0-0 "poweroff now"
ssh compute-0-1 "poweroff now"
ssh compute-0-3 "poweroff now"
ssh compute-0-4 "poweroff now"
ssh compute-0-5 "poweroff now"
ssh compute-0-6 "poweroff now"
ssh compute-0-7 "poweroff now"
ssh compute-0-13 "poweroff now"
ssh compute-0-14 "poweroff now"
ssh compute-0-15 "poweroff now"
ssh compute-0-16 "poweroff now"
ssh compute-0-17 "poweroff now"
ssh compute-0-18 "poweroff now"
ssh compute-0-19 "poweroff now"
ssh compute-0-20 "poweroff now"
ssh compute-0-21 "poweroff now"
ssh compute-0-22 "poweroff now"
ssh compute-0-23 "poweroff now"
ssh compute-0-24 "poweroff now"
ssh compute-0-25 "poweroff now"
ssh compute-0-26 "poweroff now"
ssh compute-0-28 "poweroff now"
ssh compute-0-29 "poweroff now"
ssh compute-0-30 "poweroff now"

