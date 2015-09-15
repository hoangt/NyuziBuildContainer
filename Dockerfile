FROM ubuntu:14.04
MAINTAINER Jeff Bush (https://github.com/jbush001)
RUN apt-get update && apt-get install -y make gcc g++ python perl libsdl2-dev imagemagick git
ADD tmp/clang-3.7 /usr/local/llvm-nyuzi/bin/
ADD tmp/elf2hex /usr/local/llvm-nyuzi/bin/
ADD tmp/ld.mcld /usr/local/llvm-nyuzi/bin/
ADD tmp/llvm-ar /usr/local/llvm-nyuzi/bin/
RUN ln -s /usr/local/llvm-nyuzi/bin/clang-3.7 /usr/local/llvm-nyuzi/bin/clang
RUN ln -s /usr/local/llvm-nyuzi/bin/clang-3.7 /usr/local/llvm-nyuzi/bin/clang++
ADD tmp/share_verilator/ /usr/local/share/verilator/
ADD tmp/verilator* /usr/local/bin/
ADD run-test.sh /root/run-test.sh



