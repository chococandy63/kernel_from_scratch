# kernel_from_scratch

# kernel-from-scratch
This kernel hack series is just an attempt to build my own kernel from scratch; this is strictly for learning purposes. 

### The Boot Process

Real mode(16 bit) and protected mode(32 bit)

BIOS from the ROM starts executing --> boots the bootloader --> boots the kernel

### Installation steps

`sudo apt update`

Nasm assembler

`sudo apt install nasm`

`nasm --version`

We need an emulator to run our bootloader and kernel -- we will use QEMU

`sudo apt install qemu-system-x86`


`qemu-system-x86_64` 

![image](https://github.com/user-attachments/assets/fa83284d-0283-49ba-ac8d-7d62ca334dc6)


As you can see our vm is booted but as there are no virtual harddisks attached, it cannot do anything else.

### Creating a bootloader

This will create a bootloader that outputs the text "hello world". Writing in assembly language.

boot.asm


Bootsector that outputs "A" on the screen:
![image](https://github.com/user-attachments/assets/ca9238a4-3ba9-441f-a306-759b7bb2e495)
























