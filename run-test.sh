#!/bin/bash

git clone https://github.com/jbush001/NyuziProcessor.git root/NyuziProcessor
cd /root/NyuziProcessor/tests/cosimulation
./generate_random.py -m 5
cd ../..
make test

