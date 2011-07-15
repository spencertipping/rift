# x64 data structure assembly macros | Spencer Tipping
# Licensed under the terms of the MIT source code license

# What's all this about?
# This is my version of a C compiler, except that it's easier to inline this
# stuff into dynamically compiled code because it's built that way in the first
# place. The idea is to have a bunch of low-level subroutine-style things that
# can be used both in the interpreter and in the JIT compiler.
#
# Like a C compiler, all of the structures here are type-erased. They also use
# a calling convention, though it's continuation-aware rather than stack-based.
#
# These are hand-coded for performance. There are various reasons I chose to do
# it this way instead of using C; the primary one is that if the compiler is
# first-class then I can use it to link code at runtime as well as using it in
# the interpreter. Another reason is that it's useful to be able to dispatch to
# different processors dynamically; at present I think the Intel C/C++ compiler
# is the only one to generate processor-specific code and choose on the fly.
#
# Some of these structures allocate memory; to do this, they use the dynamic
# context object referenced by %rdi.


