	.text
	.file	"parser.c"
	.section	.text.parse,"",@
	.hidden	parse                           # -- Begin function parse
	.globl	parse
	.globaltype	__stack_pointer, i32
	.functype	astlist_push (i32, i32) -> ()
	.functype	tokenlist_at (i32, i32) -> (i32)
	.functype	ast_new (i32) -> (i32)
	.functype	generic_error (i32, i32, i32, i32) -> ()
	.functype	tokentype_str (i32) -> (i32)
	.functype	tokenlist_new () -> (i32)
	.functype	tokenlist_push (i32, i32) -> ()
	.functype	astlist_new () -> (i32)
	.type	parse,@function
parse:                                  # @parse
	.functype	parse (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	32
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	global.set	__stack_pointer
	local.get	3
	local.get	0
	i32.store	28
	i32.const	0
	local.set	4
	local.get	3
	local.get	4
	i32.store	16
	local.get	3
	i32.load	28
	local.set	5
	local.get	3
	local.get	5
	i32.store	20
	call	astlist_new
	local.set	6
	local.get	3
	local.get	6
	i32.store	12
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label1:
	i32.const	16
	local.set	7
	local.get	3
	local.get	7
	i32.add 
	local.set	8
	local.get	8
	local.set	9
	local.get	9
	call	end
	local.set	10
	i32.const	0
	local.set	11
	local.get	10
	local.set	12
	local.get	11
	local.set	13
	local.get	12
	local.get	13
	i32.ne  
	local.set	14
	i32.const	-1
	local.set	15
	local.get	14
	local.get	15
	i32.xor 
	local.set	16
	i32.const	1
	local.set	17
	local.get	16
	local.get	17
	i32.and 
	local.set	18
	local.get	18
	i32.eqz
	br_if   	1                               # 1: down to label0
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	local.get	3
	i32.load	12
	local.set	19
	i32.const	16
	local.set	20
	local.get	3
	local.get	20
	i32.add 
	local.set	21
	local.get	21
	local.set	22
	local.get	22
	call	expression
	local.set	23
	local.get	19
	local.get	23
	call	astlist_push
	br      	0                               # 0: up to label1
.LBB0_3:
	end_loop
	end_block                               # label0:
	local.get	3
	i32.load	12
	local.set	24
	i32.const	32
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
	.size	parse, .Lfunc_end0-parse
                                        # -- End function
	.section	.text.end,"",@
	.type	end,@function                   # -- Begin function end
end:                                    # @end
	.functype	end (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	32
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	global.set	__stack_pointer
	local.get	3
	local.get	0
	i32.store	28
	local.get	3
	i32.load	28
	local.set	4
	local.get	3
	local.set	5
	i32.const	0
	local.set	6
	local.get	5
	local.get	4
	local.get	6
	call	peekn
	local.get	3
	i32.load	0
	local.set	7
	i32.const	34
	local.set	8
	local.get	7
	local.set	9
	local.get	8
	local.set	10
	local.get	9
	local.get	10
	i32.eq  
	local.set	11
	i32.const	1
	local.set	12
	i32.const	1
	local.set	13
	local.get	11
	local.get	13
	i32.and 
	local.set	14
	local.get	12
	local.set	15
	block   	
	local.get	14
	br_if   	0                               # 0: down to label2
# %bb.1:
	local.get	3
	i32.load	28
	local.set	16
	local.get	16
	i32.load	0
	local.set	17
	local.get	3
	i32.load	28
	local.set	18
	local.get	18
	i32.load	4
	local.set	19
	local.get	19
	i32.load	0
	local.set	20
	local.get	17
	local.set	21
	local.get	20
	local.set	22
	local.get	21
	local.get	22
	i32.ge_u
	local.set	23
	local.get	23
	local.set	15
.LBB1_2:
	end_block                               # label2:
	local.get	15
	local.set	24
	i32.const	1
	local.set	25
	local.get	24
	local.get	25
	i32.and 
	local.set	26
	i32.const	32
	local.set	27
	local.get	3
	local.get	27
	i32.add 
	local.set	28
	local.get	28
	global.set	__stack_pointer
	local.get	26
	return
	end_function
.Lfunc_end1:
	.size	end, .Lfunc_end1-end
                                        # -- End function
	.section	.text.expression,"",@
	.type	expression,@function            # -- Begin function expression
expression:                             # @expression
	.functype	expression (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	176
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	global.set	__stack_pointer
	local.get	3
	local.get	0
	i32.store	168
	local.get	3
	i32.load	168
	local.set	4
	i32.const	28
	local.set	5
	local.get	3
	local.get	5
	i32.store	112
	i32.const	1
	local.set	6
	i32.const	112
	local.set	7
	local.get	3
	local.get	7
	i32.add 
	local.set	8
	local.get	4
	local.get	6
	local.get	8
	call	check
	local.set	9
	block   	
	block   	
	local.get	9
	i32.eqz
	br_if   	0                               # 0: down to label4
# %bb.1:
	local.get	3
	i32.load	168
	local.set	10
	local.get	10
	call	if_else
	local.set	11
	local.get	3
	local.get	11
	i32.store	172
	br      	1                               # 1: down to label3
.LBB2_2:
	end_block                               # label4:
	local.get	3
	i32.load	168
	local.set	12
	i32.const	32
	local.set	13
	local.get	3
	local.get	13
	i32.store	96
	i32.const	1
	local.set	14
	i32.const	96
	local.set	15
	local.get	3
	local.get	15
	i32.add 
	local.set	16
	local.get	12
	local.get	14
	local.get	16
	call	match
	local.set	17
	block   	
	local.get	17
	i32.eqz
	br_if   	0                               # 0: down to label5
# %bb.3:
	i32.const	128
	local.set	18
	local.get	3
	local.get	18
	i32.add 
	local.set	19
	local.get	19
	local.set	20
	i64.const	0
	local.set	21
	local.get	20
	local.get	21
	i64.store	0
	i32.const	32
	local.set	22
	local.get	20
	local.get	22
	i32.add 
	local.set	23
	local.get	23
	local.get	21
	i64.store	0
	i32.const	24
	local.set	24
	local.get	20
	local.get	24
	i32.add 
	local.set	25
	local.get	25
	local.get	21
	i64.store	0
	i32.const	16
	local.set	26
	local.get	20
	local.get	26
	i32.add 
	local.set	27
	local.get	27
	local.get	21
	i64.store	0
	i32.const	8
	local.set	28
	local.get	20
	local.get	28
	i32.add 
	local.set	29
	local.get	29
	local.get	21
	i64.store	0
	i32.const	13
	local.set	30
	local.get	3
	local.get	30
	i32.store	128
	local.get	3
	i32.load	168
	local.set	31
	local.get	31
	call	expression
	local.set	32
	local.get	3
	local.get	32
	i32.store	136
	i32.const	32
	local.set	33
	i32.const	8
	local.set	34
	local.get	3
	local.get	34
	i32.add 
	local.set	35
	local.get	35
	local.get	33
	i32.add 
	local.set	36
	i32.const	128
	local.set	37
	local.get	3
	local.get	37
	i32.add 
	local.set	38
	local.get	38
	local.get	33
	i32.add 
	local.set	39
	local.get	39
	i64.load	0
	local.set	40
	local.get	36
	local.get	40
	i64.store	0
	i32.const	24
	local.set	41
	i32.const	8
	local.set	42
	local.get	3
	local.get	42
	i32.add 
	local.set	43
	local.get	43
	local.get	41
	i32.add 
	local.set	44
	i32.const	128
	local.set	45
	local.get	3
	local.get	45
	i32.add 
	local.set	46
	local.get	46
	local.get	41
	i32.add 
	local.set	47
	local.get	47
	i64.load	0
	local.set	48
	local.get	44
	local.get	48
	i64.store	0
	i32.const	16
	local.set	49
	i32.const	8
	local.set	50
	local.get	3
	local.get	50
	i32.add 
	local.set	51
	local.get	51
	local.get	49
	i32.add 
	local.set	52
	i32.const	128
	local.set	53
	local.get	3
	local.get	53
	i32.add 
	local.set	54
	local.get	54
	local.get	49
	i32.add 
	local.set	55
	local.get	55
	i64.load	0
	local.set	56
	local.get	52
	local.get	56
	i64.store	0
	i32.const	8
	local.set	57
	i32.const	8
	local.set	58
	local.get	3
	local.get	58
	i32.add 
	local.set	59
	local.get	59
	local.get	57
	i32.add 
	local.set	60
	i32.const	128
	local.set	61
	local.get	3
	local.get	61
	i32.add 
	local.set	62
	local.get	62
	local.get	57
	i32.add 
	local.set	63
	local.get	63
	i64.load	0
	local.set	64
	local.get	60
	local.get	64
	i64.store	0
	local.get	3
	i64.load	128
	local.set	65
	local.get	3
	local.get	65
	i64.store	8
	i32.const	8
	local.set	66
	local.get	3
	local.get	66
	i32.add 
	local.set	67
	local.get	67
	call	ast_new
	local.set	68
	local.get	3
	local.get	68
	i32.store	172
	br      	1                               # 1: down to label3
.LBB2_4:
	end_block                               # label5:
	local.get	3
	i32.load	168
	local.set	69
	i32.const	30
	local.set	70
	local.get	3
	local.get	70
	i32.store	80
	i32.const	1
	local.set	71
	i32.const	80
	local.set	72
	local.get	3
	local.get	72
	i32.add 
	local.set	73
	local.get	69
	local.get	71
	local.get	73
	call	check
	local.set	74
	block   	
	local.get	74
	i32.eqz
	br_if   	0                               # 0: down to label6
# %bb.5:
	local.get	3
	i32.load	168
	local.set	75
	local.get	75
	call	while_loop
	local.set	76
	local.get	3
	local.get	76
	i32.store	172
	br      	1                               # 1: down to label3
.LBB2_6:
	end_block                               # label6:
	local.get	3
	i32.load	168
	local.set	77
	i32.const	31
	local.set	78
	local.get	3
	local.get	78
	i32.store	64
	i32.const	1
	local.set	79
	i32.const	64
	local.set	80
	local.get	3
	local.get	80
	i32.add 
	local.set	81
	local.get	77
	local.get	79
	local.get	81
	call	check
	local.set	82
	block   	
	local.get	82
	i32.eqz
	br_if   	0                               # 0: down to label7
# %bb.7:
	local.get	3
	i32.load	168
	local.set	83
	local.get	83
	call	function
	local.set	84
	local.get	3
	local.get	84
	i32.store	172
	br      	1                               # 1: down to label3
.LBB2_8:
	end_block                               # label7:
	local.get	3
	i32.load	168
	local.set	85
	i32.const	3
	local.set	86
	local.get	3
	local.get	86
	i32.store	48
	i32.const	1
	local.set	87
	i32.const	48
	local.set	88
	local.get	3
	local.get	88
	i32.add 
	local.set	89
	local.get	85
	local.get	87
	local.get	89
	call	check
	local.set	90
	block   	
	local.get	90
	i32.eqz
	br_if   	0                               # 0: down to label8
# %bb.9:
	local.get	3
	i32.load	168
	local.set	91
	local.get	91
	call	block
	local.set	92
	local.get	3
	local.get	92
	i32.store	172
	br      	1                               # 1: down to label3
.LBB2_10:
	end_block                               # label8:
	local.get	3
	i32.load	168
	local.set	93
	local.get	93
	call	declaration
	local.set	94
	local.get	3
	local.get	94
	i32.store	172
.LBB2_11:
	end_block                               # label3:
	local.get	3
	i32.load	172
	local.set	95
	i32.const	176
	local.set	96
	local.get	3
	local.get	96
	i32.add 
	local.set	97
	local.get	97
	global.set	__stack_pointer
	local.get	95
	return
	end_function
.Lfunc_end2:
	.size	expression, .Lfunc_end2-expression
                                        # -- End function
	.section	.text.peekn,"",@
	.type	peekn,@function                 # -- Begin function peekn
peekn:                                  # @peekn
	.functype	peekn (i32, i32, i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	16
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	global.set	__stack_pointer
	local.get	5
	local.get	1
	i32.store	12
	local.get	5
	local.get	2
	i32.store	8
	local.get	5
	i32.load	12
	local.set	6
	local.get	6
	i32.load	4
	local.set	7
	local.get	5
	i32.load	12
	local.set	8
	local.get	8
	i32.load	0
	local.set	9
	local.get	5
	i32.load	8
	local.set	10
	local.get	9
	local.get	10
	i32.add 
	local.set	11
	local.get	7
	local.get	11
	call	tokenlist_at
	local.set	12
	local.get	12
	i64.load	0:p2align=2
	local.set	13
	local.get	0
	local.get	13
	i64.store	0:p2align=2
	i32.const	16
	local.set	14
	local.get	0
	local.get	14
	i32.add 
	local.set	15
	local.get	12
	local.get	14
	i32.add 
	local.set	16
	local.get	16
	i64.load	0:p2align=2
	local.set	17
	local.get	15
	local.get	17
	i64.store	0:p2align=2
	i32.const	8
	local.set	18
	local.get	0
	local.get	18
	i32.add 
	local.set	19
	local.get	12
	local.get	18
	i32.add 
	local.set	20
	local.get	20
	i64.load	0:p2align=2
	local.set	21
	local.get	19
	local.get	21
	i64.store	0:p2align=2
	i32.const	16
	local.set	22
	local.get	5
	local.get	22
	i32.add 
	local.set	23
	local.get	23
	global.set	__stack_pointer
	return
	end_function
.Lfunc_end3:
	.size	peekn, .Lfunc_end3-peekn
                                        # -- End function
	.section	.text.check,"",@
	.type	check,@function                 # -- Begin function check
check:                                  # @check
	.functype	check (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	48
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	global.set	__stack_pointer
	local.get	5
	local.get	0
	i32.store	40
	local.get	5
	local.get	1
	i32.store	36
	i32.const	32
	local.set	6
	local.get	5
	local.get	6
	i32.add 
	local.set	7
	local.get	7
	local.set	8
	local.get	8
	local.get	2
	i32.store	0
	i32.const	0
	local.set	9
	local.get	5
	local.get	9
	i32.store	28
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	block   	
	block   	
	loop    	                                # label11:
	local.get	5
	i32.load	28
	local.set	10
	local.get	5
	i32.load	36
	local.set	11
	local.get	10
	local.set	12
	local.get	11
	local.set	13
	local.get	12
	local.get	13
	i32.lt_s
	local.set	14
	i32.const	1
	local.set	15
	local.get	14
	local.get	15
	i32.and 
	local.set	16
	local.get	16
	i32.eqz
	br_if   	1                               # 1: down to label10
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	local.get	5
	i32.load	40
	local.set	17
	local.get	5
	local.set	18
	i32.const	0
	local.set	19
	local.get	18
	local.get	17
	local.get	19
	call	peekn
	local.get	5
	i32.load	0
	local.set	20
	local.get	5
	i32.load	32
	local.set	21
	i32.const	4
	local.set	22
	local.get	21
	local.get	22
	i32.add 
	local.set	23
	local.get	5
	local.get	23
	i32.store	32
	local.get	21
	i32.load	0
	local.set	24
	local.get	20
	local.set	25
	local.get	24
	local.set	26
	local.get	25
	local.get	26
	i32.eq  
	local.set	27
	i32.const	1
	local.set	28
	local.get	27
	local.get	28
	i32.and 
	local.set	29
	block   	
	local.get	29
	i32.eqz
	br_if   	0                               # 0: down to label12
# %bb.3:
	i32.const	1
	local.set	30
	local.get	5
	local.get	30
	i32.store	44
	br      	3                               # 3: down to label9
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
	end_block                               # label12:
# %bb.5:                                #   in Loop: Header=BB4_1 Depth=1
	local.get	5
	i32.load	28
	local.set	31
	i32.const	1
	local.set	32
	local.get	31
	local.get	32
	i32.add 
	local.set	33
	local.get	5
	local.get	33
	i32.store	28
	br      	0                               # 0: up to label11
.LBB4_6:
	end_loop
	end_block                               # label10:
	i32.const	32
	local.set	34
	local.get	5
	local.get	34
	i32.add 
	local.set	35
	local.get	35
	drop
	i32.const	0
	local.set	36
	local.get	5
	local.get	36
	i32.store	44
.LBB4_7:
	end_block                               # label9:
	local.get	5
	i32.load	44
	local.set	37
	i32.const	48
	local.set	38
	local.get	5
	local.get	38
	i32.add 
	local.set	39
	local.get	39
	global.set	__stack_pointer
	local.get	37
	return
	end_function
.Lfunc_end4:
	.size	check, .Lfunc_end4-check
                                        # -- End function
	.section	.text.if_else,"",@
	.type	if_else,@function               # -- Begin function if_else
if_else:                                # @if_else
	.functype	if_else (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	144
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	global.set	__stack_pointer
	local.get	3
	local.get	0
	i32.store	140
	local.get	3
	i32.load	140
	local.set	4
	i32.const	112
	local.set	5
	local.get	3
	local.get	5
	i32.add 
	local.set	6
	local.get	6
	local.set	7
	i32.const	28
	local.set	8
	local.get	7
	local.get	4
	local.get	8
	call	consume
	local.get	3
	i32.load	140
	local.set	9
	local.get	9
	call	expression
	local.set	10
	local.get	3
	local.get	10
	i32.store	108
	local.get	3
	i32.load	140
	local.set	11
	local.get	11
	call	expression
	local.set	12
	local.get	3
	local.get	12
	i32.store	104
	i32.const	0
	local.set	13
	local.get	3
	local.get	13
	i32.store	100
	local.get	3
	i32.load	140
	local.set	14
	i32.const	29
	local.set	15
	local.get	3
	local.get	15
	i32.store	48
	i32.const	1
	local.set	16
	i32.const	48
	local.set	17
	local.get	3
	local.get	17
	i32.add 
	local.set	18
	local.get	14
	local.get	16
	local.get	18
	call	match
	local.set	19
	block   	
	local.get	19
	i32.eqz
	br_if   	0                               # 0: down to label13
# %bb.1:
	local.get	3
	i32.load	140
	local.set	20
	local.get	20
	call	expression
	local.set	21
	local.get	3
	local.get	21
	i32.store	100
.LBB5_2:
	end_block                               # label13:
	i32.const	8
	local.set	22
	local.get	3
	local.get	22
	i32.store	56
	local.get	3
	i32.load	108
	local.set	23
	local.get	3
	local.get	23
	i32.store	64
	local.get	3
	i32.load	104
	local.set	24
	local.get	3
	local.get	24
	i32.store	68
	local.get	3
	i32.load	100
	local.set	25
	local.get	3
	local.get	25
	i32.store	72
	i32.const	32
	local.set	26
	i32.const	8
	local.set	27
	local.get	3
	local.get	27
	i32.add 
	local.set	28
	local.get	28
	local.get	26
	i32.add 
	local.set	29
	i32.const	56
	local.set	30
	local.get	3
	local.get	30
	i32.add 
	local.set	31
	local.get	31
	local.get	26
	i32.add 
	local.set	32
	local.get	32
	i64.load	0
	local.set	33
	local.get	29
	local.get	33
	i64.store	0
	i32.const	24
	local.set	34
	i32.const	8
	local.set	35
	local.get	3
	local.get	35
	i32.add 
	local.set	36
	local.get	36
	local.get	34
	i32.add 
	local.set	37
	i32.const	56
	local.set	38
	local.get	3
	local.get	38
	i32.add 
	local.set	39
	local.get	39
	local.get	34
	i32.add 
	local.set	40
	local.get	40
	i64.load	0
	local.set	41
	local.get	37
	local.get	41
	i64.store	0
	i32.const	16
	local.set	42
	i32.const	8
	local.set	43
	local.get	3
	local.get	43
	i32.add 
	local.set	44
	local.get	44
	local.get	42
	i32.add 
	local.set	45
	i32.const	56
	local.set	46
	local.get	3
	local.get	46
	i32.add 
	local.set	47
	local.get	47
	local.get	42
	i32.add 
	local.set	48
	local.get	48
	i64.load	0
	local.set	49
	local.get	45
	local.get	49
	i64.store	0
	i32.const	8
	local.set	50
	i32.const	8
	local.set	51
	local.get	3
	local.get	51
	i32.add 
	local.set	52
	local.get	52
	local.get	50
	i32.add 
	local.set	53
	i32.const	56
	local.set	54
	local.get	3
	local.get	54
	i32.add 
	local.set	55
	local.get	55
	local.get	50
	i32.add 
	local.set	56
	local.get	56
	i64.load	0
	local.set	57
	local.get	53
	local.get	57
	i64.store	0
	local.get	3
	i64.load	56
	local.set	58
	local.get	3
	local.get	58
	i64.store	8
	i32.const	8
	local.set	59
	local.get	3
	local.get	59
	i32.add 
	local.set	60
	local.get	60
	call	ast_new
	local.set	61
	i32.const	144
	local.set	62
	local.get	3
	local.get	62
	i32.add 
	local.set	63
	local.get	63
	global.set	__stack_pointer
	local.get	61
	return
	end_function
.Lfunc_end5:
	.size	if_else, .Lfunc_end5-if_else
                                        # -- End function
	.section	.text.match,"",@
	.type	match,@function                 # -- Begin function match
match:                                  # @match
	.functype	match (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	80
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	global.set	__stack_pointer
	local.get	5
	local.get	0
	i32.store	72
	local.get	5
	local.get	1
	i32.store	68
	i32.const	64
	local.set	6
	local.get	5
	local.get	6
	i32.add 
	local.set	7
	local.get	7
	local.set	8
	local.get	8
	local.get	2
	i32.store	0
	i32.const	0
	local.set	9
	local.get	5
	local.get	9
	i32.store	60
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	block   	
	block   	
	loop    	                                # label16:
	local.get	5
	i32.load	60
	local.set	10
	local.get	5
	i32.load	68
	local.set	11
	local.get	10
	local.set	12
	local.get	11
	local.set	13
	local.get	12
	local.get	13
	i32.lt_s
	local.set	14
	i32.const	1
	local.set	15
	local.get	14
	local.get	15
	i32.and 
	local.set	16
	local.get	16
	i32.eqz
	br_if   	1                               # 1: down to label15
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	local.get	5
	i32.load	72
	local.set	17
	i32.const	32
	local.set	18
	local.get	5
	local.get	18
	i32.add 
	local.set	19
	local.get	19
	local.set	20
	i32.const	0
	local.set	21
	local.get	20
	local.get	17
	local.get	21
	call	peekn
	local.get	5
	i32.load	32
	local.set	22
	local.get	5
	i32.load	64
	local.set	23
	i32.const	4
	local.set	24
	local.get	23
	local.get	24
	i32.add 
	local.set	25
	local.get	5
	local.get	25
	i32.store	64
	local.get	23
	i32.load	0
	local.set	26
	local.get	22
	local.set	27
	local.get	26
	local.set	28
	local.get	27
	local.get	28
	i32.eq  
	local.set	29
	i32.const	1
	local.set	30
	local.get	29
	local.get	30
	i32.and 
	local.set	31
	block   	
	local.get	31
	i32.eqz
	br_if   	0                               # 0: down to label17
# %bb.3:
	local.get	5
	i32.load	72
	local.set	32
	i32.const	8
	local.set	33
	local.get	5
	local.get	33
	i32.add 
	local.set	34
	local.get	34
	local.set	35
	local.get	35
	local.get	32
	call	advance
	i32.const	1
	local.set	36
	local.get	5
	local.get	36
	i32.store	76
	br      	3                               # 3: down to label14
.LBB6_4:                                #   in Loop: Header=BB6_1 Depth=1
	end_block                               # label17:
# %bb.5:                                #   in Loop: Header=BB6_1 Depth=1
	local.get	5
	i32.load	60
	local.set	37
	i32.const	1
	local.set	38
	local.get	37
	local.get	38
	i32.add 
	local.set	39
	local.get	5
	local.get	39
	i32.store	60
	br      	0                               # 0: up to label16
.LBB6_6:
	end_loop
	end_block                               # label15:
	i32.const	64
	local.set	40
	local.get	5
	local.get	40
	i32.add 
	local.set	41
	local.get	41
	drop
	i32.const	0
	local.set	42
	local.get	5
	local.get	42
	i32.store	76
.LBB6_7:
	end_block                               # label14:
	local.get	5
	i32.load	76
	local.set	43
	i32.const	80
	local.set	44
	local.get	5
	local.get	44
	i32.add 
	local.set	45
	local.get	45
	global.set	__stack_pointer
	local.get	43
	return
	end_function
.Lfunc_end6:
	.size	match, .Lfunc_end6-match
                                        # -- End function
	.section	.text.while_loop,"",@
	.type	while_loop,@function            # -- Begin function while_loop
while_loop:                             # @while_loop
	.functype	while_loop (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	128
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	global.set	__stack_pointer
	local.get	3
	local.get	0
	i32.store	124
	local.get	3
	i32.load	124
	local.set	4
	i32.const	96
	local.set	5
	local.get	3
	local.get	5
	i32.add 
	local.set	6
	local.get	6
	local.set	7
	i32.const	30
	local.set	8
	local.get	7
	local.get	4
	local.get	8
	call	consume
	local.get	3
	i32.load	124
	local.set	9
	local.get	9
	call	expression
	local.set	10
	local.get	3
	local.get	10
	i32.store	92
	local.get	3
	i32.load	124
	local.set	11
	local.get	11
	call	expression
	local.set	12
	local.get	3
	local.get	12
	i32.store	88
	i32.const	9
	local.set	13
	local.get	3
	local.get	13
	i32.store	48
	i32.const	48
	local.set	14
	local.get	3
	local.get	14
	i32.add 
	local.set	15
	local.get	15
	local.set	16
	i32.const	8
	local.set	17
	local.get	16
	local.get	17
	i32.add 
	local.set	18
	i64.const	0
	local.set	19
	local.get	18
	local.get	19
	i64.store	0
	i32.const	24
	local.set	20
	local.get	18
	local.get	20
	i32.add 
	local.set	21
	local.get	21
	local.get	19
	i64.store	0
	i32.const	16
	local.set	22
	local.get	18
	local.get	22
	i32.add 
	local.set	23
	local.get	23
	local.get	19
	i64.store	0
	i32.const	8
	local.set	24
	local.get	18
	local.get	24
	i32.add 
	local.set	25
	local.get	25
	local.get	19
	i64.store	0
	local.get	3
	i32.load	92
	local.set	26
	local.get	3
	local.get	26
	i32.store	56
	local.get	3
	i32.load	88
	local.set	27
	local.get	3
	local.get	27
	i32.store	60
	i32.const	32
	local.set	28
	i32.const	8
	local.set	29
	local.get	3
	local.get	29
	i32.add 
	local.set	30
	local.get	30
	local.get	28
	i32.add 
	local.set	31
	i32.const	48
	local.set	32
	local.get	3
	local.get	32
	i32.add 
	local.set	33
	local.get	33
	local.get	28
	i32.add 
	local.set	34
	local.get	34
	i64.load	0
	local.set	35
	local.get	31
	local.get	35
	i64.store	0
	i32.const	24
	local.set	36
	i32.const	8
	local.set	37
	local.get	3
	local.get	37
	i32.add 
	local.set	38
	local.get	38
	local.get	36
	i32.add 
	local.set	39
	i32.const	48
	local.set	40
	local.get	3
	local.get	40
	i32.add 
	local.set	41
	local.get	41
	local.get	36
	i32.add 
	local.set	42
	local.get	42
	i64.load	0
	local.set	43
	local.get	39
	local.get	43
	i64.store	0
	i32.const	16
	local.set	44
	i32.const	8
	local.set	45
	local.get	3
	local.get	45
	i32.add 
	local.set	46
	local.get	46
	local.get	44
	i32.add 
	local.set	47
	i32.const	48
	local.set	48
	local.get	3
	local.get	48
	i32.add 
	local.set	49
	local.get	49
	local.get	44
	i32.add 
	local.set	50
	local.get	50
	i64.load	0
	local.set	51
	local.get	47
	local.get	51
	i64.store	0
	i32.const	8
	local.set	52
	i32.const	8
	local.set	53
	local.get	3
	local.get	53
	i32.add 
	local.set	54
	local.get	54
	local.get	52
	i32.add 
	local.set	55
	i32.const	48
	local.set	56
	local.get	3
	local.get	56
	i32.add 
	local.set	57
	local.get	57
	local.get	52
	i32.add 
	local.set	58
	local.get	58
	i64.load	0
	local.set	59
	local.get	55
	local.get	59
	i64.store	0
	local.get	3
	i64.load	48
	local.set	60
	local.get	3
	local.get	60
	i64.store	8
	i32.const	8
	local.set	61
	local.get	3
	local.get	61
	i32.add 
	local.set	62
	local.get	62
	call	ast_new
	local.set	63
	i32.const	128
	local.set	64
	local.get	3
	local.get	64
	i32.add 
	local.set	65
	local.get	65
	global.set	__stack_pointer
	local.get	63
	return
	end_function
.Lfunc_end7:
	.size	while_loop, .Lfunc_end7-while_loop
                                        # -- End function
	.section	.text.function,"",@
	.type	function,@function              # -- Begin function function
function:                               # @function
	.functype	function (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	240
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	global.set	__stack_pointer
	local.get	3
	local.get	0
	i32.store	236
	local.get	3
	i32.load	236
	local.set	4
	i32.const	208
	local.set	5
	local.get	3
	local.get	5
	i32.add 
	local.set	6
	local.get	6
	local.set	7
	i32.const	31
	local.set	8
	local.get	7
	local.get	4
	local.get	8
	call	consume
	call	tokenlist_new
	local.set	9
	local.get	3
	local.get	9
	i32.store	204
	local.get	3
	i32.load	236
	local.set	10
	i32.const	176
	local.set	11
	local.get	3
	local.get	11
	i32.add 
	local.set	12
	local.get	12
	local.set	13
	i32.const	1
	local.set	14
	local.get	13
	local.get	10
	local.get	14
	call	consume
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label19:
	local.get	3
	i32.load	236
	local.set	15
	i32.const	2
	local.set	16
	local.get	3
	local.get	16
	i32.store	64
	i32.const	1
	local.set	17
	i32.const	64
	local.set	18
	local.get	3
	local.get	18
	i32.add 
	local.set	19
	local.get	15
	local.get	17
	local.get	19
	call	check
	local.set	20
	i32.const	0
	local.set	21
	local.get	20
	local.set	22
	local.get	21
	local.set	23
	local.get	22
	local.get	23
	i32.ne  
	local.set	24
	i32.const	-1
	local.set	25
	local.get	24
	local.get	25
	i32.xor 
	local.set	26
	i32.const	1
	local.set	27
	local.get	26
	local.get	27
	i32.and 
	local.set	28
	local.get	28
	i32.eqz
	br_if   	1                               # 1: down to label18
# %bb.2:                                #   in Loop: Header=BB8_1 Depth=1
	local.get	3
	i32.load	204
	local.set	29
	local.get	3
	i32.load	236
	local.set	30
	i32.const	152
	local.set	31
	local.get	3
	local.get	31
	i32.add 
	local.set	32
	local.get	32
	local.set	33
	i32.const	5
	local.set	34
	local.get	33
	local.get	30
	local.get	34
	call	consume
	i32.const	16
	local.set	35
	local.get	3
	local.get	35
	i32.add 
	local.set	36
	i32.const	152
	local.set	37
	local.get	3
	local.get	37
	i32.add 
	local.set	38
	local.get	38
	local.get	35
	i32.add 
	local.set	39
	local.get	39
	i64.load	0
	local.set	40
	local.get	36
	local.get	40
	i64.store	0
	i32.const	8
	local.set	41
	local.get	3
	local.get	41
	i32.add 
	local.set	42
	i32.const	152
	local.set	43
	local.get	3
	local.get	43
	i32.add 
	local.set	44
	local.get	44
	local.get	41
	i32.add 
	local.set	45
	local.get	45
	i64.load	0
	local.set	46
	local.get	42
	local.get	46
	i64.store	0
	local.get	3
	i64.load	152
	local.set	47
	local.get	3
	local.get	47
	i64.store	0
	local.get	29
	local.get	3
	call	tokenlist_push
	br      	0                               # 0: up to label19
.LBB8_3:
	end_loop
	end_block                               # label18:
	local.get	3
	i32.load	236
	local.set	48
	i32.const	128
	local.set	49
	local.get	3
	local.get	49
	i32.add 
	local.set	50
	local.get	50
	local.set	51
	i32.const	2
	local.set	52
	local.get	51
	local.get	48
	local.get	52
	call	consume
	local.get	3
	i32.load	236
	local.set	53
	local.get	53
	call	expression
	local.set	54
	local.get	3
	local.get	54
	i32.store	124
	i32.const	11
	local.set	55
	local.get	3
	local.get	55
	i32.store	80
	i32.const	80
	local.set	56
	local.get	3
	local.get	56
	i32.add 
	local.set	57
	local.get	57
	local.set	58
	i32.const	8
	local.set	59
	local.get	58
	local.get	59
	i32.add 
	local.set	60
	i64.const	0
	local.set	61
	local.get	60
	local.get	61
	i64.store	0
	i32.const	24
	local.set	62
	local.get	60
	local.get	62
	i32.add 
	local.set	63
	local.get	63
	local.get	61
	i64.store	0
	i32.const	16
	local.set	64
	local.get	60
	local.get	64
	i32.add 
	local.set	65
	local.get	65
	local.get	61
	i64.store	0
	i32.const	8
	local.set	66
	local.get	60
	local.get	66
	i32.add 
	local.set	67
	local.get	67
	local.get	61
	i64.store	0
	local.get	3
	i32.load	204
	local.set	68
	local.get	3
	local.get	68
	i32.store	88
	local.get	3
	i32.load	124
	local.set	69
	local.get	3
	local.get	69
	i32.store	92
	i32.const	32
	local.set	70
	i32.const	24
	local.set	71
	local.get	3
	local.get	71
	i32.add 
	local.set	72
	local.get	72
	local.get	70
	i32.add 
	local.set	73
	i32.const	80
	local.set	74
	local.get	3
	local.get	74
	i32.add 
	local.set	75
	local.get	75
	local.get	70
	i32.add 
	local.set	76
	local.get	76
	i64.load	0
	local.set	77
	local.get	73
	local.get	77
	i64.store	0
	i32.const	24
	local.set	78
	i32.const	24
	local.set	79
	local.get	3
	local.get	79
	i32.add 
	local.set	80
	local.get	80
	local.get	78
	i32.add 
	local.set	81
	i32.const	80
	local.set	82
	local.get	3
	local.get	82
	i32.add 
	local.set	83
	local.get	83
	local.get	78
	i32.add 
	local.set	84
	local.get	84
	i64.load	0
	local.set	85
	local.get	81
	local.get	85
	i64.store	0
	i32.const	16
	local.set	86
	i32.const	24
	local.set	87
	local.get	3
	local.get	87
	i32.add 
	local.set	88
	local.get	88
	local.get	86
	i32.add 
	local.set	89
	i32.const	80
	local.set	90
	local.get	3
	local.get	90
	i32.add 
	local.set	91
	local.get	91
	local.get	86
	i32.add 
	local.set	92
	local.get	92
	i64.load	0
	local.set	93
	local.get	89
	local.get	93
	i64.store	0
	i32.const	8
	local.set	94
	i32.const	24
	local.set	95
	local.get	3
	local.get	95
	i32.add 
	local.set	96
	local.get	96
	local.get	94
	i32.add 
	local.set	97
	i32.const	80
	local.set	98
	local.get	3
	local.get	98
	i32.add 
	local.set	99
	local.get	99
	local.get	94
	i32.add 
	local.set	100
	local.get	100
	i64.load	0
	local.set	101
	local.get	97
	local.get	101
	i64.store	0
	local.get	3
	i64.load	80
	local.set	102
	local.get	3
	local.get	102
	i64.store	24
	i32.const	24
	local.set	103
	local.get	3
	local.get	103
	i32.add 
	local.set	104
	local.get	104
	call	ast_new
	local.set	105
	i32.const	240
	local.set	106
	local.get	3
	local.get	106
	i32.add 
	local.set	107
	local.get	107
	global.set	__stack_pointer
	local.get	105
	return
	end_function
.Lfunc_end8:
	.size	function, .Lfunc_end8-function
                                        # -- End function
	.section	.text.block,"",@
	.type	block,@function                 # -- Begin function block
block:                                  # @block
	.functype	block (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	160
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	global.set	__stack_pointer
	local.get	3
	local.get	0
	i32.store	156
	local.get	3
	i32.load	156
	local.set	4
	i32.const	128
	local.set	5
	local.get	3
	local.get	5
	i32.add 
	local.set	6
	local.get	6
	local.set	7
	i32.const	3
	local.set	8
	local.get	7
	local.get	4
	local.get	8
	call	consume
	call	astlist_new
	local.set	9
	local.get	3
	local.get	9
	i32.store	124
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	loop    	                                # label20:
	local.get	3
	i32.load	156
	local.set	10
	local.get	10
	call	end
	local.set	11
	i32.const	0
	local.set	12
	local.get	12
	local.set	13
	block   	
	local.get	11
	br_if   	0                               # 0: down to label21
# %bb.2:                                #   in Loop: Header=BB9_1 Depth=1
	local.get	3
	i32.load	156
	local.set	14
	i32.const	4
	local.set	15
	local.get	3
	local.get	15
	i32.store	48
	i32.const	1
	local.set	16
	i32.const	48
	local.set	17
	local.get	3
	local.get	17
	i32.add 
	local.set	18
	local.get	14
	local.get	16
	local.get	18
	call	check
	local.set	19
	i32.const	0
	local.set	20
	local.get	19
	local.set	21
	local.get	20
	local.set	22
	local.get	21
	local.get	22
	i32.ne  
	local.set	23
	i32.const	-1
	local.set	24
	local.get	23
	local.get	24
	i32.xor 
	local.set	25
	local.get	25
	local.set	13
.LBB9_3:                                #   in Loop: Header=BB9_1 Depth=1
	end_block                               # label21:
	local.get	13
	local.set	26
	i32.const	1
	local.set	27
	local.get	26
	local.get	27
	i32.and 
	local.set	28
	block   	
	local.get	28
	i32.eqz
	br_if   	0                               # 0: down to label22
# %bb.4:                                #   in Loop: Header=BB9_1 Depth=1
	local.get	3
	i32.load	124
	local.set	29
	local.get	3
	i32.load	156
	local.set	30
	local.get	30
	call	expression
	local.set	31
	local.get	29
	local.get	31
	call	astlist_push
	br      	1                               # 1: up to label20
.LBB9_5:
	end_block                               # label22:
	end_loop
	local.get	3
	i32.load	156
	local.set	32
	i32.const	96
	local.set	33
	local.get	3
	local.get	33
	i32.add 
	local.set	34
	local.get	34
	local.set	35
	i32.const	4
	local.set	36
	local.get	35
	local.get	32
	local.get	36
	call	consume
	i32.const	56
	local.set	37
	local.get	3
	local.get	37
	i32.add 
	local.set	38
	local.get	38
	local.set	39
	i64.const	0
	local.set	40
	local.get	39
	local.get	40
	i64.store	0
	i32.const	32
	local.set	41
	local.get	39
	local.get	41
	i32.add 
	local.set	42
	local.get	42
	local.get	40
	i64.store	0
	i32.const	24
	local.set	43
	local.get	39
	local.get	43
	i32.add 
	local.set	44
	local.get	44
	local.get	40
	i64.store	0
	i32.const	16
	local.set	45
	local.get	39
	local.get	45
	i32.add 
	local.set	46
	local.get	46
	local.get	40
	i64.store	0
	i32.const	8
	local.set	47
	local.get	39
	local.get	47
	i32.add 
	local.set	48
	local.get	48
	local.get	40
	i64.store	0
	i32.const	10
	local.set	49
	local.get	3
	local.get	49
	i32.store	56
	local.get	3
	i32.load	124
	local.set	50
	local.get	3
	local.get	50
	i32.store	64
	i32.const	32
	local.set	51
	i32.const	8
	local.set	52
	local.get	3
	local.get	52
	i32.add 
	local.set	53
	local.get	53
	local.get	51
	i32.add 
	local.set	54
	i32.const	56
	local.set	55
	local.get	3
	local.get	55
	i32.add 
	local.set	56
	local.get	56
	local.get	51
	i32.add 
	local.set	57
	local.get	57
	i64.load	0
	local.set	58
	local.get	54
	local.get	58
	i64.store	0
	i32.const	24
	local.set	59
	i32.const	8
	local.set	60
	local.get	3
	local.get	60
	i32.add 
	local.set	61
	local.get	61
	local.get	59
	i32.add 
	local.set	62
	i32.const	56
	local.set	63
	local.get	3
	local.get	63
	i32.add 
	local.set	64
	local.get	64
	local.get	59
	i32.add 
	local.set	65
	local.get	65
	i64.load	0
	local.set	66
	local.get	62
	local.get	66
	i64.store	0
	i32.const	16
	local.set	67
	i32.const	8
	local.set	68
	local.get	3
	local.get	68
	i32.add 
	local.set	69
	local.get	69
	local.get	67
	i32.add 
	local.set	70
	i32.const	56
	local.set	71
	local.get	3
	local.get	71
	i32.add 
	local.set	72
	local.get	72
	local.get	67
	i32.add 
	local.set	73
	local.get	73
	i64.load	0
	local.set	74
	local.get	70
	local.get	74
	i64.store	0
	i32.const	8
	local.set	75
	i32.const	8
	local.set	76
	local.get	3
	local.get	76
	i32.add 
	local.set	77
	local.get	77
	local.get	75
	i32.add 
	local.set	78
	i32.const	56
	local.set	79
	local.get	3
	local.get	79
	i32.add 
	local.set	80
	local.get	80
	local.get	75
	i32.add 
	local.set	81
	local.get	81
	i64.load	0
	local.set	82
	local.get	78
	local.get	82
	i64.store	0
	local.get	3
	i64.load	56
	local.set	83
	local.get	3
	local.get	83
	i64.store	8
	i32.const	8
	local.set	84
	local.get	3
	local.get	84
	i32.add 
	local.set	85
	local.get	85
	call	ast_new
	local.set	86
	i32.const	160
	local.set	87
	local.get	3
	local.get	87
	i32.add 
	local.set	88
	local.get	88
	global.set	__stack_pointer
	local.get	86
	return
	end_function
.Lfunc_end9:
	.size	block, .Lfunc_end9-block
                                        # -- End function
	.section	.text.declaration,"",@
	.type	declaration,@function           # -- Begin function declaration
declaration:                            # @declaration
	.functype	declaration (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	176
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	global.set	__stack_pointer
	local.get	3
	local.get	0
	i32.store	168
	local.get	3
	i32.load	168
	local.set	4
	i32.const	0
	local.set	5
	local.get	3
	local.get	5
	i32.store	64
	i32.const	1
	local.set	6
	i32.const	64
	local.set	7
	local.get	3
	local.get	7
	i32.add 
	local.set	8
	local.get	4
	local.get	6
	local.get	8
	call	check
	local.set	9
	block   	
	block   	
	local.get	9
	i32.eqz
	br_if   	0                               # 0: down to label24
# %bb.1:
	i32.const	0
	local.set	10
	local.get	3
	local.get	10
	i32.store	164
	local.get	3
	i32.load	168
	local.set	11
	i32.const	136
	local.set	12
	local.get	3
	local.get	12
	i32.add 
	local.set	13
	local.get	13
	local.set	14
	local.get	14
	local.get	11
	call	advance
	local.get	3
	i32.load	168
	local.set	15
	i32.const	112
	local.set	16
	local.get	3
	local.get	16
	i32.add 
	local.set	17
	local.get	17
	local.set	18
	local.get	18
	local.get	15
	call	advance
	local.get	3
	i32.load	168
	local.set	19
	i32.const	19
	local.set	20
	local.get	3
	local.get	20
	i32.store	48
	i32.const	1
	local.set	21
	i32.const	48
	local.set	22
	local.get	3
	local.get	22
	i32.add 
	local.set	23
	local.get	19
	local.get	21
	local.get	23
	call	match
	local.set	24
	block   	
	local.get	24
	i32.eqz
	br_if   	0                               # 0: down to label25
# %bb.2:
	local.get	3
	i32.load	168
	local.set	25
	local.get	25
	call	expression
	local.set	26
	local.get	3
	local.get	26
	i32.store	164
.LBB10_3:
	end_block                               # label25:
	i32.const	4
	local.set	27
	local.get	3
	local.get	27
	i32.store	72
	i32.const	72
	local.set	28
	local.get	3
	local.get	28
	i32.add 
	local.set	29
	local.get	29
	local.set	30
	i32.const	8
	local.set	31
	local.get	30
	local.get	31
	i32.add 
	local.set	32
	i32.const	112
	local.set	33
	local.get	3
	local.get	33
	i32.add 
	local.set	34
	local.get	34
	local.set	35
	local.get	35
	i64.load	0:p2align=2
	local.set	36
	local.get	32
	local.get	36
	i64.store	0:p2align=2
	i32.const	16
	local.set	37
	local.get	32
	local.get	37
	i32.add 
	local.set	38
	local.get	35
	local.get	37
	i32.add 
	local.set	39
	local.get	39
	i64.load	0:p2align=2
	local.set	40
	local.get	38
	local.get	40
	i64.store	0:p2align=2
	i32.const	8
	local.set	41
	local.get	32
	local.get	41
	i32.add 
	local.set	42
	local.get	35
	local.get	41
	i32.add 
	local.set	43
	local.get	43
	i64.load	0:p2align=2
	local.set	44
	local.get	42
	local.get	44
	i64.store	0:p2align=2
	local.get	3
	i32.load	164
	local.set	45
	local.get	3
	local.get	45
	i32.store	104
	i32.const	32
	local.set	46
	i32.const	8
	local.set	47
	local.get	3
	local.get	47
	i32.add 
	local.set	48
	local.get	48
	local.get	46
	i32.add 
	local.set	49
	i32.const	72
	local.set	50
	local.get	3
	local.get	50
	i32.add 
	local.set	51
	local.get	51
	local.get	46
	i32.add 
	local.set	52
	local.get	52
	i64.load	0
	local.set	53
	local.get	49
	local.get	53
	i64.store	0
	i32.const	24
	local.set	54
	i32.const	8
	local.set	55
	local.get	3
	local.get	55
	i32.add 
	local.set	56
	local.get	56
	local.get	54
	i32.add 
	local.set	57
	i32.const	72
	local.set	58
	local.get	3
	local.get	58
	i32.add 
	local.set	59
	local.get	59
	local.get	54
	i32.add 
	local.set	60
	local.get	60
	i64.load	0
	local.set	61
	local.get	57
	local.get	61
	i64.store	0
	i32.const	16
	local.set	62
	i32.const	8
	local.set	63
	local.get	3
	local.get	63
	i32.add 
	local.set	64
	local.get	64
	local.get	62
	i32.add 
	local.set	65
	i32.const	72
	local.set	66
	local.get	3
	local.get	66
	i32.add 
	local.set	67
	local.get	67
	local.get	62
	i32.add 
	local.set	68
	local.get	68
	i64.load	0
	local.set	69
	local.get	65
	local.get	69
	i64.store	0
	i32.const	8
	local.set	70
	i32.const	8
	local.set	71
	local.get	3
	local.get	71
	i32.add 
	local.set	72
	local.get	72
	local.get	70
	i32.add 
	local.set	73
	i32.const	72
	local.set	74
	local.get	3
	local.get	74
	i32.add 
	local.set	75
	local.get	75
	local.get	70
	i32.add 
	local.set	76
	local.get	76
	i64.load	0
	local.set	77
	local.get	73
	local.get	77
	i64.store	0
	local.get	3
	i64.load	72
	local.set	78
	local.get	3
	local.get	78
	i64.store	8
	i32.const	8
	local.set	79
	local.get	3
	local.get	79
	i32.add 
	local.set	80
	local.get	80
	call	ast_new
	local.set	81
	local.get	3
	local.get	81
	i32.store	172
	br      	1                               # 1: down to label23
.LBB10_4:
	end_block                               # label24:
	local.get	3
	i32.load	168
	local.set	82
	local.get	82
	call	assignment
	local.set	83
	local.get	3
	local.get	83
	i32.store	172
.LBB10_5:
	end_block                               # label23:
	local.get	3
	i32.load	172
	local.set	84
	i32.const	176
	local.set	85
	local.get	3
	local.get	85
	i32.add 
	local.set	86
	local.get	86
	global.set	__stack_pointer
	local.get	84
	return
	end_function
.Lfunc_end10:
	.size	declaration, .Lfunc_end10-declaration
                                        # -- End function
	.section	.text.consume,"",@
	.type	consume,@function               # -- Begin function consume
consume:                                # @consume
	.functype	consume (i32, i32, i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	112
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	global.set	__stack_pointer
	local.get	5
	local.get	1
	i32.store	108
	local.get	5
	local.get	2
	i32.store	104
	local.get	5
	i32.load	108
	local.set	6
	i32.const	80
	local.set	7
	local.get	5
	local.get	7
	i32.add 
	local.set	8
	local.get	8
	local.set	9
	i32.const	0
	local.set	10
	local.get	9
	local.get	6
	local.get	10
	call	peekn
	local.get	5
	i32.load	80
	local.set	11
	local.get	5
	i32.load	104
	local.set	12
	local.get	11
	local.set	13
	local.get	12
	local.set	14
	local.get	13
	local.get	14
	i32.ne  
	local.set	15
	i32.const	1
	local.set	16
	local.get	15
	local.get	16
	i32.and 
	local.set	17
	block   	
	local.get	17
	i32.eqz
	br_if   	0                               # 0: down to label26
# %bb.1:
	local.get	5
	i32.load	108
	local.set	18
	i32.const	56
	local.set	19
	local.get	5
	local.get	19
	i32.add 
	local.set	20
	local.get	20
	local.set	21
	i32.const	0
	local.set	22
	local.get	21
	local.get	18
	local.get	22
	call	peekn
	local.get	5
	i32.load	104
	local.set	23
	local.get	23
	call	tokentype_str
	local.set	24
	local.get	5
	i32.load	108
	local.set	25
	i32.const	32
	local.set	26
	local.get	5
	local.get	26
	i32.add 
	local.set	27
	local.get	27
	local.set	28
	i32.const	0
	local.set	29
	local.get	28
	local.get	25
	local.get	29
	call	peekn
	local.get	5
	i32.load	32
	local.set	30
	local.get	30
	call	tokentype_str
	local.set	31
	i32.const	16
	local.set	32
	i32.const	8
	local.set	33
	local.get	5
	local.get	33
	i32.add 
	local.set	34
	local.get	34
	local.get	32
	i32.add 
	local.set	35
	i32.const	56
	local.set	36
	local.get	5
	local.get	36
	i32.add 
	local.set	37
	local.get	37
	local.get	32
	i32.add 
	local.set	38
	local.get	38
	i64.load	0
	local.set	39
	local.get	35
	local.get	39
	i64.store	0
	i32.const	8
	local.set	40
	i32.const	8
	local.set	41
	local.get	5
	local.get	41
	i32.add 
	local.set	42
	local.get	42
	local.get	40
	i32.add 
	local.set	43
	i32.const	56
	local.set	44
	local.get	5
	local.get	44
	i32.add 
	local.set	45
	local.get	45
	local.get	40
	i32.add 
	local.set	46
	local.get	46
	i64.load	0
	local.set	47
	local.get	43
	local.get	47
	i64.store	0
	local.get	5
	i64.load	56
	local.set	48
	local.get	5
	local.get	48
	i64.store	8
	local.get	5
	local.get	31
	i32.store	4
	local.get	5
	local.get	24
	i32.store	0
	i32.const	.L.str.1
	local.set	49
	i32.const	.L.str
	local.set	50
	i32.const	8
	local.set	51
	local.get	5
	local.get	51
	i32.add 
	local.set	52
	local.get	50
	local.get	52
	local.get	49
	local.get	5
	call	generic_error
	unreachable
.LBB11_2:
	end_block                               # label26:
	local.get	5
	i32.load	108
	local.set	53
	local.get	53
	i32.load	4
	local.set	54
	local.get	5
	i32.load	108
	local.set	55
	local.get	55
	i32.load	0
	local.set	56
	i32.const	1
	local.set	57
	local.get	56
	local.get	57
	i32.add 
	local.set	58
	local.get	55
	local.get	58
	i32.store	0
	local.get	54
	local.get	56
	call	tokenlist_at
	local.set	59
	local.get	59
	i64.load	0:p2align=2
	local.set	60
	local.get	0
	local.get	60
	i64.store	0:p2align=2
	i32.const	16
	local.set	61
	local.get	0
	local.get	61
	i32.add 
	local.set	62
	local.get	59
	local.get	61
	i32.add 
	local.set	63
	local.get	63
	i64.load	0:p2align=2
	local.set	64
	local.get	62
	local.get	64
	i64.store	0:p2align=2
	i32.const	8
	local.set	65
	local.get	0
	local.get	65
	i32.add 
	local.set	66
	local.get	59
	local.get	65
	i32.add 
	local.set	67
	local.get	67
	i64.load	0:p2align=2
	local.set	68
	local.get	66
	local.get	68
	i64.store	0:p2align=2
	i32.const	112
	local.set	69
	local.get	5
	local.get	69
	i32.add 
	local.set	70
	local.get	70
	global.set	__stack_pointer
	return
	end_function
.Lfunc_end11:
	.size	consume, .Lfunc_end11-consume
                                        # -- End function
	.section	.text.advance,"",@
	.type	advance,@function               # -- Begin function advance
advance:                                # @advance
	.functype	advance (i32, i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32
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
	local.get	1
	i32.store	12
	local.get	4
	i32.load	12
	local.set	5
	local.get	5
	i32.load	4
	local.set	6
	local.get	4
	i32.load	12
	local.set	7
	local.get	7
	i32.load	0
	local.set	8
	i32.const	1
	local.set	9
	local.get	8
	local.get	9
	i32.add 
	local.set	10
	local.get	7
	local.get	10
	i32.store	0
	local.get	6
	local.get	8
	call	tokenlist_at
	local.set	11
	local.get	11
	i64.load	0:p2align=2
	local.set	12
	local.get	0
	local.get	12
	i64.store	0:p2align=2
	i32.const	16
	local.set	13
	local.get	0
	local.get	13
	i32.add 
	local.set	14
	local.get	11
	local.get	13
	i32.add 
	local.set	15
	local.get	15
	i64.load	0:p2align=2
	local.set	16
	local.get	14
	local.get	16
	i64.store	0:p2align=2
	i32.const	8
	local.set	17
	local.get	0
	local.get	17
	i32.add 
	local.set	18
	local.get	11
	local.get	17
	i32.add 
	local.set	19
	local.get	19
	i64.load	0:p2align=2
	local.set	20
	local.get	18
	local.get	20
	i64.store	0:p2align=2
	i32.const	16
	local.set	21
	local.get	4
	local.get	21
	i32.add 
	local.set	22
	local.get	22
	global.set	__stack_pointer
	return
	end_function
.Lfunc_end12:
	.size	advance, .Lfunc_end12-advance
                                        # -- End function
	.section	.text.assignment,"",@
	.type	assignment,@function            # -- Begin function assignment
assignment:                             # @assignment
	.functype	assignment (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	192
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	global.set	__stack_pointer
	local.get	3
	local.get	0
	i32.store	184
	local.get	3
	i32.load	184
	local.set	4
	i32.const	160
	local.set	5
	local.get	3
	local.get	5
	i32.add 
	local.set	6
	local.get	6
	local.set	7
	i32.const	0
	local.set	8
	local.get	7
	local.get	4
	local.get	8
	call	peekn
	local.get	3
	i32.load	160
	local.set	9
	i32.const	5
	local.set	10
	local.get	9
	local.set	11
	local.get	10
	local.set	12
	local.get	11
	local.get	12
	i32.eq  
	local.set	13
	i32.const	1
	local.set	14
	local.get	13
	local.get	14
	i32.and 
	local.set	15
	block   	
	block   	
	local.get	15
	i32.eqz
	br_if   	0                               # 0: down to label28
# %bb.1:
	local.get	3
	i32.load	184
	local.set	16
	i32.const	136
	local.set	17
	local.get	3
	local.get	17
	i32.add 
	local.set	18
	local.get	18
	local.set	19
	i32.const	1
	local.set	20
	local.get	19
	local.get	16
	local.get	20
	call	peekn
	local.get	3
	i32.load	136
	local.set	21
	i32.const	19
	local.set	22
	local.get	21
	local.set	23
	local.get	22
	local.set	24
	local.get	23
	local.get	24
	i32.eq  
	local.set	25
	i32.const	1
	local.set	26
	local.get	25
	local.get	26
	i32.and 
	local.set	27
	local.get	27
	i32.eqz
	br_if   	0                               # 0: down to label28
# %bb.2:
	local.get	3
	i32.load	184
	local.set	28
	i32.const	112
	local.set	29
	local.get	3
	local.get	29
	i32.add 
	local.set	30
	local.get	30
	local.set	31
	local.get	31
	local.get	28
	call	advance
	local.get	3
	i32.load	184
	local.set	32
	i32.const	88
	local.set	33
	local.get	3
	local.get	33
	i32.add 
	local.set	34
	local.get	34
	local.set	35
	local.get	35
	local.get	32
	call	advance
	i32.const	5
	local.set	36
	local.get	3
	local.get	36
	i32.store	48
	i32.const	48
	local.set	37
	local.get	3
	local.get	37
	i32.add 
	local.set	38
	local.get	38
	local.set	39
	i32.const	8
	local.set	40
	local.get	39
	local.get	40
	i32.add 
	local.set	41
	i32.const	112
	local.set	42
	local.get	3
	local.get	42
	i32.add 
	local.set	43
	local.get	43
	local.set	44
	local.get	44
	i64.load	0:p2align=2
	local.set	45
	local.get	41
	local.get	45
	i64.store	0:p2align=2
	i32.const	16
	local.set	46
	local.get	41
	local.get	46
	i32.add 
	local.set	47
	local.get	44
	local.get	46
	i32.add 
	local.set	48
	local.get	48
	i64.load	0:p2align=2
	local.set	49
	local.get	47
	local.get	49
	i64.store	0:p2align=2
	i32.const	8
	local.set	50
	local.get	41
	local.get	50
	i32.add 
	local.set	51
	local.get	44
	local.get	50
	i32.add 
	local.set	52
	local.get	52
	i64.load	0:p2align=2
	local.set	53
	local.get	51
	local.get	53
	i64.store	0:p2align=2
	local.get	3
	i32.load	184
	local.set	54
	local.get	54
	call	expression
	local.set	55
	local.get	3
	local.get	55
	i32.store	80
	i32.const	32
	local.set	56
	i32.const	8
	local.set	57
	local.get	3
	local.get	57
	i32.add 
	local.set	58
	local.get	58
	local.get	56
	i32.add 
	local.set	59
	i32.const	48
	local.set	60
	local.get	3
	local.get	60
	i32.add 
	local.set	61
	local.get	61
	local.get	56
	i32.add 
	local.set	62
	local.get	62
	i64.load	0
	local.set	63
	local.get	59
	local.get	63
	i64.store	0
	i32.const	24
	local.set	64
	i32.const	8
	local.set	65
	local.get	3
	local.get	65
	i32.add 
	local.set	66
	local.get	66
	local.get	64
	i32.add 
	local.set	67
	i32.const	48
	local.set	68
	local.get	3
	local.get	68
	i32.add 
	local.set	69
	local.get	69
	local.get	64
	i32.add 
	local.set	70
	local.get	70
	i64.load	0
	local.set	71
	local.get	67
	local.get	71
	i64.store	0
	i32.const	16
	local.set	72
	i32.const	8
	local.set	73
	local.get	3
	local.get	73
	i32.add 
	local.set	74
	local.get	74
	local.get	72
	i32.add 
	local.set	75
	i32.const	48
	local.set	76
	local.get	3
	local.get	76
	i32.add 
	local.set	77
	local.get	77
	local.get	72
	i32.add 
	local.set	78
	local.get	78
	i64.load	0
	local.set	79
	local.get	75
	local.get	79
	i64.store	0
	i32.const	8
	local.set	80
	i32.const	8
	local.set	81
	local.get	3
	local.get	81
	i32.add 
	local.set	82
	local.get	82
	local.get	80
	i32.add 
	local.set	83
	i32.const	48
	local.set	84
	local.get	3
	local.get	84
	i32.add 
	local.set	85
	local.get	85
	local.get	80
	i32.add 
	local.set	86
	local.get	86
	i64.load	0
	local.set	87
	local.get	83
	local.get	87
	i64.store	0
	local.get	3
	i64.load	48
	local.set	88
	local.get	3
	local.get	88
	i64.store	8
	i32.const	8
	local.set	89
	local.get	3
	local.get	89
	i32.add 
	local.set	90
	local.get	90
	call	ast_new
	local.set	91
	local.get	3
	local.get	91
	i32.store	188
	br      	1                               # 1: down to label27
.LBB13_3:
	end_block                               # label28:
	local.get	3
	i32.load	184
	local.set	92
	local.get	92
	call	logic_or
	local.set	93
	local.get	3
	local.get	93
	i32.store	188
.LBB13_4:
	end_block                               # label27:
	local.get	3
	i32.load	188
	local.set	94
	i32.const	192
	local.set	95
	local.get	3
	local.get	95
	i32.add 
	local.set	96
	local.get	96
	global.set	__stack_pointer
	local.get	94
	return
	end_function
.Lfunc_end13:
	.size	assignment, .Lfunc_end13-assignment
                                        # -- End function
	.section	.text.logic_or,"",@
	.type	logic_or,@function              # -- Begin function logic_or
logic_or:                               # @logic_or
	.functype	logic_or (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	144
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	global.set	__stack_pointer
	local.get	3
	local.get	0
	i32.store	140
	local.get	3
	i32.load	140
	local.set	4
	local.get	4
	call	logic_and
	local.set	5
	local.get	3
	local.get	5
	i32.store	136
.LBB14_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label30:
	local.get	3
	i32.load	140
	local.set	6
	i32.const	112
	local.set	7
	local.get	3
	local.get	7
	i32.add 
	local.set	8
	local.get	8
	local.set	9
	i32.const	0
	local.set	10
	local.get	9
	local.get	6
	local.get	10
	call	peekn
	local.get	3
	i32.load	112
	local.set	11
	i32.const	26
	local.set	12
	local.get	11
	local.set	13
	local.get	12
	local.set	14
	local.get	13
	local.get	14
	i32.eq  
	local.set	15
	i32.const	1
	local.set	16
	local.get	15
	local.get	16
	i32.and 
	local.set	17
	local.get	17
	i32.eqz
	br_if   	1                               # 1: down to label29
# %bb.2:                                #   in Loop: Header=BB14_1 Depth=1
	local.get	3
	i32.load	140
	local.set	18
	i32.const	88
	local.set	19
	local.get	3
	local.get	19
	i32.add 
	local.set	20
	local.get	20
	local.set	21
	local.get	21
	local.get	18
	call	advance
	i32.const	0
	local.set	22
	local.get	3
	local.get	22
	i32.store	48
	i32.const	48
	local.set	23
	local.get	3
	local.get	23
	i32.add 
	local.set	24
	local.get	24
	local.set	25
	i32.const	8
	local.set	26
	local.get	25
	local.get	26
	i32.add 
	local.set	27
	i64.const	0
	local.set	28
	local.get	27
	local.get	28
	i64.store	0
	i32.const	24
	local.set	29
	local.get	27
	local.get	29
	i32.add 
	local.set	30
	local.get	30
	local.get	28
	i64.store	0
	i32.const	16
	local.set	31
	local.get	27
	local.get	31
	i32.add 
	local.set	32
	local.get	32
	local.get	28
	i64.store	0
	i32.const	8
	local.set	33
	local.get	27
	local.get	33
	i32.add 
	local.set	34
	local.get	34
	local.get	28
	i64.store	0
	local.get	3
	i32.load	136
	local.set	35
	local.get	3
	local.get	35
	i32.store	56
	local.get	3
	i32.load	140
	local.set	36
	local.get	36
	call	logic_and
	local.set	37
	local.get	3
	local.get	37
	i32.store	60
	i32.const	32
	local.set	38
	i32.const	8
	local.set	39
	local.get	3
	local.get	39
	i32.add 
	local.set	40
	local.get	40
	local.get	38
	i32.add 
	local.set	41
	i32.const	48
	local.set	42
	local.get	3
	local.get	42
	i32.add 
	local.set	43
	local.get	43
	local.get	38
	i32.add 
	local.set	44
	local.get	44
	i64.load	0
	local.set	45
	local.get	41
	local.get	45
	i64.store	0
	i32.const	24
	local.set	46
	i32.const	8
	local.set	47
	local.get	3
	local.get	47
	i32.add 
	local.set	48
	local.get	48
	local.get	46
	i32.add 
	local.set	49
	i32.const	48
	local.set	50
	local.get	3
	local.get	50
	i32.add 
	local.set	51
	local.get	51
	local.get	46
	i32.add 
	local.set	52
	local.get	52
	i64.load	0
	local.set	53
	local.get	49
	local.get	53
	i64.store	0
	i32.const	16
	local.set	54
	i32.const	8
	local.set	55
	local.get	3
	local.get	55
	i32.add 
	local.set	56
	local.get	56
	local.get	54
	i32.add 
	local.set	57
	i32.const	48
	local.set	58
	local.get	3
	local.get	58
	i32.add 
	local.set	59
	local.get	59
	local.get	54
	i32.add 
	local.set	60
	local.get	60
	i64.load	0
	local.set	61
	local.get	57
	local.get	61
	i64.store	0
	i32.const	8
	local.set	62
	i32.const	8
	local.set	63
	local.get	3
	local.get	63
	i32.add 
	local.set	64
	local.get	64
	local.get	62
	i32.add 
	local.set	65
	i32.const	48
	local.set	66
	local.get	3
	local.get	66
	i32.add 
	local.set	67
	local.get	67
	local.get	62
	i32.add 
	local.set	68
	local.get	68
	i64.load	0
	local.set	69
	local.get	65
	local.get	69
	i64.store	0
	local.get	3
	i64.load	48
	local.set	70
	local.get	3
	local.get	70
	i64.store	8
	i32.const	8
	local.set	71
	local.get	3
	local.get	71
	i32.add 
	local.set	72
	local.get	72
	call	ast_new
	local.set	73
	local.get	3
	local.get	73
	i32.store	136
	br      	0                               # 0: up to label30
.LBB14_3:
	end_loop
	end_block                               # label29:
	local.get	3
	i32.load	136
	local.set	74
	i32.const	144
	local.set	75
	local.get	3
	local.get	75
	i32.add 
	local.set	76
	local.get	76
	global.set	__stack_pointer
	local.get	74
	return
	end_function
.Lfunc_end14:
	.size	logic_or, .Lfunc_end14-logic_or
                                        # -- End function
	.section	.text.logic_and,"",@
	.type	logic_and,@function             # -- Begin function logic_and
logic_and:                              # @logic_and
	.functype	logic_and (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	144
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	global.set	__stack_pointer
	local.get	3
	local.get	0
	i32.store	140
	local.get	3
	i32.load	140
	local.set	4
	local.get	4
	call	equality
	local.set	5
	local.get	3
	local.get	5
	i32.store	136
.LBB15_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label32:
	local.get	3
	i32.load	140
	local.set	6
	i32.const	112
	local.set	7
	local.get	3
	local.get	7
	i32.add 
	local.set	8
	local.get	8
	local.set	9
	i32.const	0
	local.set	10
	local.get	9
	local.get	6
	local.get	10
	call	peekn
	local.get	3
	i32.load	112
	local.set	11
	i32.const	27
	local.set	12
	local.get	11
	local.set	13
	local.get	12
	local.set	14
	local.get	13
	local.get	14
	i32.eq  
	local.set	15
	i32.const	1
	local.set	16
	local.get	15
	local.get	16
	i32.and 
	local.set	17
	local.get	17
	i32.eqz
	br_if   	1                               # 1: down to label31
# %bb.2:                                #   in Loop: Header=BB15_1 Depth=1
	local.get	3
	i32.load	140
	local.set	18
	i32.const	88
	local.set	19
	local.get	3
	local.get	19
	i32.add 
	local.set	20
	local.get	20
	local.set	21
	local.get	21
	local.get	18
	call	advance
	i32.const	1
	local.set	22
	local.get	3
	local.get	22
	i32.store	48
	i32.const	48
	local.set	23
	local.get	3
	local.get	23
	i32.add 
	local.set	24
	local.get	24
	local.set	25
	i32.const	8
	local.set	26
	local.get	25
	local.get	26
	i32.add 
	local.set	27
	i64.const	0
	local.set	28
	local.get	27
	local.get	28
	i64.store	0
	i32.const	24
	local.set	29
	local.get	27
	local.get	29
	i32.add 
	local.set	30
	local.get	30
	local.get	28
	i64.store	0
	i32.const	16
	local.set	31
	local.get	27
	local.get	31
	i32.add 
	local.set	32
	local.get	32
	local.get	28
	i64.store	0
	i32.const	8
	local.set	33
	local.get	27
	local.get	33
	i32.add 
	local.set	34
	local.get	34
	local.get	28
	i64.store	0
	local.get	3
	i32.load	136
	local.set	35
	local.get	3
	local.get	35
	i32.store	56
	local.get	3
	i32.load	140
	local.set	36
	local.get	36
	call	equality
	local.set	37
	local.get	3
	local.get	37
	i32.store	60
	i32.const	32
	local.set	38
	i32.const	8
	local.set	39
	local.get	3
	local.get	39
	i32.add 
	local.set	40
	local.get	40
	local.get	38
	i32.add 
	local.set	41
	i32.const	48
	local.set	42
	local.get	3
	local.get	42
	i32.add 
	local.set	43
	local.get	43
	local.get	38
	i32.add 
	local.set	44
	local.get	44
	i64.load	0
	local.set	45
	local.get	41
	local.get	45
	i64.store	0
	i32.const	24
	local.set	46
	i32.const	8
	local.set	47
	local.get	3
	local.get	47
	i32.add 
	local.set	48
	local.get	48
	local.get	46
	i32.add 
	local.set	49
	i32.const	48
	local.set	50
	local.get	3
	local.get	50
	i32.add 
	local.set	51
	local.get	51
	local.get	46
	i32.add 
	local.set	52
	local.get	52
	i64.load	0
	local.set	53
	local.get	49
	local.get	53
	i64.store	0
	i32.const	16
	local.set	54
	i32.const	8
	local.set	55
	local.get	3
	local.get	55
	i32.add 
	local.set	56
	local.get	56
	local.get	54
	i32.add 
	local.set	57
	i32.const	48
	local.set	58
	local.get	3
	local.get	58
	i32.add 
	local.set	59
	local.get	59
	local.get	54
	i32.add 
	local.set	60
	local.get	60
	i64.load	0
	local.set	61
	local.get	57
	local.get	61
	i64.store	0
	i32.const	8
	local.set	62
	i32.const	8
	local.set	63
	local.get	3
	local.get	63
	i32.add 
	local.set	64
	local.get	64
	local.get	62
	i32.add 
	local.set	65
	i32.const	48
	local.set	66
	local.get	3
	local.get	66
	i32.add 
	local.set	67
	local.get	67
	local.get	62
	i32.add 
	local.set	68
	local.get	68
	i64.load	0
	local.set	69
	local.get	65
	local.get	69
	i64.store	0
	local.get	3
	i64.load	48
	local.set	70
	local.get	3
	local.get	70
	i64.store	8
	i32.const	8
	local.set	71
	local.get	3
	local.get	71
	i32.add 
	local.set	72
	local.get	72
	call	ast_new
	local.set	73
	local.get	3
	local.get	73
	i32.store	136
	br      	0                               # 0: up to label32
.LBB15_3:
	end_loop
	end_block                               # label31:
	local.get	3
	i32.load	136
	local.set	74
	i32.const	144
	local.set	75
	local.get	3
	local.get	75
	i32.add 
	local.set	76
	local.get	76
	global.set	__stack_pointer
	local.get	74
	return
	end_function
.Lfunc_end15:
	.size	logic_and, .Lfunc_end15-logic_and
                                        # -- End function
	.section	.text.equality,"",@
	.type	equality,@function              # -- Begin function equality
equality:                               # @equality
	.functype	equality (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	144
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	global.set	__stack_pointer
	local.get	3
	local.get	0
	i32.store	140
	local.get	3
	i32.load	140
	local.set	4
	local.get	4
	call	comparsion
	local.set	5
	local.get	3
	local.get	5
	i32.store	136
	local.get	3
	i32.load	140
	local.set	6
	i32.const	13
	local.set	7
	local.get	3
	local.get	7
	i32.store	52
	i32.const	14
	local.set	8
	local.get	3
	local.get	8
	i32.store	48
	i32.const	2
	local.set	9
	i32.const	48
	local.set	10
	local.get	3
	local.get	10
	i32.add 
	local.set	11
	local.get	6
	local.get	9
	local.get	11
	call	check
	local.set	12
	block   	
	local.get	12
	i32.eqz
	br_if   	0                               # 0: down to label33
# %bb.1:
	local.get	3
	i32.load	140
	local.set	13
	i32.const	112
	local.set	14
	local.get	3
	local.get	14
	i32.add 
	local.set	15
	local.get	15
	local.set	16
	local.get	16
	local.get	13
	call	advance
	local.get	3
	i32.load	140
	local.set	17
	local.get	17
	call	comparsion
	local.set	18
	local.get	3
	local.get	18
	i32.store	108
	i32.const	3
	local.set	19
	local.get	3
	local.get	19
	i32.store	64
	i32.const	64
	local.set	20
	local.get	3
	local.get	20
	i32.add 
	local.set	21
	local.get	21
	local.set	22
	i32.const	8
	local.set	23
	local.get	22
	local.get	23
	i32.add 
	local.set	24
	local.get	3
	i32.load	136
	local.set	25
	local.get	3
	local.get	25
	i32.store	72
	i32.const	4
	local.set	26
	local.get	24
	local.get	26
	i32.add 
	local.set	27
	i32.const	112
	local.set	28
	local.get	3
	local.get	28
	i32.add 
	local.set	29
	local.get	29
	local.set	30
	local.get	30
	i64.load	0:p2align=2
	local.set	31
	local.get	27
	local.get	31
	i64.store	0:p2align=2
	i32.const	16
	local.set	32
	local.get	27
	local.get	32
	i32.add 
	local.set	33
	local.get	30
	local.get	32
	i32.add 
	local.set	34
	local.get	34
	i64.load	0:p2align=2
	local.set	35
	local.get	33
	local.get	35
	i64.store	0:p2align=2
	i32.const	8
	local.set	36
	local.get	27
	local.get	36
	i32.add 
	local.set	37
	local.get	30
	local.get	36
	i32.add 
	local.set	38
	local.get	38
	i64.load	0:p2align=2
	local.set	39
	local.get	37
	local.get	39
	i64.store	0:p2align=2
	local.get	3
	i32.load	108
	local.set	40
	local.get	3
	local.get	40
	i32.store	100
	i32.const	32
	local.set	41
	i32.const	8
	local.set	42
	local.get	3
	local.get	42
	i32.add 
	local.set	43
	local.get	43
	local.get	41
	i32.add 
	local.set	44
	i32.const	64
	local.set	45
	local.get	3
	local.get	45
	i32.add 
	local.set	46
	local.get	46
	local.get	41
	i32.add 
	local.set	47
	local.get	47
	i64.load	0
	local.set	48
	local.get	44
	local.get	48
	i64.store	0
	i32.const	24
	local.set	49
	i32.const	8
	local.set	50
	local.get	3
	local.get	50
	i32.add 
	local.set	51
	local.get	51
	local.get	49
	i32.add 
	local.set	52
	i32.const	64
	local.set	53
	local.get	3
	local.get	53
	i32.add 
	local.set	54
	local.get	54
	local.get	49
	i32.add 
	local.set	55
	local.get	55
	i64.load	0
	local.set	56
	local.get	52
	local.get	56
	i64.store	0
	i32.const	16
	local.set	57
	i32.const	8
	local.set	58
	local.get	3
	local.get	58
	i32.add 
	local.set	59
	local.get	59
	local.get	57
	i32.add 
	local.set	60
	i32.const	64
	local.set	61
	local.get	3
	local.get	61
	i32.add 
	local.set	62
	local.get	62
	local.get	57
	i32.add 
	local.set	63
	local.get	63
	i64.load	0
	local.set	64
	local.get	60
	local.get	64
	i64.store	0
	i32.const	8
	local.set	65
	i32.const	8
	local.set	66
	local.get	3
	local.get	66
	i32.add 
	local.set	67
	local.get	67
	local.get	65
	i32.add 
	local.set	68
	i32.const	64
	local.set	69
	local.get	3
	local.get	69
	i32.add 
	local.set	70
	local.get	70
	local.get	65
	i32.add 
	local.set	71
	local.get	71
	i64.load	0
	local.set	72
	local.get	68
	local.get	72
	i64.store	0
	local.get	3
	i64.load	64
	local.set	73
	local.get	3
	local.get	73
	i64.store	8
	i32.const	8
	local.set	74
	local.get	3
	local.get	74
	i32.add 
	local.set	75
	local.get	75
	call	ast_new
	local.set	76
	local.get	3
	local.get	76
	i32.store	136
.LBB16_2:
	end_block                               # label33:
	local.get	3
	i32.load	136
	local.set	77
	i32.const	144
	local.set	78
	local.get	3
	local.get	78
	i32.add 
	local.set	79
	local.get	79
	global.set	__stack_pointer
	local.get	77
	return
	end_function
.Lfunc_end16:
	.size	equality, .Lfunc_end16-equality
                                        # -- End function
	.section	.text.comparsion,"",@
	.type	comparsion,@function            # -- Begin function comparsion
comparsion:                             # @comparsion
	.functype	comparsion (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	144
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	global.set	__stack_pointer
	local.get	3
	local.get	0
	i32.store	140
	local.get	3
	i32.load	140
	local.set	4
	local.get	4
	call	term
	local.set	5
	local.get	3
	local.get	5
	i32.store	136
	local.get	3
	i32.load	140
	local.set	6
	i32.const	17
	local.set	7
	local.get	3
	local.get	7
	i32.store	60
	i32.const	15
	local.set	8
	local.get	3
	local.get	8
	i32.store	56
	i32.const	18
	local.set	9
	local.get	3
	local.get	9
	i32.store	52
	i32.const	16
	local.set	10
	local.get	3
	local.get	10
	i32.store	48
	i32.const	4
	local.set	11
	i32.const	48
	local.set	12
	local.get	3
	local.get	12
	i32.add 
	local.set	13
	local.get	6
	local.get	11
	local.get	13
	call	check
	local.set	14
	block   	
	local.get	14
	i32.eqz
	br_if   	0                               # 0: down to label34
# %bb.1:
	local.get	3
	i32.load	140
	local.set	15
	i32.const	112
	local.set	16
	local.get	3
	local.get	16
	i32.add 
	local.set	17
	local.get	17
	local.set	18
	local.get	18
	local.get	15
	call	advance
	local.get	3
	i32.load	140
	local.set	19
	local.get	19
	call	term
	local.set	20
	local.get	3
	local.get	20
	i32.store	108
	i32.const	3
	local.set	21
	local.get	3
	local.get	21
	i32.store	64
	i32.const	64
	local.set	22
	local.get	3
	local.get	22
	i32.add 
	local.set	23
	local.get	23
	local.set	24
	i32.const	8
	local.set	25
	local.get	24
	local.get	25
	i32.add 
	local.set	26
	local.get	3
	i32.load	136
	local.set	27
	local.get	3
	local.get	27
	i32.store	72
	i32.const	4
	local.set	28
	local.get	26
	local.get	28
	i32.add 
	local.set	29
	i32.const	112
	local.set	30
	local.get	3
	local.get	30
	i32.add 
	local.set	31
	local.get	31
	local.set	32
	local.get	32
	i64.load	0:p2align=2
	local.set	33
	local.get	29
	local.get	33
	i64.store	0:p2align=2
	i32.const	16
	local.set	34
	local.get	29
	local.get	34
	i32.add 
	local.set	35
	local.get	32
	local.get	34
	i32.add 
	local.set	36
	local.get	36
	i64.load	0:p2align=2
	local.set	37
	local.get	35
	local.get	37
	i64.store	0:p2align=2
	i32.const	8
	local.set	38
	local.get	29
	local.get	38
	i32.add 
	local.set	39
	local.get	32
	local.get	38
	i32.add 
	local.set	40
	local.get	40
	i64.load	0:p2align=2
	local.set	41
	local.get	39
	local.get	41
	i64.store	0:p2align=2
	local.get	3
	i32.load	108
	local.set	42
	local.get	3
	local.get	42
	i32.store	100
	i32.const	32
	local.set	43
	i32.const	8
	local.set	44
	local.get	3
	local.get	44
	i32.add 
	local.set	45
	local.get	45
	local.get	43
	i32.add 
	local.set	46
	i32.const	64
	local.set	47
	local.get	3
	local.get	47
	i32.add 
	local.set	48
	local.get	48
	local.get	43
	i32.add 
	local.set	49
	local.get	49
	i64.load	0
	local.set	50
	local.get	46
	local.get	50
	i64.store	0
	i32.const	24
	local.set	51
	i32.const	8
	local.set	52
	local.get	3
	local.get	52
	i32.add 
	local.set	53
	local.get	53
	local.get	51
	i32.add 
	local.set	54
	i32.const	64
	local.set	55
	local.get	3
	local.get	55
	i32.add 
	local.set	56
	local.get	56
	local.get	51
	i32.add 
	local.set	57
	local.get	57
	i64.load	0
	local.set	58
	local.get	54
	local.get	58
	i64.store	0
	i32.const	16
	local.set	59
	i32.const	8
	local.set	60
	local.get	3
	local.get	60
	i32.add 
	local.set	61
	local.get	61
	local.get	59
	i32.add 
	local.set	62
	i32.const	64
	local.set	63
	local.get	3
	local.get	63
	i32.add 
	local.set	64
	local.get	64
	local.get	59
	i32.add 
	local.set	65
	local.get	65
	i64.load	0
	local.set	66
	local.get	62
	local.get	66
	i64.store	0
	i32.const	8
	local.set	67
	i32.const	8
	local.set	68
	local.get	3
	local.get	68
	i32.add 
	local.set	69
	local.get	69
	local.get	67
	i32.add 
	local.set	70
	i32.const	64
	local.set	71
	local.get	3
	local.get	71
	i32.add 
	local.set	72
	local.get	72
	local.get	67
	i32.add 
	local.set	73
	local.get	73
	i64.load	0
	local.set	74
	local.get	70
	local.get	74
	i64.store	0
	local.get	3
	i64.load	64
	local.set	75
	local.get	3
	local.get	75
	i64.store	8
	i32.const	8
	local.set	76
	local.get	3
	local.get	76
	i32.add 
	local.set	77
	local.get	77
	call	ast_new
	local.set	78
	local.get	3
	local.get	78
	i32.store	136
.LBB17_2:
	end_block                               # label34:
	local.get	3
	i32.load	136
	local.set	79
	i32.const	144
	local.set	80
	local.get	3
	local.get	80
	i32.add 
	local.set	81
	local.get	81
	global.set	__stack_pointer
	local.get	79
	return
	end_function
.Lfunc_end17:
	.size	comparsion, .Lfunc_end17-comparsion
                                        # -- End function
	.section	.text.term,"",@
	.type	term,@function                  # -- Begin function term
term:                                   # @term
	.functype	term (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	144
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	global.set	__stack_pointer
	local.get	3
	local.get	0
	i32.store	140
	local.get	3
	i32.load	140
	local.set	4
	local.get	4
	call	factor
	local.set	5
	local.get	3
	local.get	5
	i32.store	136
.LBB18_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label36:
	local.get	3
	i32.load	140
	local.set	6
	i32.const	33
	local.set	7
	local.get	3
	local.get	7
	i32.store	56
	i32.const	9
	local.set	8
	local.get	3
	local.get	8
	i32.store	52
	i32.const	8
	local.set	9
	local.get	3
	local.get	9
	i32.store	48
	i32.const	3
	local.set	10
	i32.const	48
	local.set	11
	local.get	3
	local.get	11
	i32.add 
	local.set	12
	local.get	6
	local.get	10
	local.get	12
	call	check
	local.set	13
	local.get	13
	i32.eqz
	br_if   	1                               # 1: down to label35
# %bb.2:                                #   in Loop: Header=BB18_1 Depth=1
	local.get	3
	i32.load	140
	local.set	14
	i32.const	112
	local.set	15
	local.get	3
	local.get	15
	i32.add 
	local.set	16
	local.get	16
	local.set	17
	local.get	17
	local.get	14
	call	advance
	local.get	3
	i32.load	140
	local.set	18
	local.get	18
	call	factor
	local.set	19
	local.get	3
	local.get	19
	i32.store	108
	i32.const	3
	local.set	20
	local.get	3
	local.get	20
	i32.store	64
	i32.const	64
	local.set	21
	local.get	3
	local.get	21
	i32.add 
	local.set	22
	local.get	22
	local.set	23
	i32.const	8
	local.set	24
	local.get	23
	local.get	24
	i32.add 
	local.set	25
	local.get	3
	i32.load	136
	local.set	26
	local.get	3
	local.get	26
	i32.store	72
	i32.const	4
	local.set	27
	local.get	25
	local.get	27
	i32.add 
	local.set	28
	i32.const	112
	local.set	29
	local.get	3
	local.get	29
	i32.add 
	local.set	30
	local.get	30
	local.set	31
	local.get	31
	i64.load	0:p2align=2
	local.set	32
	local.get	28
	local.get	32
	i64.store	0:p2align=2
	i32.const	16
	local.set	33
	local.get	28
	local.get	33
	i32.add 
	local.set	34
	local.get	31
	local.get	33
	i32.add 
	local.set	35
	local.get	35
	i64.load	0:p2align=2
	local.set	36
	local.get	34
	local.get	36
	i64.store	0:p2align=2
	i32.const	8
	local.set	37
	local.get	28
	local.get	37
	i32.add 
	local.set	38
	local.get	31
	local.get	37
	i32.add 
	local.set	39
	local.get	39
	i64.load	0:p2align=2
	local.set	40
	local.get	38
	local.get	40
	i64.store	0:p2align=2
	local.get	3
	i32.load	108
	local.set	41
	local.get	3
	local.get	41
	i32.store	100
	i32.const	32
	local.set	42
	i32.const	8
	local.set	43
	local.get	3
	local.get	43
	i32.add 
	local.set	44
	local.get	44
	local.get	42
	i32.add 
	local.set	45
	i32.const	64
	local.set	46
	local.get	3
	local.get	46
	i32.add 
	local.set	47
	local.get	47
	local.get	42
	i32.add 
	local.set	48
	local.get	48
	i64.load	0
	local.set	49
	local.get	45
	local.get	49
	i64.store	0
	i32.const	24
	local.set	50
	i32.const	8
	local.set	51
	local.get	3
	local.get	51
	i32.add 
	local.set	52
	local.get	52
	local.get	50
	i32.add 
	local.set	53
	i32.const	64
	local.set	54
	local.get	3
	local.get	54
	i32.add 
	local.set	55
	local.get	55
	local.get	50
	i32.add 
	local.set	56
	local.get	56
	i64.load	0
	local.set	57
	local.get	53
	local.get	57
	i64.store	0
	i32.const	16
	local.set	58
	i32.const	8
	local.set	59
	local.get	3
	local.get	59
	i32.add 
	local.set	60
	local.get	60
	local.get	58
	i32.add 
	local.set	61
	i32.const	64
	local.set	62
	local.get	3
	local.get	62
	i32.add 
	local.set	63
	local.get	63
	local.get	58
	i32.add 
	local.set	64
	local.get	64
	i64.load	0
	local.set	65
	local.get	61
	local.get	65
	i64.store	0
	i32.const	8
	local.set	66
	i32.const	8
	local.set	67
	local.get	3
	local.get	67
	i32.add 
	local.set	68
	local.get	68
	local.get	66
	i32.add 
	local.set	69
	i32.const	64
	local.set	70
	local.get	3
	local.get	70
	i32.add 
	local.set	71
	local.get	71
	local.get	66
	i32.add 
	local.set	72
	local.get	72
	i64.load	0
	local.set	73
	local.get	69
	local.get	73
	i64.store	0
	local.get	3
	i64.load	64
	local.set	74
	local.get	3
	local.get	74
	i64.store	8
	i32.const	8
	local.set	75
	local.get	3
	local.get	75
	i32.add 
	local.set	76
	local.get	76
	call	ast_new
	local.set	77
	local.get	3
	local.get	77
	i32.store	136
	br      	0                               # 0: up to label36
.LBB18_3:
	end_loop
	end_block                               # label35:
	local.get	3
	i32.load	136
	local.set	78
	i32.const	144
	local.set	79
	local.get	3
	local.get	79
	i32.add 
	local.set	80
	local.get	80
	global.set	__stack_pointer
	local.get	78
	return
	end_function
.Lfunc_end18:
	.size	term, .Lfunc_end18-term
                                        # -- End function
	.section	.text.factor,"",@
	.type	factor,@function                # -- Begin function factor
factor:                                 # @factor
	.functype	factor (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	144
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	global.set	__stack_pointer
	local.get	3
	local.get	0
	i32.store	140
	local.get	3
	i32.load	140
	local.set	4
	local.get	4
	call	exponent
	local.set	5
	local.get	3
	local.get	5
	i32.store	136
.LBB19_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label38:
	local.get	3
	i32.load	140
	local.set	6
	i32.const	12
	local.set	7
	local.get	3
	local.get	7
	i32.store	56
	i32.const	11
	local.set	8
	local.get	3
	local.get	8
	i32.store	52
	i32.const	10
	local.set	9
	local.get	3
	local.get	9
	i32.store	48
	i32.const	3
	local.set	10
	i32.const	48
	local.set	11
	local.get	3
	local.get	11
	i32.add 
	local.set	12
	local.get	6
	local.get	10
	local.get	12
	call	check
	local.set	13
	local.get	13
	i32.eqz
	br_if   	1                               # 1: down to label37
# %bb.2:                                #   in Loop: Header=BB19_1 Depth=1
	local.get	3
	i32.load	140
	local.set	14
	i32.const	112
	local.set	15
	local.get	3
	local.get	15
	i32.add 
	local.set	16
	local.get	16
	local.set	17
	local.get	17
	local.get	14
	call	advance
	local.get	3
	i32.load	140
	local.set	18
	local.get	18
	call	exponent
	local.set	19
	local.get	3
	local.get	19
	i32.store	108
	i32.const	3
	local.set	20
	local.get	3
	local.get	20
	i32.store	64
	i32.const	64
	local.set	21
	local.get	3
	local.get	21
	i32.add 
	local.set	22
	local.get	22
	local.set	23
	i32.const	8
	local.set	24
	local.get	23
	local.get	24
	i32.add 
	local.set	25
	local.get	3
	i32.load	136
	local.set	26
	local.get	3
	local.get	26
	i32.store	72
	i32.const	4
	local.set	27
	local.get	25
	local.get	27
	i32.add 
	local.set	28
	i32.const	112
	local.set	29
	local.get	3
	local.get	29
	i32.add 
	local.set	30
	local.get	30
	local.set	31
	local.get	31
	i64.load	0:p2align=2
	local.set	32
	local.get	28
	local.get	32
	i64.store	0:p2align=2
	i32.const	16
	local.set	33
	local.get	28
	local.get	33
	i32.add 
	local.set	34
	local.get	31
	local.get	33
	i32.add 
	local.set	35
	local.get	35
	i64.load	0:p2align=2
	local.set	36
	local.get	34
	local.get	36
	i64.store	0:p2align=2
	i32.const	8
	local.set	37
	local.get	28
	local.get	37
	i32.add 
	local.set	38
	local.get	31
	local.get	37
	i32.add 
	local.set	39
	local.get	39
	i64.load	0:p2align=2
	local.set	40
	local.get	38
	local.get	40
	i64.store	0:p2align=2
	local.get	3
	i32.load	108
	local.set	41
	local.get	3
	local.get	41
	i32.store	100
	i32.const	32
	local.set	42
	i32.const	8
	local.set	43
	local.get	3
	local.get	43
	i32.add 
	local.set	44
	local.get	44
	local.get	42
	i32.add 
	local.set	45
	i32.const	64
	local.set	46
	local.get	3
	local.get	46
	i32.add 
	local.set	47
	local.get	47
	local.get	42
	i32.add 
	local.set	48
	local.get	48
	i64.load	0
	local.set	49
	local.get	45
	local.get	49
	i64.store	0
	i32.const	24
	local.set	50
	i32.const	8
	local.set	51
	local.get	3
	local.get	51
	i32.add 
	local.set	52
	local.get	52
	local.get	50
	i32.add 
	local.set	53
	i32.const	64
	local.set	54
	local.get	3
	local.get	54
	i32.add 
	local.set	55
	local.get	55
	local.get	50
	i32.add 
	local.set	56
	local.get	56
	i64.load	0
	local.set	57
	local.get	53
	local.get	57
	i64.store	0
	i32.const	16
	local.set	58
	i32.const	8
	local.set	59
	local.get	3
	local.get	59
	i32.add 
	local.set	60
	local.get	60
	local.get	58
	i32.add 
	local.set	61
	i32.const	64
	local.set	62
	local.get	3
	local.get	62
	i32.add 
	local.set	63
	local.get	63
	local.get	58
	i32.add 
	local.set	64
	local.get	64
	i64.load	0
	local.set	65
	local.get	61
	local.get	65
	i64.store	0
	i32.const	8
	local.set	66
	i32.const	8
	local.set	67
	local.get	3
	local.get	67
	i32.add 
	local.set	68
	local.get	68
	local.get	66
	i32.add 
	local.set	69
	i32.const	64
	local.set	70
	local.get	3
	local.get	70
	i32.add 
	local.set	71
	local.get	71
	local.get	66
	i32.add 
	local.set	72
	local.get	72
	i64.load	0
	local.set	73
	local.get	69
	local.get	73
	i64.store	0
	local.get	3
	i64.load	64
	local.set	74
	local.get	3
	local.get	74
	i64.store	8
	i32.const	8
	local.set	75
	local.get	3
	local.get	75
	i32.add 
	local.set	76
	local.get	76
	call	ast_new
	local.set	77
	local.get	3
	local.get	77
	i32.store	136
	br      	0                               # 0: up to label38
.LBB19_3:
	end_loop
	end_block                               # label37:
	local.get	3
	i32.load	136
	local.set	78
	i32.const	144
	local.set	79
	local.get	3
	local.get	79
	i32.add 
	local.set	80
	local.get	80
	global.set	__stack_pointer
	local.get	78
	return
	end_function
.Lfunc_end19:
	.size	factor, .Lfunc_end19-factor
                                        # -- End function
	.section	.text.exponent,"",@
	.type	exponent,@function              # -- Begin function exponent
exponent:                               # @exponent
	.functype	exponent (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	144
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	global.set	__stack_pointer
	local.get	3
	local.get	0
	i32.store	140
	local.get	3
	i32.load	140
	local.set	4
	local.get	4
	call	unary
	local.set	5
	local.get	3
	local.get	5
	i32.store	136
	local.get	3
	i32.load	140
	local.set	6
	i32.const	22
	local.set	7
	local.get	3
	local.get	7
	i32.store	48
	i32.const	1
	local.set	8
	i32.const	48
	local.set	9
	local.get	3
	local.get	9
	i32.add 
	local.set	10
	local.get	6
	local.get	8
	local.get	10
	call	check
	local.set	11
	block   	
	local.get	11
	i32.eqz
	br_if   	0                               # 0: down to label39
# %bb.1:
	local.get	3
	i32.load	140
	local.set	12
	i32.const	112
	local.set	13
	local.get	3
	local.get	13
	i32.add 
	local.set	14
	local.get	14
	local.set	15
	local.get	15
	local.get	12
	call	advance
	local.get	3
	i32.load	140
	local.set	16
	local.get	16
	call	exponent
	local.set	17
	local.get	3
	local.get	17
	i32.store	108
	i32.const	3
	local.set	18
	local.get	3
	local.get	18
	i32.store	64
	i32.const	64
	local.set	19
	local.get	3
	local.get	19
	i32.add 
	local.set	20
	local.get	20
	local.set	21
	i32.const	8
	local.set	22
	local.get	21
	local.get	22
	i32.add 
	local.set	23
	local.get	3
	i32.load	136
	local.set	24
	local.get	3
	local.get	24
	i32.store	72
	i32.const	4
	local.set	25
	local.get	23
	local.get	25
	i32.add 
	local.set	26
	i32.const	112
	local.set	27
	local.get	3
	local.get	27
	i32.add 
	local.set	28
	local.get	28
	local.set	29
	local.get	29
	i64.load	0:p2align=2
	local.set	30
	local.get	26
	local.get	30
	i64.store	0:p2align=2
	i32.const	16
	local.set	31
	local.get	26
	local.get	31
	i32.add 
	local.set	32
	local.get	29
	local.get	31
	i32.add 
	local.set	33
	local.get	33
	i64.load	0:p2align=2
	local.set	34
	local.get	32
	local.get	34
	i64.store	0:p2align=2
	i32.const	8
	local.set	35
	local.get	26
	local.get	35
	i32.add 
	local.set	36
	local.get	29
	local.get	35
	i32.add 
	local.set	37
	local.get	37
	i64.load	0:p2align=2
	local.set	38
	local.get	36
	local.get	38
	i64.store	0:p2align=2
	local.get	3
	i32.load	108
	local.set	39
	local.get	3
	local.get	39
	i32.store	100
	i32.const	32
	local.set	40
	i32.const	8
	local.set	41
	local.get	3
	local.get	41
	i32.add 
	local.set	42
	local.get	42
	local.get	40
	i32.add 
	local.set	43
	i32.const	64
	local.set	44
	local.get	3
	local.get	44
	i32.add 
	local.set	45
	local.get	45
	local.get	40
	i32.add 
	local.set	46
	local.get	46
	i64.load	0
	local.set	47
	local.get	43
	local.get	47
	i64.store	0
	i32.const	24
	local.set	48
	i32.const	8
	local.set	49
	local.get	3
	local.get	49
	i32.add 
	local.set	50
	local.get	50
	local.get	48
	i32.add 
	local.set	51
	i32.const	64
	local.set	52
	local.get	3
	local.get	52
	i32.add 
	local.set	53
	local.get	53
	local.get	48
	i32.add 
	local.set	54
	local.get	54
	i64.load	0
	local.set	55
	local.get	51
	local.get	55
	i64.store	0
	i32.const	16
	local.set	56
	i32.const	8
	local.set	57
	local.get	3
	local.get	57
	i32.add 
	local.set	58
	local.get	58
	local.get	56
	i32.add 
	local.set	59
	i32.const	64
	local.set	60
	local.get	3
	local.get	60
	i32.add 
	local.set	61
	local.get	61
	local.get	56
	i32.add 
	local.set	62
	local.get	62
	i64.load	0
	local.set	63
	local.get	59
	local.get	63
	i64.store	0
	i32.const	8
	local.set	64
	i32.const	8
	local.set	65
	local.get	3
	local.get	65
	i32.add 
	local.set	66
	local.get	66
	local.get	64
	i32.add 
	local.set	67
	i32.const	64
	local.set	68
	local.get	3
	local.get	68
	i32.add 
	local.set	69
	local.get	69
	local.get	64
	i32.add 
	local.set	70
	local.get	70
	i64.load	0
	local.set	71
	local.get	67
	local.get	71
	i64.store	0
	local.get	3
	i64.load	64
	local.set	72
	local.get	3
	local.get	72
	i64.store	8
	i32.const	8
	local.set	73
	local.get	3
	local.get	73
	i32.add 
	local.set	74
	local.get	74
	call	ast_new
	local.set	75
	local.get	3
	local.get	75
	i32.store	136
.LBB20_2:
	end_block                               # label39:
	local.get	3
	i32.load	136
	local.set	76
	i32.const	144
	local.set	77
	local.get	3
	local.get	77
	i32.add 
	local.set	78
	local.get	78
	global.set	__stack_pointer
	local.get	76
	return
	end_function
.Lfunc_end20:
	.size	exponent, .Lfunc_end20-exponent
                                        # -- End function
	.section	.text.unary,"",@
	.type	unary,@function                 # -- Begin function unary
unary:                                  # @unary
	.functype	unary (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	144
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	global.set	__stack_pointer
	local.get	3
	local.get	0
	i32.store	140
	i32.const	0
	local.set	4
	local.get	3
	local.get	4
	i32.store	136
	local.get	3
	i32.load	140
	local.set	5
	i32.const	8
	local.set	6
	local.get	3
	local.get	6
	i32.store	56
	i32.const	9
	local.set	7
	local.get	3
	local.get	7
	i32.store	52
	i32.const	21
	local.set	8
	local.get	3
	local.get	8
	i32.store	48
	i32.const	3
	local.set	9
	i32.const	48
	local.set	10
	local.get	3
	local.get	10
	i32.add 
	local.set	11
	local.get	5
	local.get	9
	local.get	11
	call	check
	local.set	12
	block   	
	block   	
	local.get	12
	i32.eqz
	br_if   	0                               # 0: down to label41
# %bb.1:
	local.get	3
	i32.load	140
	local.set	13
	i32.const	112
	local.set	14
	local.get	3
	local.get	14
	i32.add 
	local.set	15
	local.get	15
	local.set	16
	local.get	16
	local.get	13
	call	advance
	i32.const	3
	local.set	17
	local.get	3
	local.get	17
	i32.store	72
	i32.const	72
	local.set	18
	local.get	3
	local.get	18
	i32.add 
	local.set	19
	local.get	19
	local.set	20
	i32.const	8
	local.set	21
	local.get	20
	local.get	21
	i32.add 
	local.set	22
	i32.const	112
	local.set	23
	local.get	3
	local.get	23
	i32.add 
	local.set	24
	local.get	24
	local.set	25
	local.get	25
	i64.load	0:p2align=2
	local.set	26
	local.get	22
	local.get	26
	i64.store	0:p2align=2
	i32.const	16
	local.set	27
	local.get	22
	local.get	27
	i32.add 
	local.set	28
	local.get	25
	local.get	27
	i32.add 
	local.set	29
	local.get	29
	i64.load	0:p2align=2
	local.set	30
	local.get	28
	local.get	30
	i64.store	0:p2align=2
	i32.const	8
	local.set	31
	local.get	22
	local.get	31
	i32.add 
	local.set	32
	local.get	25
	local.get	31
	i32.add 
	local.set	33
	local.get	33
	i64.load	0:p2align=2
	local.set	34
	local.get	32
	local.get	34
	i64.store	0:p2align=2
	local.get	3
	i32.load	140
	local.set	35
	local.get	35
	call	unary
	local.set	36
	local.get	3
	local.get	36
	i32.store	104
	i32.const	32
	local.set	37
	i32.const	8
	local.set	38
	local.get	3
	local.get	38
	i32.add 
	local.set	39
	local.get	39
	local.get	37
	i32.add 
	local.set	40
	i32.const	72
	local.set	41
	local.get	3
	local.get	41
	i32.add 
	local.set	42
	local.get	42
	local.get	37
	i32.add 
	local.set	43
	local.get	43
	i64.load	0
	local.set	44
	local.get	40
	local.get	44
	i64.store	0
	i32.const	24
	local.set	45
	i32.const	8
	local.set	46
	local.get	3
	local.get	46
	i32.add 
	local.set	47
	local.get	47
	local.get	45
	i32.add 
	local.set	48
	i32.const	72
	local.set	49
	local.get	3
	local.get	49
	i32.add 
	local.set	50
	local.get	50
	local.get	45
	i32.add 
	local.set	51
	local.get	51
	i64.load	0
	local.set	52
	local.get	48
	local.get	52
	i64.store	0
	i32.const	16
	local.set	53
	i32.const	8
	local.set	54
	local.get	3
	local.get	54
	i32.add 
	local.set	55
	local.get	55
	local.get	53
	i32.add 
	local.set	56
	i32.const	72
	local.set	57
	local.get	3
	local.get	57
	i32.add 
	local.set	58
	local.get	58
	local.get	53
	i32.add 
	local.set	59
	local.get	59
	i64.load	0
	local.set	60
	local.get	56
	local.get	60
	i64.store	0
	i32.const	8
	local.set	61
	i32.const	8
	local.set	62
	local.get	3
	local.get	62
	i32.add 
	local.set	63
	local.get	63
	local.get	61
	i32.add 
	local.set	64
	i32.const	72
	local.set	65
	local.get	3
	local.get	65
	i32.add 
	local.set	66
	local.get	66
	local.get	61
	i32.add 
	local.set	67
	local.get	67
	i64.load	0
	local.set	68
	local.get	64
	local.get	68
	i64.store	0
	local.get	3
	i64.load	72
	local.set	69
	local.get	3
	local.get	69
	i64.store	8
	i32.const	8
	local.set	70
	local.get	3
	local.get	70
	i32.add 
	local.set	71
	local.get	71
	call	ast_new
	local.set	72
	local.get	3
	local.get	72
	i32.store	136
	br      	1                               # 1: down to label40
.LBB21_2:
	end_block                               # label41:
	local.get	3
	i32.load	140
	local.set	73
	local.get	73
	call	call
	local.set	74
	local.get	3
	local.get	74
	i32.store	136
.LBB21_3:
	end_block                               # label40:
	local.get	3
	i32.load	136
	local.set	75
	i32.const	144
	local.set	76
	local.get	3
	local.get	76
	i32.add 
	local.set	77
	local.get	77
	global.set	__stack_pointer
	local.get	75
	return
	end_function
.Lfunc_end21:
	.size	unary, .Lfunc_end21-unary
                                        # -- End function
	.section	.text.call,"",@
	.type	call,@function                  # -- Begin function call
call:                                   # @call
	.functype	call (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	160
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	global.set	__stack_pointer
	local.get	3
	local.get	0
	i32.store	156
	local.get	3
	i32.load	156
	local.set	4
	local.get	4
	call	primary
	local.set	5
	local.get	3
	local.get	5
	i32.store	152
	local.get	3
	i32.load	156
	local.set	6
	i32.const	1
	local.set	7
	local.get	3
	local.get	7
	i32.store	64
	i32.const	64
	local.set	8
	local.get	3
	local.get	8
	i32.add 
	local.set	9
	local.get	6
	local.get	7
	local.get	9
	call	match
	local.set	10
	block   	
	local.get	10
	i32.eqz
	br_if   	0                               # 0: down to label42
# %bb.1:
	call	astlist_new
	local.set	11
	local.get	3
	local.get	11
	i32.store	148
.LBB22_2:                               # =>This Inner Loop Header: Depth=1
	loop    	                                # label43:
	local.get	3
	i32.load	156
	local.set	12
	local.get	12
	call	end
	local.set	13
	i32.const	0
	local.set	14
	local.get	14
	local.set	15
	block   	
	local.get	13
	br_if   	0                               # 0: down to label44
# %bb.3:                                #   in Loop: Header=BB22_2 Depth=1
	local.get	3
	i32.load	156
	local.set	16
	i32.const	2
	local.set	17
	local.get	3
	local.get	17
	i32.store	48
	i32.const	1
	local.set	18
	i32.const	48
	local.set	19
	local.get	3
	local.get	19
	i32.add 
	local.set	20
	local.get	16
	local.get	18
	local.get	20
	call	check
	local.set	21
	i32.const	0
	local.set	22
	local.get	21
	local.set	23
	local.get	22
	local.set	24
	local.get	23
	local.get	24
	i32.ne  
	local.set	25
	i32.const	-1
	local.set	26
	local.get	25
	local.get	26
	i32.xor 
	local.set	27
	local.get	27
	local.set	15
.LBB22_4:                               #   in Loop: Header=BB22_2 Depth=1
	end_block                               # label44:
	local.get	15
	local.set	28
	i32.const	1
	local.set	29
	local.get	28
	local.get	29
	i32.and 
	local.set	30
	block   	
	local.get	30
	i32.eqz
	br_if   	0                               # 0: down to label45
# %bb.5:                                #   in Loop: Header=BB22_2 Depth=1
	local.get	3
	i32.load	148
	local.set	31
	local.get	3
	i32.load	156
	local.set	32
	local.get	32
	call	expression
	local.set	33
	local.get	31
	local.get	33
	call	astlist_push
	br      	1                               # 1: up to label43
.LBB22_6:
	end_block                               # label45:
	end_loop
	local.get	3
	i32.load	156
	local.set	34
	i32.const	120
	local.set	35
	local.get	3
	local.get	35
	i32.add 
	local.set	36
	local.get	36
	local.set	37
	local.get	37
	local.get	34
	call	advance
	i32.const	12
	local.set	38
	local.get	3
	local.get	38
	i32.store	80
	i32.const	80
	local.set	39
	local.get	3
	local.get	39
	i32.add 
	local.set	40
	local.get	40
	local.set	41
	i32.const	8
	local.set	42
	local.get	41
	local.get	42
	i32.add 
	local.set	43
	local.get	3
	i32.load	152
	local.set	44
	local.get	3
	local.get	44
	i32.store	88
	local.get	3
	i32.load	148
	local.set	45
	local.get	3
	local.get	45
	i32.store	92
	i32.const	8
	local.set	46
	local.get	43
	local.get	46
	i32.add 
	local.set	47
	i32.const	120
	local.set	48
	local.get	3
	local.get	48
	i32.add 
	local.set	49
	local.get	49
	local.set	50
	local.get	50
	i64.load	0:p2align=2
	local.set	51
	local.get	47
	local.get	51
	i64.store	0:p2align=2
	i32.const	16
	local.set	52
	local.get	47
	local.get	52
	i32.add 
	local.set	53
	local.get	50
	local.get	52
	i32.add 
	local.set	54
	local.get	54
	i64.load	0:p2align=2
	local.set	55
	local.get	53
	local.get	55
	i64.store	0:p2align=2
	i32.const	8
	local.set	56
	local.get	47
	local.get	56
	i32.add 
	local.set	57
	local.get	50
	local.get	56
	i32.add 
	local.set	58
	local.get	58
	i64.load	0:p2align=2
	local.set	59
	local.get	57
	local.get	59
	i64.store	0:p2align=2
	i32.const	32
	local.set	60
	i32.const	8
	local.set	61
	local.get	3
	local.get	61
	i32.add 
	local.set	62
	local.get	62
	local.get	60
	i32.add 
	local.set	63
	i32.const	80
	local.set	64
	local.get	3
	local.get	64
	i32.add 
	local.set	65
	local.get	65
	local.get	60
	i32.add 
	local.set	66
	local.get	66
	i64.load	0
	local.set	67
	local.get	63
	local.get	67
	i64.store	0
	i32.const	24
	local.set	68
	i32.const	8
	local.set	69
	local.get	3
	local.get	69
	i32.add 
	local.set	70
	local.get	70
	local.get	68
	i32.add 
	local.set	71
	i32.const	80
	local.set	72
	local.get	3
	local.get	72
	i32.add 
	local.set	73
	local.get	73
	local.get	68
	i32.add 
	local.set	74
	local.get	74
	i64.load	0
	local.set	75
	local.get	71
	local.get	75
	i64.store	0
	i32.const	16
	local.set	76
	i32.const	8
	local.set	77
	local.get	3
	local.get	77
	i32.add 
	local.set	78
	local.get	78
	local.get	76
	i32.add 
	local.set	79
	i32.const	80
	local.set	80
	local.get	3
	local.get	80
	i32.add 
	local.set	81
	local.get	81
	local.get	76
	i32.add 
	local.set	82
	local.get	82
	i64.load	0
	local.set	83
	local.get	79
	local.get	83
	i64.store	0
	i32.const	8
	local.set	84
	i32.const	8
	local.set	85
	local.get	3
	local.get	85
	i32.add 
	local.set	86
	local.get	86
	local.get	84
	i32.add 
	local.set	87
	i32.const	80
	local.set	88
	local.get	3
	local.get	88
	i32.add 
	local.set	89
	local.get	89
	local.get	84
	i32.add 
	local.set	90
	local.get	90
	i64.load	0
	local.set	91
	local.get	87
	local.get	91
	i64.store	0
	local.get	3
	i64.load	80
	local.set	92
	local.get	3
	local.get	92
	i64.store	8
	i32.const	8
	local.set	93
	local.get	3
	local.get	93
	i32.add 
	local.set	94
	local.get	94
	call	ast_new
	local.set	95
	local.get	3
	local.get	95
	i32.store	152
.LBB22_7:
	end_block                               # label42:
	local.get	3
	i32.load	152
	local.set	96
	i32.const	160
	local.set	97
	local.get	3
	local.get	97
	i32.add 
	local.set	98
	local.get	98
	global.set	__stack_pointer
	local.get	96
	return
	end_function
.Lfunc_end22:
	.size	call, .Lfunc_end22-call
                                        # -- End function
	.section	.text.primary,"",@
	.type	primary,@function               # -- Begin function primary
primary:                                # @primary
	.functype	primary (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, f64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	336
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	global.set	__stack_pointer
	local.get	3
	local.get	0
	i32.store	328
	local.get	3
	i32.load	328
	local.set	4
	local.get	4
	call	end
	local.set	5
	block   	
	block   	
	local.get	5
	i32.eqz
	br_if   	0                               # 0: down to label47
# %bb.1:
	i32.const	0
	local.set	6
	local.get	3
	local.get	6
	i32.store	332
	br      	1                               # 1: down to label46
.LBB23_2:
	end_block                               # label47:
	local.get	3
	i32.load	328
	local.set	7
	i32.const	160
	local.set	8
	local.get	3
	local.get	8
	i32.add 
	local.set	9
	i32.const	25
	local.set	10
	local.get	9
	local.get	10
	i32.store	0
	i32.const	23
	local.set	11
	local.get	3
	local.get	11
	i32.store	156
	i32.const	24
	local.set	12
	local.get	3
	local.get	12
	i32.store	152
	i32.const	7
	local.set	13
	local.get	3
	local.get	13
	i32.store	148
	i32.const	6
	local.set	14
	local.get	3
	local.get	14
	i32.store	144
	i32.const	5
	local.set	15
	i32.const	144
	local.set	16
	local.get	3
	local.get	16
	i32.add 
	local.set	17
	local.get	7
	local.get	15
	local.get	17
	call	check
	local.set	18
	block   	
	local.get	18
	i32.eqz
	br_if   	0                               # 0: down to label48
# %bb.3:
	i32.const	6
	local.set	19
	local.get	3
	local.get	19
	i32.store	288
	i32.const	288
	local.set	20
	local.get	3
	local.get	20
	i32.add 
	local.set	21
	local.get	21
	local.set	22
	i32.const	8
	local.set	23
	local.get	22
	local.get	23
	i32.add 
	local.set	24
	local.get	3
	i32.load	328
	local.set	25
	local.get	24
	local.get	25
	call	advance
	i32.const	0
	local.set	26
	local.get	26
	f64.convert_i32_s
	local.set	27
	local.get	3
	local.get	27
	f64.store	320
	i32.const	32
	local.set	28
	local.get	3
	local.get	28
	i32.add 
	local.set	29
	i32.const	288
	local.set	30
	local.get	3
	local.get	30
	i32.add 
	local.set	31
	local.get	31
	local.get	28
	i32.add 
	local.set	32
	local.get	32
	i64.load	0
	local.set	33
	local.get	29
	local.get	33
	i64.store	0
	i32.const	24
	local.set	34
	local.get	3
	local.get	34
	i32.add 
	local.set	35
	i32.const	288
	local.set	36
	local.get	3
	local.get	36
	i32.add 
	local.set	37
	local.get	37
	local.get	34
	i32.add 
	local.set	38
	local.get	38
	i64.load	0
	local.set	39
	local.get	35
	local.get	39
	i64.store	0
	i32.const	16
	local.set	40
	local.get	3
	local.get	40
	i32.add 
	local.set	41
	i32.const	288
	local.set	42
	local.get	3
	local.get	42
	i32.add 
	local.set	43
	local.get	43
	local.get	40
	i32.add 
	local.set	44
	local.get	44
	i64.load	0
	local.set	45
	local.get	41
	local.get	45
	i64.store	0
	i32.const	8
	local.set	46
	local.get	3
	local.get	46
	i32.add 
	local.set	47
	i32.const	288
	local.set	48
	local.get	3
	local.get	48
	i32.add 
	local.set	49
	local.get	49
	local.get	46
	i32.add 
	local.set	50
	local.get	50
	i64.load	0
	local.set	51
	local.get	47
	local.get	51
	i64.store	0
	local.get	3
	i64.load	288
	local.set	52
	local.get	3
	local.get	52
	i64.store	0
	local.get	3
	call	ast_new
	local.set	53
	local.get	3
	local.get	53
	i32.store	332
	br      	1                               # 1: down to label46
.LBB23_4:
	end_block                               # label48:
	local.get	3
	i32.load	328
	local.set	54
	i32.const	5
	local.set	55
	local.get	3
	local.get	55
	i32.store	128
	i32.const	1
	local.set	56
	i32.const	128
	local.set	57
	local.get	3
	local.get	57
	i32.add 
	local.set	58
	local.get	54
	local.get	56
	local.get	58
	call	check
	local.set	59
	block   	
	local.get	59
	i32.eqz
	br_if   	0                               # 0: down to label49
# %bb.5:
	i32.const	7
	local.set	60
	local.get	3
	local.get	60
	i32.store	248
	i32.const	248
	local.set	61
	local.get	3
	local.get	61
	i32.add 
	local.set	62
	local.get	62
	local.set	63
	i32.const	8
	local.set	64
	local.get	63
	local.get	64
	i32.add 
	local.set	65
	local.get	3
	i32.load	328
	local.set	66
	local.get	65
	local.get	66
	call	advance
	i32.const	32
	local.set	67
	i32.const	40
	local.set	68
	local.get	3
	local.get	68
	i32.add 
	local.set	69
	local.get	69
	local.get	67
	i32.add 
	local.set	70
	i32.const	248
	local.set	71
	local.get	3
	local.get	71
	i32.add 
	local.set	72
	local.get	72
	local.get	67
	i32.add 
	local.set	73
	local.get	73
	i64.load	0
	local.set	74
	local.get	70
	local.get	74
	i64.store	0
	i32.const	24
	local.set	75
	i32.const	40
	local.set	76
	local.get	3
	local.get	76
	i32.add 
	local.set	77
	local.get	77
	local.get	75
	i32.add 
	local.set	78
	i32.const	248
	local.set	79
	local.get	3
	local.get	79
	i32.add 
	local.set	80
	local.get	80
	local.get	75
	i32.add 
	local.set	81
	local.get	81
	i64.load	0
	local.set	82
	local.get	78
	local.get	82
	i64.store	0
	i32.const	16
	local.set	83
	i32.const	40
	local.set	84
	local.get	3
	local.get	84
	i32.add 
	local.set	85
	local.get	85
	local.get	83
	i32.add 
	local.set	86
	i32.const	248
	local.set	87
	local.get	3
	local.get	87
	i32.add 
	local.set	88
	local.get	88
	local.get	83
	i32.add 
	local.set	89
	local.get	89
	i64.load	0
	local.set	90
	local.get	86
	local.get	90
	i64.store	0
	i32.const	8
	local.set	91
	i32.const	40
	local.set	92
	local.get	3
	local.get	92
	i32.add 
	local.set	93
	local.get	93
	local.get	91
	i32.add 
	local.set	94
	i32.const	248
	local.set	95
	local.get	3
	local.get	95
	i32.add 
	local.set	96
	local.get	96
	local.get	91
	i32.add 
	local.set	97
	local.get	97
	i64.load	0
	local.set	98
	local.get	94
	local.get	98
	i64.store	0
	local.get	3
	i64.load	248
	local.set	99
	local.get	3
	local.get	99
	i64.store	40
	i32.const	40
	local.set	100
	local.get	3
	local.get	100
	i32.add 
	local.set	101
	local.get	101
	call	ast_new
	local.set	102
	local.get	3
	local.get	102
	i32.store	332
	br      	1                               # 1: down to label46
.LBB23_6:
	end_block                               # label49:
	local.get	3
	i32.load	328
	local.set	103
	i32.const	1
	local.set	104
	local.get	3
	local.get	104
	i32.store	112
	i32.const	112
	local.set	105
	local.get	3
	local.get	105
	i32.add 
	local.set	106
	local.get	103
	local.get	104
	local.get	106
	call	match
	local.set	107
	block   	
	local.get	107
	i32.eqz
	br_if   	0                               # 0: down to label50
# %bb.7:
	local.get	3
	i32.load	328
	local.set	108
	local.get	108
	call	expression
	local.set	109
	local.get	3
	local.get	109
	i32.store	244
	local.get	3
	i32.load	328
	local.set	110
	i32.const	216
	local.set	111
	local.get	3
	local.get	111
	i32.add 
	local.set	112
	local.get	112
	local.set	113
	i32.const	2
	local.set	114
	local.get	113
	local.get	110
	local.get	114
	call	consume
	local.get	3
	i32.load	244
	local.set	115
	local.get	3
	local.get	115
	i32.store	332
	br      	1                               # 1: down to label46
.LBB23_8:
	end_block                               # label50:
	local.get	3
	i32.load	328
	local.set	116
	i32.const	192
	local.set	117
	local.get	3
	local.get	117
	i32.add 
	local.set	118
	local.get	118
	local.set	119
	i32.const	0
	local.set	120
	local.get	119
	local.get	116
	local.get	120
	call	peekn
	local.get	3
	i32.load	328
	local.set	121
	i32.const	168
	local.set	122
	local.get	3
	local.get	122
	i32.add 
	local.set	123
	local.get	123
	local.set	124
	i32.const	0
	local.set	125
	local.get	124
	local.get	121
	local.get	125
	call	peekn
	local.get	3
	i32.load	168
	local.set	126
	local.get	126
	call	tokentype_str
	local.set	127
	i32.const	16
	local.set	128
	i32.const	88
	local.set	129
	local.get	3
	local.get	129
	i32.add 
	local.set	130
	local.get	130
	local.get	128
	i32.add 
	local.set	131
	i32.const	192
	local.set	132
	local.get	3
	local.get	132
	i32.add 
	local.set	133
	local.get	133
	local.get	128
	i32.add 
	local.set	134
	local.get	134
	i64.load	0
	local.set	135
	local.get	131
	local.get	135
	i64.store	0
	i32.const	8
	local.set	136
	i32.const	88
	local.set	137
	local.get	3
	local.get	137
	i32.add 
	local.set	138
	local.get	138
	local.get	136
	i32.add 
	local.set	139
	i32.const	192
	local.set	140
	local.get	3
	local.get	140
	i32.add 
	local.set	141
	local.get	141
	local.get	136
	i32.add 
	local.set	142
	local.get	142
	i64.load	0
	local.set	143
	local.get	139
	local.get	143
	i64.store	0
	local.get	3
	i64.load	192
	local.set	144
	local.get	3
	local.get	144
	i64.store	88
	local.get	3
	local.get	127
	i32.store	80
	i32.const	.L.str.2
	local.set	145
	i32.const	.L.str
	local.set	146
	i32.const	88
	local.set	147
	local.get	3
	local.get	147
	i32.add 
	local.set	148
	i32.const	80
	local.set	149
	local.get	3
	local.get	149
	i32.add 
	local.set	150
	local.get	146
	local.get	148
	local.get	145
	local.get	150
	call	generic_error
	unreachable
.LBB23_9:
	end_block                               # label46:
	local.get	3
	i32.load	332
	local.set	151
	i32.const	336
	local.set	152
	local.get	3
	local.get	152
	i32.add 
	local.set	153
	local.get	153
	global.set	__stack_pointer
	local.get	151
	return
	end_function
.Lfunc_end23:
	.size	primary, .Lfunc_end23-primary
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata..L.str,"S",@
.L.str:
	.asciz	"ParseError"
	.size	.L.str, 11

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata..L.str.1,"S",@
.L.str.1:
	.asciz	"expected token type %s but got %s"
	.size	.L.str.1, 34

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata..L.str.2,"S",@
.L.str.2:
	.asciz	"unknown primary token: %s"
	.size	.L.str.2, 26

	.ident	"clang version 14.0.6"
	.no_dead_strip	__indirect_function_table
	.section	.custom_section.producers,"",@
	.int8	1
	.int8	12
	.ascii	"processed-by"
	.int8	1
	.int8	5
	.ascii	"clang"
	.int8	6
	.ascii	"14.0.6"
	.section	.rodata..L.str.2,"S",@
