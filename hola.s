.data
greeting: .asciiz "Hola, "
nl: .asciiz "\n"

.text
.globl main
main:
  li        $v0, 4
  la        $a0, greeting
  syscall
  lw        $a0, 4($a1)
  syscall
  la        $a0, nl
  syscall
  li        $v0, 10
  syscall
