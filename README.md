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

![image](https://github.com/user-attachments/assets/c2f70d1c-634e-4e66-aa52-0bc279a32d63)

As you can see our vm is booted but as there are no virtual harddisks attached, it cannot do anything else.

### Creating a bootloader

This will create a bootloader that outputs the text "hello world". Writing in assembly language.

boot.asm


Bootsector that outputs "A" on the screen:
![image](https://github.com/user-attachments/assets/75c413c9-537d-4a9b-b849-ac9979ce766c)























