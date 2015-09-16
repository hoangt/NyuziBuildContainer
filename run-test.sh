#!/bin/bash

git clone https://github.com/jbush001/NyuziProcessor.git root/NyuziProcessor
cd /root/NyuziProcessor/tests/cosimulation
./generate-random -m 5
cd ../..
make test

