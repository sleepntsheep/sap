	.text
	.file	"ast.c"
	.section	.text.ast_new,"",@
	.hidden	ast_new                         # -- Begin function ast_new
	.globl	ast_new
	.globaltype	__stack_pointer, i32
	.functype	malloc (i32) -> (i32)
	.functype	realloc (i32, i32) -> (i32)
	.functype	free (i32) -> ()
	.type	ast_new,@function
ast_new:                                # @ast_new
	.functype	ast_new (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	global.set	__stack_pointer
	i32.const	40
	local.set	4
	local.get	4
	call	malloc
	local.set	5
	local.get	3
	local.get	5
	i32.store	12
	local.get	3
	i32.load	12
	local.set	6
	local.get	0
	i64.load	0
	local.set	7
	local.get	6
	local.get	7
	i64.store	0
	i32.const	32
	local.set	8
	local.get	6
	local.get	8
	i32.add 
	local.set	9
	local.get	0
	local.get	8
	i32.add 
	local.set	10
	local.get	10
	i64.load	0
	local.set	11
	local.get	9
	local.get	11
	i64.store	0
	i32.const	24
	local.set	12
	local.get	6
	local.get	12
	i32.add 
	local.set	13
	local.get	0
	local.get	12
	i32.add 
	local.set	14
	local.get	14
	i64.load	0
	local.set	15
	local.get	13
	local.get	15
	i64.store	0
	i32.const	16
	local.set	16
	local.get	6
	local.get	16
	i32.add 
	local.set	17
	local.get	0
	local.get	16
	i32.add 
	local.set	18
	local.get	18
	i64.load	0
	local.set	19
	local.get	17
	local.get	19
	i64.store	0
	i32.const	8
	local.set	20
	local.get	6
	local.get	20
	i32.add 
	local.set	21
	local.get	0
	local.get	20
	i32.add 
	local.set	22
	local.get	22
	i64.load	0
	local.set	23
	local.get	21
	local.get	23
	i64.store	0
	local.get	3
	i32.load	12
	local.set	24
	i32.const	16
	local.set	25
	local.get	3
	local.get	25
	i32.add 
	local.set	26
	local.get	26
	global.set	__stack_pointer
	local.get	24
	return
	end_function
.Lfunc_end0:
	.size	ast_new, .Lfunc_end0-ast_new
                                        # -- End function
	.section	.text.astlist_new,"",@
	.hidden	astlist_new                     # -- Begin function astlist_new
	.globl	astlist_new
	.type	astlist_new,@function
astlist_new:                            # @astlist_new
	.functype	astlist_new () -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	0
	i32.const	16
	local.set	1
	local.get	0
	local.get	1
	i32.sub 
	local.set	2
	local.get	2
	global.set	__stack_pointer
	i32.const	12
	local.set	3
	local.get	3
	call	malloc
	local.set	4
	local.get	2
	local.get	4
	i32.store	12
	local.get	2
	i32.load	12
	local.set	5
	i32.const	0
	local.set	6
	local.get	5
	local.get	6
	i32.store	0
	local.get	2
	i32.load	12
	local.set	7
	i32.const	4
	local.set	8
	local.get	7
	local.get	8
	i32.store	4
	local.get	2
	i32.load	12
	local.set	9
	local.get	9
	i32.load	4
	local.set	10
	i32.const	2
	local.set	11
	local.get	10
	local.get	11
	i32.shl 
	local.set	12
	local.get	12
	call	malloc
	local.set	13
	local.get	2
	i32.load	12
	local.set	14
	local.get	14
	local.get	13
	i32.store	8
	local.get	2
	i32.load	12
	local.set	15
	i32.const	16
	local.set	16
	local.get	2
	local.get	16
	i32.add 
	local.set	17
	local.get	17
	global.set	__stack_pointer
	local.get	15
	return
	end_function
.Lfunc_end1:
	.size	astlist_new, .Lfunc_end1-astlist_new
                                        # -- End function
	.section	.text.astlist_push,"",@
	.hidden	astlist_push                    # -- Begin function astlist_push
	.globl	astlist_push
	.type	astlist_push,@function
astlist_push:                           # @astlist_push
	.functype	astlist_push (i32, i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	16
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	global.set	__stack_pointer
	local.get	4
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	local.get	4
	i32.load	12
	local.set	5
	local.get	5
	i32.load	0
	local.set	6
	local.get	4
	i32.load	12
	local.set	7
	local.get	7
	i32.load	4
	local.set	8
	local.get	6
	local.set	9
	local.get	8
	local.set	10
	local.get	9
	local.get	10
	i32.eq  
	local.set	11
	i32.const	1
	local.set	12
	local.get	11
	local.get	12
	i32.and 
	local.set	13
	block   	
	local.get	13
	i32.eqz
	br_if   	0                               # 0: down to label0
# %bb.1:
	local.get	4
	i32.load	12
	local.set	14
	local.get	14
	i32.load	4
	local.set	15
	i32.const	1
	local.set	16
	local.get	15
	local.get	16
	i32.shl 
	local.set	17
	local.get	14
	local.get	17
	i32.store	4
	local.get	4
	i32.load	12
	local.set	18
	local.get	18
	i32.load	8
	local.set	19
	local.get	4
	i32.load	12
	local.set	20
	local.get	20
	i32.load	4
	local.set	21
	i32.const	2
	local.set	22
	local.get	21
	local.get	22
	i32.shl 
	local.set	23
	local.get	19
	local.get	23
	call	realloc
	local.set	24
	local.get	4
	i32.load	12
	local.set	25
	local.get	25
	local.get	24
	i32.store	8
.LBB2_2:
	end_block                               # label0:
	local.get	4
	i32.load	8
	local.set	26
	local.get	4
	i32.load	12
	local.set	27
	local.get	27
	i32.load	8
	local.set	28
	local.get	4
	i32.load	12
	local.set	29
	local.get	29
	i32.load	0
	local.set	30
	i32.const	1
	local.set	31
	local.get	30
	local.get	31
	i32.add 
	local.set	32
	local.get	29
	local.get	32
	i32.store	0
	i32.const	2
	local.set	33
	local.get	30
	local.get	33
	i32.shl 
	local.set	34
	local.get	28
	local.get	34
	i32.add 
	local.set	35
	local.get	35
	local.get	26
	i32.store	0
	i32.const	16
	local.set	36
	local.get	4
	local.get	36
	i32.add 
	local.set	37
	local.get	37
	global.set	__stack_pointer
	return
	end_function
.Lfunc_end2:
	.size	astlist_push, .Lfunc_end2-astlist_push
                                        # -- End function
	.section	.text.asttype_str,"",@
	.hidden	asttype_str                     # -- Begin function asttype_str
	.globl	asttype_str
	.type	asttype_str,@function
asttype_str:                            # @asttype_str
	.functype	asttype_str (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	local.get	0
	i32.store	12
	local.get	3
	i32.load	12
	local.set	4
	i32.const	__ast_type_str
	local.set	5
	i32.const	2
	local.set	6
	local.get	4
	local.get	6
	i32.shl 
	local.set	7
	local.get	5
	local.get	7
	i32.add 
	local.set	8
	local.get	8
	i32.load	0
	local.set	9
	local.get	9
	return
	end_function
.Lfunc_end3:
	.size	asttype_str, .Lfunc_end3-asttype_str
                                        # -- End function
	.section	.text.astlist_free,"",@
	.hidden	astlist_free                    # -- Begin function astlist_free
	.globl	astlist_free
	.type	astlist_free,@function
astlist_free:                           # @astlist_free
	.functype	astlist_free (i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	16
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	global.set	__stack_pointer
	local.get	3
	local.get	0
	i32.store	12
	local.get	3
	i32.load	12
	local.set	4
	local.get	4
	i32.load	8
	local.set	5
	local.get	5
	call	free
	local.get	3
	i32.load	12
	local.set	6
	local.get	6
	call	free
	i32.const	16
	local.set	7
	local.get	3
	local.get	7
	i32.add 
	local.set	8
	local.get	8
	global.set	__stack_pointer
	return
	end_function
.Lfunc_end4:
	.size	astlist_free, .Lfunc_end4-astlist_free
                                        # -- End function
	.type	__ast_type_str,@object          # @__ast_type_str
	.section	.data.__ast_type_str,"",@
	.p2align	4
__ast_type_str:
	.int32	.L.str
	.int32	.L.str.1
	.int32	.L.str.2
	.int32	.L.str.3
	.int32	.L.str.4
	.int32	.L.str.5
	.int32	.L.str.6
	.int32	.L.str.7
	.int32	.L.str.8
	.int32	.L.str.9
	.int32	.L.str.10
	.int32	.L.str.11
	.int32	.L.str.12
	.int32	.L.str.13
	.size	__ast_type_str, 56

	.type	.L.str,@object                  # @.str
	.section	.rodata..L.str,"S",@
.L.str:
	.asciz	"A_OR"
	.size	.L.str, 5

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata..L.str.1,"S",@
.L.str.1:
	.asciz	"A_AND"
	.size	.L.str.1, 6

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata..L.str.2,"S",@
.L.str.2:
	.asciz	"A_UNARY"
	.size	.L.str.2, 8

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata..L.str.3,"S",@
.L.str.3:
	.asciz	"A_BINARY"
	.size	.L.str.3, 9

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata..L.str.4,"S",@
.L.str.4:
	.asciz	"A_DECLARATION"
	.size	.L.str.4, 14

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata..L.str.5,"S",@
.L.str.5:
	.asciz	"A_ASSIGNMENT"
	.size	.L.str.5, 13

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata..L.str.6,"S",@
.L.str.6:
	.asciz	"A_LITERAL"
	.size	.L.str.6, 10

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata..L.str.7,"S",@
.L.str.7:
	.asciz	"A_VARIABLE"
	.size	.L.str.7, 11

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata..L.str.8,"S",@
.L.str.8:
	.asciz	"A_IF"
	.size	.L.str.8, 5

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata..L.str.9,"S",@
.L.str.9:
	.asciz	"A_WHILE"
	.size	.L.str.9, 8

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata..L.str.10,"S",@
.L.str.10:
	.asciz	"A_BLOCK"
	.size	.L.str.10, 8

	.type	.L.str.11,@object               # @.str.11
	.section	.rodata..L.str.11,"S",@
.L.str.11:
	.asciz	"A_FUNCTION"
	.size	.L.str.11, 11

	.type	.L.str.12,@object               # @.str.12
	.section	.rodata..L.str.12,"S",@
.L.str.12:
	.asciz	"A_CALL"
	.size	.L.str.12, 7

	.type	.L.str.13,@object               # @.str.13
	.section	.rodata..L.str.13,"S",@
.L.str.13:
	.asciz	"A_PRINT"
	.size	.L.str.13, 8

	.ident	"clang version 14.0.6"
	.section	.custom_section.producers,"",@
	.int8	1
	.int8	12
	.ascii	"processed-by"
	.int8	1
	.int8	5
	.ascii	"clang"
	.int8	6
	.ascii	"14.0.6"
	.section	.rodata..L.str.13,"S",@
