	.text
	.file	"error.c"
	.section	.text.generic_error,"",@
	.hidden	generic_error                   # -- Begin function generic_error
	.globl	generic_error
	.globaltype	__stack_pointer, i32
	.functype	fprintf (i32, i32, i32) -> (i32)
	.functype	vfprintf (i32, i32, i32) -> (i32)
	.functype	exit (i32) -> ()
	.type	generic_error,@function
generic_error:                          # @generic_error
	.functype	generic_error (i32, i32, i32, i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	4
	i32.const	32
	local.set	5
	local.get	4
	local.get	5
	i32.sub 
	local.set	6
	local.get	6
	global.set	__stack_pointer
	local.get	6
	local.get	0
	i32.store	28
	local.get	6
	local.get	2
	i32.store	24
	i32.const	20
	local.set	7
	local.get	6
	local.get	7
	i32.add 
	local.set	8
	local.get	8
	local.set	9
	local.get	9
	local.get	3
	i32.store	0
	i32.const	0
	local.set	10
	local.get	10
	i32.load	stderr
	local.set	11
	local.get	6
	i32.load	28
	local.set	12
	local.get	1
	i32.load	8
	local.set	13
	local.get	1
	i32.load	16
	local.set	14
	local.get	1
	i32.load	4
	local.set	15
	local.get	6
	local.get	15
	i32.store	12
	local.get	6
	local.get	14
	i32.store	8
	local.get	6
	local.get	13
	i32.store	4
	local.get	6
	local.get	12
	i32.store	0
	i32.const	.L.str
	local.set	16
	local.get	11
	local.get	16
	local.get	6
	call	fprintf
	drop
	i32.const	0
	local.set	17
	local.get	17
	i32.load	stderr
	local.set	18
	local.get	6
	i32.load	24
	local.set	19
	local.get	6
	i32.load	20
	local.set	20
	local.get	18
	local.get	19
	local.get	20
	call	vfprintf
	drop
	i32.const	20
	local.set	21
	local.get	6
	local.get	21
	i32.add 
	local.set	22
	local.get	22
	drop
	i32.const	1
	local.set	23
	local.get	23
	call	exit
	unreachable
	end_function
.Lfunc_end0:
	.size	generic_error, .Lfunc_end0-generic_error
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata..L.str,"S",@
.L.str:
	.asciz	"%s near line %d col %d: %10s"
	.size	.L.str, 29

	.ident	"clang version 14.0.6"
	.size	stderr, 4
	.section	.custom_section.producers,"",@
	.int8	1
	.int8	12
	.ascii	"processed-by"
	.int8	1
	.int8	5
	.ascii	"clang"
	.int8	6
	.ascii	"14.0.6"
	.section	.rodata..L.str,"S",@
