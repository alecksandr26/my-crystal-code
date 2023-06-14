#!/bin/bash

C=cc
C_FLAGS="-O3 -DNDEBUG -fno-stack-protector -z execstack -no-pie -march=native -flto"
CPP=c++
CPP_FLAGS="-O3 -DNDEBUG -fno-stack-protector -z execstack -no-pie -march=native -flto"
CRY="crystal build"
CRY_FLAGS="--release --no-debug"
R=rustc
R_FLAGS="-C opt-level=3 -C target-cpu=native -C lto"

if [ -e "c.txt" ]; then
    rm -f c.txt
fi

if [ -e "cpp.txt" ]; then
    rm -f cpp.txt
fi

if [ -e "crystal.txt" ]; then
    rm -f crystal.txt
fi

if [ -e "rust.txt" ]; then
    rm -f rust.txt
fi

if [ $# -eq 0 ]; then
    $C c.c -o c.out
    $CRY crystal.cr -o crystal.out
    $CPP cpp.cpp -o cpp.out
    $R rust.rs -o rust.out
elif [ "$1" = "optimizations" ]; then
    $C $C_FLAGS c.c -o c.out
    $CPP $CPP_FLAGS cpp.cpp -o cpp.out
    $CRY $CRY_FLAGS crystal.cr -o crystal.out
    $R $R_FLAGS rust.rs -o rust.out
fi


TIMEFORMAT="real %E user %U sys %S"
for i in {1..20}
do
    { time ./c.out; } 2>> c.txt
    { time ./cpp.out; } 2>> cpp.txt
    { time ./crystal.out; } 2>> crystal.txt
    { time ./rust.out; } 2>> rust.txt
done

printf "C Results:\n"
awk -f avg.awk c.txt
printf "Cpp Results:\n"
awk -f avg.awk cpp.txt
printf "Crystal Results:\n"
awk -f avg.awk crystal.txt
printf "Rust Results:\n"
awk -f avg.awk rust.txt


