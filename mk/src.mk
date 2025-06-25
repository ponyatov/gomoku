# .mk files
MK += Makefile
MK += $(wildcard   mk/*.mk)

# C/C++
C += $(wildcard src/*.c*)
H += $(wildcard inc/*.h*)

# ini
S += $(wildcard lib/*.ini) $(wildcard lib/*.f)

# JavaScript
J += $(wildcard src/*.js)

