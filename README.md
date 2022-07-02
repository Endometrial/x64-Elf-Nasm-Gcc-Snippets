# x64 Elf Nasm Gcc Snippets
* A collection of Elf64 NASM code snippets linked with GCC

# To Assemble
* nasm -f elf64 [FILENAME].asm -o out.o
* gcc -m64 -no-pie out.o -o a.out
