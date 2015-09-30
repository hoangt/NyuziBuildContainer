#!/bin/bash

cd tests/cosimulation
./generate_random.py -m 5
cd ../..
make test

