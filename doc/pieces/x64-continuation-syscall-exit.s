# A prototype that immediately invokes the exit continuation.

.text
.globl main
.type main, @function

.exit:
  # Syscall 1 (exit)
  movq $1, %rax
  xorq %rbx, %rbx
  int $0x80

main:
  # General prologue
  pushq %rbp
  movq %rsp, %rbp

  # Preliminary setup
  subq $48, %rsp          # allocate space for a cons cell and a continuation
  movq $0, (%rsp)         # cons v-class
  leaq 24(%rsp), %r8      # pointer to continuation
  movq %r8, 8(%rsp)       # complete the assignment
  movq $0, 16(%rsp)       # pointer to tail (in this case null)
  movq $0, 24(%rsp)       # continuation v-class
  movq $0, 32(%rsp)       # lexical context pointer (in this case null)
  movq $.exit, 40(%rsp)   # code pointer

  movq %rsp, %r8          # stash this so we can access it easily below

  subq $48, %rsp          # allocate space for a dynamic context object
  movq $0, (%rsp)         # dynamic context v-class
  movq $0, 8(%rsp)        # implicit receiver
  movq $0, 16(%rsp)       # exception hashtable pointer
  movq $0, 24(%rsp)       # dynamic variable hashtable pointer
  movq %r8, 32(%rsp)      # continuation stack pointer
  movq $0, 40(%rsp)       # v-table pointer

  movq %rsp, %rdi         # set dynamic context pointer

  # Main program epilogue: Tail call into next continuation, popping it from the
  # continuation stack in the process.

  movq 32(%rdi), %rax     # load continuation stack
  movq 16(%rax), %rdx     # load tail of that continuation
  movq 8(%rax), %rax      # load first continuation from that stack
  movq %rdx, 32(%rdi)     # set the context's continuation to the tail

  movq 8(%rax), %rsi      # set up static context (in this case 0)
  movq 16(%rax), %rax     # code pointer

  jmp *%rax               # indirect jump into continuation
