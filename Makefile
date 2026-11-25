LLVM_BIN ?= /work/gt81/share/env/llvm/bin
CXX = $(if $(wildcard $(LLVM_BIN)/clang++),$(LLVM_BIN)/clang++,clang++)
ARCHFLAGS ?= -mcpu=neoverse-v2
CXXFLAGS ?= -std=c++17 -O3 -Wall -Wextra $(ARCHFLAGS)

pow: pow.cc
	$(CXX) $(CXXFLAGS) -o $@ $<

.PHONY: clean
clean:
	rm -f pow
