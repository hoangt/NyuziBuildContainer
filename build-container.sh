TOOLCHAIN_DIR=/usr/local/llvm-nyuzi/bin

rm -rf tmp/*
mkdir -p tmp
cp $TOOLCHAIN_DIR/clang-3.8 tmp/
cp $TOOLCHAIN_DIR/elf2hex tmp/
cp $TOOLCHAIN_DIR/ld.mcld tmp/
cp $TOOLCHAIN_DIR/llvm-ar tmp/

cp -R /usr/local/share/verilator tmp/share_verilator
cp /usr/local/bin/verilator* tmp/

docker build -t jeffbush001/nyuzi-build:latest .

