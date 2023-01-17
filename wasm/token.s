	.text
	.file	"token.c"
	.section	.text.tokentype_str,"",@
	.hidden	tokentype_str                   # -- Begin function tokentype_str
	.globl	tokentype_str
	.globaltype	__stack_pointer, i32
	.functype	calloc (i32, i32) -> (i32)
	.functype	realloc (i32, i32) -> (i32)
	.functype	free (i32) -> ()
	.type	tokentype_str,@function
tokentype_str:                          # @tokentype_str
	.functype	tokentype_str (i32) -> (i32)
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
	i32.const	__TokenName
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
.Lfunc_end0:
	.size	tokentype_str, .Lfunc_end0-tokentype_str
                                        # -- End function
	.section	.text.tokenlist_new,"",@
	.hidden	tokenlist_new                   # -- Begin function tokenlist_new
	.globl	tokenlist_new
	.type	tokenlist_new,@function
tokenlist_new:                          # @tokenlist_new
	.functype	tokenlist_new () -> (i32)
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
	i32.const	1
	local.set	3
	i32.const	12
	local.set	4
	local.get	3
	local.get	4
	call	calloc
	local.set	5
	local.get	2
	local.get	5
	i32.store	12
	local.get	2
	i32.load	12
	local.set	6
	i32.const	0
	local.set	7
	local.get	6
	local.get	7
	i32.store	0
	local.get	2
	i32.load	12
	local.set	8
	i32.const	4
	local.set	9
	local.get	8
	local.get	9
	i32.store	4
	local.get	2
	i32.load	12
	local.set	10
	local.get	10
	i32.load	4
	local.set	11
	i32.const	24
	local.set	12
	local.get	12
	local.get	11
	call	calloc
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
	.size	tokenlist_new, .Lfunc_end1-tokenlist_new
                                        # -- End function
	.section	.text.tokenlist_at,"",@
	.hidden	tokenlist_at                    # -- Begin function tokenlist_at
	.globl	tokenlist_at
	.type	tokenlist_at,@function
tokenlist_at:                           # @tokenlist_at
	.functype	tokenlist_at (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	local.get	0
	i32.store	12
	local.get	4
	local.get	1
	i32.store	8
	local.get	4
	i32.load	12
	local.set	5
	local.get	5
	i32.load	8
	local.set	6
	local.get	4
	i32.load	8
	local.set	7
	i32.const	24
	local.set	8
	local.get	7
	local.get	8
	i32.mul 
	local.set	9
	local.get	6
	local.get	9
	i32.add 
	local.set	10
	local.get	10
	return
	end_function
.Lfunc_end2:
	.size	tokenlist_at, .Lfunc_end2-tokenlist_at
                                        # -- End function
	.section	.text.tokenlist_push,"",@
	.hidden	tokenlist_push                  # -- Begin function tokenlist_push
	.globl	tokenlist_push
	.type	tokenlist_push,@function
tokenlist_push:                         # @tokenlist_push
	.functype	tokenlist_push (i32, i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32
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
	i32.const	24
	local.set	22
	local.get	21
	local.get	22
	i32.mul 
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
.LBB3_2:
	end_block                               # label0:
	local.get	4
	i32.load	12
	local.set	26
	local.get	26
	i32.load	8
	local.set	27
	local.get	4
	i32.load	12
	local.set	28
	local.get	28
	i32.load	0
	local.set	29
	i32.const	1
	local.set	30
	local.get	29
	local.get	30
	i32.add 
	local.set	31
	local.get	28
	local.get	31
	i32.store	0
	i32.const	24
	local.set	32
	local.get	29
	local.get	32
	i32.mul 
	local.set	33
	local.get	27
	local.get	33
	i32.add 
	local.set	34
	local.get	1
	i64.load	0:p2align=2
	local.set	35
	local.get	34
	local.get	35
	i64.store	0:p2align=2
	i32.const	16
	local.set	36
	local.get	34
	local.get	36
	i32.add 
	local.set	37
	local.get	1
	local.get	36
	i32.add 
	local.set	38
	local.get	38
	i64.load	0:p2align=2
	local.set	39
	local.get	37
	local.get	39
	i64.store	0:p2align=2
	i32.const	8
	local.set	40
	local.get	34
	local.get	40
	i32.add 
	local.set	41
	local.get	1
	local.get	40
	i32.add 
	local.set	42
	local.get	42
	i64.load	0:p2align=2
	local.set	43
	local.get	41
	local.get	43
	i64.store	0:p2align=2
	i32.const	16
	local.set	44
	local.get	4
	local.get	44
	i32.add 
	local.set	45
	local.get	45
	global.set	__stack_pointer
	return
	end_function
.Lfunc_end3:
	.size	tokenlist_push, .Lfunc_end3-tokenlist_push
                                        # -- End function
	.section	.text.tokenlist_free,"",@
	.hidden	tokenlist_free                  # -- Begin function tokenlist_free
	.globl	tokenlist_free
	.type	tokenlist_free,@function
tokenlist_free:                         # @tokenlist_free
	.functype	tokenlist_free (i32) -> ()
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
	.size	tokenlist_free, .Lfunc_end4-tokenlist_free
                                        # -- End function
	.type	__TokenName,@object             # @__TokenName
	.section	.data.__TokenName,"",@
	.p2align	4
__TokenName:
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
	.int32	.L.str.14
	.int32	.L.str.15
	.int32	.L.str.16
	.int32	.L.str.17
	.int32	.L.str.18
	.int32	.L.str.19
	.int32	.L.str.20
	.int32	.L.str.21
	.int32	.L.str.22
	.int32	.L.str.23
	.int32	.L.str.24
	.int32	.L.str.25
	.int32	.L.str.26
	.int32	.L.str.27
	.int32	.L.str.28
	.int32	.L.str.29
	.int32	.L.str.30
	.int32	.L.str.31
	.int32	.L.str.32
	.int32	.L.str.33
	.int32	.L.str.34
	.size	__TokenName, 140

	.type	.L.str,@object                  # @.str
	.section	.rodata..L.str,"S",@
.L.str:
	.asciz	"T_LET"
	.size	.L.str, 6

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata..L.str.1,"S",@
.L.str.1:
	.asciz	"T_LPAREN"
	.size	.L.str.1, 9

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata..L.str.2,"S",@
.L.str.2:
	.asciz	"T_RPAREN"
	.size	.L.str.2, 9

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata..L.str.3,"S",@
.L.str.3:
	.asciz	"T_LBRACE"
	.size	.L.str.3, 9

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata..L.str.4,"S",@
.L.str.4:
	.asciz	"T_RBRACE"
	.size	.L.str.4, 9

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata..L.str.5,"S",@
.L.str.5:
	.asciz	"T_IDENTIFIER"
	.size	.L.str.5, 13

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata..L.str.6,"S",@
.L.str.6:
	.asciz	"T_NUMBER"
	.size	.L.str.6, 9

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata..L.str.7,"S",@
.L.str.7:
	.asciz	"T_STRING"
	.size	.L.str.7, 9

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata..L.str.8,"S",@
.L.str.8:
	.asciz	"T_PLUS"
	.size	.L.str.8, 7

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata..L.str.9,"S",@
.L.str.9:
	.asciz	"T_MINUS"
	.size	.L.str.9, 8

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata..L.str.10,"S",@
.L.str.10:
	.asciz	"T_MULTIPLY"
	.size	.L.str.10, 11

	.type	.L.str.11,@object               # @.str.11
	.section	.rodata..L.str.11,"S",@
.L.str.11:
	.asciz	"T_DIVIDE"
	.size	.L.str.11, 9

	.type	.L.str.12,@object               # @.str.12
	.section	.rodata..L.str.12,"S",@
.L.str.12:
	.asciz	"T_MODULO"
	.size	.L.str.12, 9

	.type	.L.str.13,@object               # @.str.13
	.section	.rodata..L.str.13,"S",@
.L.str.13:
	.asciz	"T_EQUAL"
	.size	.L.str.13, 8

	.type	.L.str.14,@object               # @.str.14
	.section	.rodata..L.str.14,"S",@
.L.str.14:
	.asciz	"T_NOTEQUAL"
	.size	.L.str.14, 11

	.type	.L.str.15,@object               # @.str.15
	.section	.rodata..L.str.15,"S",@
.L.str.15:
	.asciz	"T_GREATER"
	.size	.L.str.15, 10

	.type	.L.str.16,@object               # @.str.16
	.section	.rodata..L.str.16,"S",@
.L.str.16:
	.asciz	"T_LESS"
	.size	.L.str.16, 7

	.type	.L.str.17,@object               # @.str.17
	.section	.rodata..L.str.17,"S",@
.L.str.17:
	.asciz	"T_GREATEREQUAL"
	.size	.L.str.17, 15

	.type	.L.str.18,@object               # @.str.18
	.section	.rodata..L.str.18,"S",@
.L.str.18:
	.asciz	"T_LESSEQUAL"
	.size	.L.str.18, 12

	.type	.L.str.19,@object               # @.str.19
	.section	.rodata..L.str.19,"S",@
.L.str.19:
	.asciz	"T_ASSIGN"
	.size	.L.str.19, 9

	.type	.L.str.20,@object               # @.str.20
	.section	.rodata..L.str.20,"S",@
.L.str.20:
	.asciz	"T_AT"
	.size	.L.str.20, 5

	.type	.L.str.21,@object               # @.str.21
	.section	.rodata..L.str.21,"S",@
.L.str.21:
	.asciz	"T_NOT"
	.size	.L.str.21, 6

	.type	.L.str.22,@object               # @.str.22
	.section	.rodata..L.str.22,"S",@
.L.str.22:
	.asciz	"T_POWER"
	.size	.L.str.22, 8

	.type	.L.str.23,@object               # @.str.23
	.section	.rodata..L.str.23,"S",@
.L.str.23:
	.asciz	"T_TRUE"
	.size	.L.str.23, 7

	.type	.L.str.24,@object               # @.str.24
	.section	.rodata..L.str.24,"S",@
.L.str.24:
	.asciz	"T_FALSE"
	.size	.L.str.24, 8

	.type	.L.str.25,@object               # @.str.25
	.section	.rodata..L.str.25,"S",@
.L.str.25:
	.asciz	"T_NIL"
	.size	.L.str.25, 6

	.type	.L.str.26,@object               # @.str.26
	.section	.rodata..L.str.26,"S",@
.L.str.26:
	.asciz	"T_OR"
	.size	.L.str.26, 5

	.type	.L.str.27,@object               # @.str.27
	.section	.rodata..L.str.27,"S",@
.L.str.27:
	.asciz	"T_AND"
	.size	.L.str.27, 6

	.type	.L.str.28,@object               # @.str.28
	.section	.rodata..L.str.28,"S",@
.L.str.28:
	.asciz	"T_IF"
	.size	.L.str.28, 5

	.type	.L.str.29,@object               # @.str.29
	.section	.rodata..L.str.29,"S",@
.L.str.29:
	.asciz	"T_ELSE"
	.size	.L.str.29, 7

	.type	.L.str.30,@object               # @.str.30
	.section	.rodata..L.str.30,"S",@
.L.str.30:
	.asciz	"T_WHILE"
	.size	.L.str.30, 8

	.type	.L.str.31,@object               # @.str.31
	.section	.rodata..L.str.31,"S",@
.L.str.31:
	.asciz	"T_SUBROUTINE"
	.size	.L.str.31, 13

	.type	.L.str.32,@object               # @.str.32
	.section	.rodata..L.str.32,"S",@
.L.str.32:
	.asciz	"T_PRINT"
	.size	.L.str.32, 8

	.type	.L.str.33,@object               # @.str.33
	.section	.rodata..L.str.33,"S",@
.L.str.33:
	.asciz	"T_CONCAT"
	.size	.L.str.33, 9

	.type	.L.str.34,@object               # @.str.34
	.section	.rodata..L.str.34,"S",@
.L.str.34:
	.asciz	"T_EOF"
	.size	.L.str.34, 6

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
	.section	.rodata..L.str.34,"S",@
