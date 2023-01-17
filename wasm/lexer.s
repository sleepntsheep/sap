	.text
	.file	"lexer.c"
	.section	.text.lex,"",@
	.hidden	lex                             # -- Begin function lex
	.globl	lex
	.globaltype	__stack_pointer, i32
	.functype	free (i32) -> ()
	.functype	calloc (i32, i32) -> (i32)
	.functype	strlen (i32) -> (i32)
	.functype	tokenlist_new () -> (i32)
	.functype	isalpha (i32) -> (i32)
	.functype	fprintf (i32, i32, i32) -> (i32)
	.functype	exit (i32) -> ()
	.functype	sstring_from (i32) -> (i32)
	.functype	sstring_catlen (i32, i32, i32) -> (i32)
	.functype	tokenlist_push (i32, i32) -> ()
	.functype	strncmp (i32, i32, i32) -> (i32)
	.functype	isalnum (i32) -> (i32)
	.type	lex,@function
lex:                                    # @lex
	.functype	lex (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	call	lexer_new
	local.set	6
	local.get	4
	local.get	6
	i32.store	4
	local.get	4
	i32.load	4
	local.set	7
	local.get	7
	call	lexer_lex
	local.get	4
	i32.load	4
	local.set	8
	local.get	8
	i32.load	16
	local.set	9
	local.get	4
	local.get	9
	i32.store	0
	local.get	4
	i32.load	4
	local.set	10
	local.get	10
	call	free
	local.get	4
	i32.load	0
	local.set	11
	i32.const	16
	local.set	12
	local.get	4
	local.get	12
	i32.add 
	local.set	13
	local.get	13
	global.set	__stack_pointer
	local.get	11
	return
	end_function
.Lfunc_end0:
	.size	lex, .Lfunc_end0-lex
                                        # -- End function
	.section	.text.lexer_new,"",@
	.type	lexer_new,@function             # -- Begin function lexer_new
lexer_new:                              # @lexer_new
	.functype	lexer_new (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32
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
	i32.const	1
	local.set	4
	i32.const	44
	local.set	5
	local.get	4
	local.get	5
	call	calloc
	local.set	6
	local.get	3
	local.get	6
	i32.store	24
	local.get	3
	i32.load	24
	local.set	7
	i32.const	0
	local.set	8
	local.get	7
	local.get	8
	i32.store	8
	local.get	3
	i32.load	28
	local.set	9
	local.get	9
	call	strlen
	local.set	10
	local.get	3
	i32.load	24
	local.set	11
	local.get	11
	local.get	10
	i32.store	4
	call	tokenlist_new
	local.set	12
	local.get	3
	i32.load	24
	local.set	13
	local.get	13
	local.get	12
	i32.store	16
	local.get	3
	i32.load	24
	local.set	14
	i32.const	0
	local.set	15
	local.get	14
	local.get	15
	i32.store	24
	local.get	3
	i32.load	24
	local.set	16
	i32.const	0
	local.set	17
	local.get	16
	local.get	17
	i32.store	20
	local.get	3
	i32.load	24
	local.set	18
	i32.const	28
	local.set	19
	local.get	18
	local.get	19
	i32.add 
	local.set	20
	i32.const	0
	local.set	21
	local.get	3
	local.get	21
	i32.store	8
	i32.const	0
	local.set	22
	local.get	3
	local.get	22
	i32.store	12
	i32.const	0
	local.set	23
	local.get	3
	local.get	23
	i32.store	16
	i32.const	0
	local.set	24
	local.get	3
	local.get	24
	i32.store	20
	i32.const	8
	local.set	25
	local.get	3
	local.get	25
	i32.add 
	local.set	26
	local.get	26
	local.set	27
	local.get	27
	i64.load	0:p2align=2
	local.set	28
	local.get	20
	local.get	28
	i64.store	0:p2align=2
	i32.const	8
	local.set	29
	local.get	20
	local.get	29
	i32.add 
	local.set	30
	local.get	27
	local.get	29
	i32.add 
	local.set	31
	local.get	31
	i64.load	0:p2align=2
	local.set	32
	local.get	30
	local.get	32
	i64.store	0:p2align=2
	local.get	3
	i32.load	28
	local.set	33
	local.get	3
	i32.load	24
	local.set	34
	local.get	34
	local.get	33
	i32.store	0
	local.get	3
	i32.load	24
	local.set	35
	i32.const	32
	local.set	36
	local.get	3
	local.get	36
	i32.add 
	local.set	37
	local.get	37
	global.set	__stack_pointer
	local.get	35
	return
	end_function
.Lfunc_end1:
	.size	lexer_new, .Lfunc_end1-lexer_new
                                        # -- End function
	.section	.text.lexer_lex,"",@
	.type	lexer_lex,@function             # -- Begin function lexer_lex
lexer_lex:                              # @lexer_lex
	.functype	lexer_lex (i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label1:
	local.get	3
	i32.load	28
	local.set	4
	local.get	4
	call	end
	local.set	5
	i32.const	0
	local.set	6
	local.get	5
	local.set	7
	local.get	6
	local.set	8
	local.get	7
	local.get	8
	i32.ne  
	local.set	9
	i32.const	-1
	local.set	10
	local.get	9
	local.get	10
	i32.xor 
	local.set	11
	i32.const	1
	local.set	12
	local.get	11
	local.get	12
	i32.and 
	local.set	13
	local.get	13
	i32.eqz
	br_if   	1                               # 1: down to label0
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	local.get	3
	i32.load	28
	local.set	14
	local.get	14
	call	set_start
	local.get	3
	i32.load	28
	local.set	15
	i32.const	0
	local.set	16
	local.get	15
	local.get	16
	call	peekn
	local.set	17
	i32.const	-9
	local.set	18
	local.get	17
	local.get	18
	i32.add 
	local.set	19
	i32.const	116
	local.set	20
	local.get	19
	local.get	20
	i32.gt_u
	drop
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	local.get	19
	br_table 	{0, 1, 23, 23, 1, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 0, 16, 21, 23, 23, 13, 7, 23, 3, 4, 11, 9, 23, 10, 22, 12, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 19, 23, 17, 14, 18, 23, 15, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 2, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 5, 8, 6, 23} # 1: down to label25
                                        # 23: down to label3
                                        # 0: down to label26
                                        # 16: down to label10
                                        # 21: down to label5
                                        # 13: down to label13
                                        # 7: down to label19
                                        # 3: down to label23
                                        # 4: down to label22
                                        # 11: down to label15
                                        # 9: down to label17
                                        # 10: down to label16
                                        # 22: down to label4
                                        # 12: down to label14
                                        # 20: down to label6
                                        # 19: down to label7
                                        # 17: down to label9
                                        # 14: down to label12
                                        # 18: down to label8
                                        # 15: down to label11
                                        # 2: down to label24
                                        # 5: down to label21
                                        # 8: down to label18
                                        # 6: down to label20
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	end_block                               # label26:
	local.get	3
	i32.load	28
	local.set	21
	local.get	21
	call	advance
	drop
	br      	23                              # 23: down to label2
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	end_block                               # label25:
	local.get	3
	i32.load	28
	local.set	22
	local.get	22
	i32.load	20
	local.set	23
	i32.const	1
	local.set	24
	local.get	23
	local.get	24
	i32.add 
	local.set	25
	local.get	22
	local.get	25
	i32.store	20
	local.get	3
	i32.load	28
	local.set	26
	i32.const	0
	local.set	27
	local.get	26
	local.get	27
	i32.store	24
	local.get	3
	i32.load	28
	local.set	28
	local.get	28
	call	advance
	drop
	br      	22                              # 22: down to label2
.LBB2_5:                                #   in Loop: Header=BB2_1 Depth=1
	end_block                               # label24:
	local.get	3
	i32.load	28
	local.set	29
	i32.const	22
	local.set	30
	local.get	29
	local.get	30
	call	push
	local.get	3
	i32.load	28
	local.set	31
	local.get	31
	call	advance
	drop
	br      	21                              # 21: down to label2
.LBB2_6:                                #   in Loop: Header=BB2_1 Depth=1
	end_block                               # label23:
	local.get	3
	i32.load	28
	local.set	32
	i32.const	1
	local.set	33
	local.get	32
	local.get	33
	call	push
	local.get	3
	i32.load	28
	local.set	34
	local.get	34
	call	advance
	drop
	br      	20                              # 20: down to label2
.LBB2_7:                                #   in Loop: Header=BB2_1 Depth=1
	end_block                               # label22:
	local.get	3
	i32.load	28
	local.set	35
	i32.const	2
	local.set	36
	local.get	35
	local.get	36
	call	push
	local.get	3
	i32.load	28
	local.set	37
	local.get	37
	call	advance
	drop
	br      	19                              # 19: down to label2
.LBB2_8:                                #   in Loop: Header=BB2_1 Depth=1
	end_block                               # label21:
	local.get	3
	i32.load	28
	local.set	38
	i32.const	3
	local.set	39
	local.get	38
	local.get	39
	call	push
	local.get	3
	i32.load	28
	local.set	40
	local.get	40
	call	advance
	drop
	br      	18                              # 18: down to label2
.LBB2_9:                                #   in Loop: Header=BB2_1 Depth=1
	end_block                               # label20:
	local.get	3
	i32.load	28
	local.set	41
	i32.const	4
	local.set	42
	local.get	41
	local.get	42
	call	push
	local.get	3
	i32.load	28
	local.set	43
	local.get	43
	call	advance
	drop
	br      	17                              # 17: down to label2
.LBB2_10:                               #   in Loop: Header=BB2_1 Depth=1
	end_block                               # label19:
	local.get	3
	i32.load	28
	local.set	44
	i32.const	27
	local.set	45
	local.get	44
	local.get	45
	call	push
	local.get	3
	i32.load	28
	local.set	46
	local.get	46
	call	advance
	drop
	br      	16                              # 16: down to label2
.LBB2_11:                               #   in Loop: Header=BB2_1 Depth=1
	end_block                               # label18:
	local.get	3
	i32.load	28
	local.set	47
	i32.const	26
	local.set	48
	local.get	47
	local.get	48
	call	push
	local.get	3
	i32.load	28
	local.set	49
	local.get	49
	call	advance
	drop
	br      	15                              # 15: down to label2
.LBB2_12:                               #   in Loop: Header=BB2_1 Depth=1
	end_block                               # label17:
	local.get	3
	i32.load	28
	local.set	50
	i32.const	8
	local.set	51
	local.get	50
	local.get	51
	call	push
	local.get	3
	i32.load	28
	local.set	52
	local.get	52
	call	advance
	drop
	br      	14                              # 14: down to label2
.LBB2_13:                               #   in Loop: Header=BB2_1 Depth=1
	end_block                               # label16:
	local.get	3
	i32.load	28
	local.set	53
	i32.const	9
	local.set	54
	local.get	53
	local.get	54
	call	push
	local.get	3
	i32.load	28
	local.set	55
	local.get	55
	call	advance
	drop
	br      	13                              # 13: down to label2
.LBB2_14:                               #   in Loop: Header=BB2_1 Depth=1
	end_block                               # label15:
	local.get	3
	i32.load	28
	local.set	56
	i32.const	10
	local.set	57
	local.get	56
	local.get	57
	call	push
	local.get	3
	i32.load	28
	local.set	58
	local.get	58
	call	advance
	drop
	br      	12                              # 12: down to label2
.LBB2_15:                               #   in Loop: Header=BB2_1 Depth=1
	end_block                               # label14:
	local.get	3
	i32.load	28
	local.set	59
	i32.const	11
	local.set	60
	local.get	59
	local.get	60
	call	push
	local.get	3
	i32.load	28
	local.set	61
	local.get	61
	call	advance
	drop
	br      	11                              # 11: down to label2
.LBB2_16:                               #   in Loop: Header=BB2_1 Depth=1
	end_block                               # label13:
	local.get	3
	i32.load	28
	local.set	62
	i32.const	12
	local.set	63
	local.get	62
	local.get	63
	call	push
	local.get	3
	i32.load	28
	local.set	64
	local.get	64
	call	advance
	drop
	br      	10                              # 10: down to label2
.LBB2_17:                               #   in Loop: Header=BB2_1 Depth=1
	end_block                               # label12:
	local.get	3
	i32.load	28
	local.set	65
	i32.const	13
	local.set	66
	local.get	65
	local.get	66
	call	push
	local.get	3
	i32.load	28
	local.set	67
	local.get	67
	call	advance
	drop
	br      	9                               # 9: down to label2
.LBB2_18:                               #   in Loop: Header=BB2_1 Depth=1
	end_block                               # label11:
	local.get	3
	i32.load	28
	local.set	68
	i32.const	20
	local.set	69
	local.get	68
	local.get	69
	call	push
	local.get	3
	i32.load	28
	local.set	70
	local.get	70
	call	advance
	drop
	br      	8                               # 8: down to label2
.LBB2_19:                               #   in Loop: Header=BB2_1 Depth=1
	end_block                               # label10:
	local.get	3
	i32.load	28
	local.set	71
	local.get	71
	call	handle_bang
	br      	7                               # 7: down to label2
.LBB2_20:                               #   in Loop: Header=BB2_1 Depth=1
	end_block                               # label9:
	local.get	3
	i32.load	28
	local.set	72
	local.get	72
	call	handle_left_angle
	br      	6                               # 6: down to label2
.LBB2_21:                               #   in Loop: Header=BB2_1 Depth=1
	end_block                               # label8:
	local.get	3
	i32.load	28
	local.set	73
	local.get	73
	call	handle_right_angle
	br      	5                               # 5: down to label2
.LBB2_22:                               #   in Loop: Header=BB2_1 Depth=1
	end_block                               # label7:
	local.get	3
	i32.load	28
	local.set	74
	local.get	74
	call	handle_colon
	br      	4                               # 4: down to label2
.LBB2_23:                               #   in Loop: Header=BB2_1 Depth=1
	end_block                               # label6:
	local.get	3
	i32.load	28
	local.set	75
	local.get	75
	call	handle_number
	br      	3                               # 3: down to label2
.LBB2_24:                               #   in Loop: Header=BB2_1 Depth=1
	end_block                               # label5:
	local.get	3
	i32.load	28
	local.set	76
	local.get	76
	call	handle_double_quote
	br      	2                               # 2: down to label2
.LBB2_25:                               #   in Loop: Header=BB2_1 Depth=1
	end_block                               # label4:
	local.get	3
	i32.load	28
	local.set	77
	local.get	77
	call	handle_dot
	br      	1                               # 1: down to label2
.LBB2_26:                               #   in Loop: Header=BB2_1 Depth=1
	end_block                               # label3:
	i32.const	0
	local.set	78
	i32.const	1
	local.set	79
	local.get	78
	local.get	79
	i32.and 
	local.set	80
	block   	
	block   	
	block   	
	block   	
	block   	
	local.get	80
	i32.eqz
	br_if   	0                               # 0: down to label31
# %bb.27:                               #   in Loop: Header=BB2_1 Depth=1
	local.get	3
	i32.load	28
	local.set	81
	i32.const	0
	local.set	82
	local.get	81
	local.get	82
	call	peekn
	local.set	83
	i32.const	24
	local.set	84
	local.get	83
	local.get	84
	i32.shl 
	local.set	85
	local.get	85
	local.get	84
	i32.shr_s
	local.set	86
	local.get	86
	call	isalpha
	local.set	87
	local.get	87
	br_if   	2                               # 2: down to label29
	br      	1                               # 1: down to label30
.LBB2_28:                               #   in Loop: Header=BB2_1 Depth=1
	end_block                               # label31:
	local.get	3
	i32.load	28
	local.set	88
	i32.const	0
	local.set	89
	local.get	88
	local.get	89
	call	peekn
	local.set	90
	i32.const	24
	local.set	91
	local.get	90
	local.get	91
	i32.shl 
	local.set	92
	local.get	92
	local.get	91
	i32.shr_s
	local.set	93
	i32.const	32
	local.set	94
	local.get	93
	local.get	94
	i32.or  
	local.set	95
	i32.const	97
	local.set	96
	local.get	95
	local.get	96
	i32.sub 
	local.set	97
	i32.const	26
	local.set	98
	local.get	97
	local.set	99
	local.get	98
	local.set	100
	local.get	99
	local.get	100
	i32.lt_u
	local.set	101
	i32.const	1
	local.set	102
	local.get	101
	local.get	102
	i32.and 
	local.set	103
	local.get	103
	br_if   	1                               # 1: down to label29
.LBB2_29:                               #   in Loop: Header=BB2_1 Depth=1
	end_block                               # label30:
	local.get	3
	i32.load	28
	local.set	104
	i32.const	0
	local.set	105
	local.get	104
	local.get	105
	call	peekn
	local.set	106
	i32.const	24
	local.set	107
	local.get	106
	local.get	107
	i32.shl 
	local.set	108
	local.get	108
	local.get	107
	i32.shr_s
	local.set	109
	i32.const	95
	local.set	110
	local.get	109
	local.set	111
	local.get	110
	local.set	112
	local.get	111
	local.get	112
	i32.eq  
	local.set	113
	i32.const	1
	local.set	114
	local.get	113
	local.get	114
	i32.and 
	local.set	115
	local.get	115
	i32.eqz
	br_if   	1                               # 1: down to label28
.LBB2_30:                               #   in Loop: Header=BB2_1 Depth=1
	end_block                               # label29:
	local.get	3
	i32.load	28
	local.set	116
	local.get	116
	call	handle_identifier
	br      	1                               # 1: down to label27
.LBB2_31:
	end_block                               # label28:
# %bb.32:
	i32.const	0
	local.set	117
	local.get	117
	i32.load	stderr
	local.set	118
	i32.const	211
	local.set	119
	local.get	3
	local.get	119
	i32.store	4
	i32.const	.L.str.1
	local.set	120
	local.get	3
	local.get	120
	i32.store	0
	i32.const	.L.str
	local.set	121
	local.get	118
	local.get	121
	local.get	3
	call	fprintf
	drop
	i32.const	0
	local.set	122
	local.get	122
	i32.load	stderr
	local.set	123
	local.get	3
	i32.load	28
	local.set	124
	local.get	124
	i32.load	0
	local.set	125
	local.get	3
	i32.load	28
	local.set	126
	local.get	126
	i32.load	8
	local.set	127
	local.get	125
	local.get	127
	i32.add 
	local.set	128
	local.get	3
	local.get	128
	i32.store	16
	i32.const	.L.str.2
	local.set	129
	i32.const	16
	local.set	130
	local.get	3
	local.get	130
	i32.add 
	local.set	131
	local.get	123
	local.get	129
	local.get	131
	call	fprintf
	drop
	i32.const	1
	local.set	132
	local.get	132
	call	exit
	unreachable
.LBB2_33:                               #   in Loop: Header=BB2_1 Depth=1
	end_block                               # label27:
.LBB2_34:                               #   in Loop: Header=BB2_1 Depth=1
	end_block                               # label2:
	br      	0                               # 0: up to label1
.LBB2_35:
	end_loop
	end_block                               # label0:
	local.get	3
	i32.load	28
	local.set	133
	i32.const	34
	local.set	134
	local.get	133
	local.get	134
	call	push
	i32.const	32
	local.set	135
	local.get	3
	local.get	135
	i32.add 
	local.set	136
	local.get	136
	global.set	__stack_pointer
	return
	end_function
.Lfunc_end2:
	.size	lexer_lex, .Lfunc_end2-lexer_lex
                                        # -- End function
	.section	.text.end,"",@
	.type	end,@function                   # -- Begin function end
end:                                    # @end
	.functype	end (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	local.get	4
	i32.load	8
	local.set	5
	local.get	3
	i32.load	12
	local.set	6
	local.get	6
	i32.load	4
	local.set	7
	local.get	5
	local.set	8
	local.get	7
	local.set	9
	local.get	8
	local.get	9
	i32.ge_u
	local.set	10
	i32.const	1
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	local.get	12
	return
	end_function
.Lfunc_end3:
	.size	end, .Lfunc_end3-end
                                        # -- End function
	.section	.text.set_start,"",@
	.type	set_start,@function             # -- Begin function set_start
set_start:                              # @set_start
	.functype	set_start (i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64
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
	local.get	0
	i32.store	28
	local.get	3
	i32.load	28
	local.set	4
	local.get	4
	i32.load	8
	local.set	5
	local.get	3
	i32.load	28
	local.set	6
	local.get	6
	local.get	5
	i32.store	12
	local.get	3
	i32.load	28
	local.set	7
	i32.const	28
	local.set	8
	local.get	7
	local.get	8
	i32.add 
	local.set	9
	local.get	3
	i32.load	28
	local.set	10
	local.get	10
	i32.load	20
	local.set	11
	local.get	3
	local.get	11
	i32.store	8
	i32.const	0
	local.set	12
	local.get	3
	local.get	12
	i32.store	12
	local.get	3
	i32.load	28
	local.set	13
	local.get	13
	i32.load	24
	local.set	14
	local.get	3
	local.get	14
	i32.store	16
	i32.const	0
	local.set	15
	local.get	3
	local.get	15
	i32.store	20
	i32.const	8
	local.set	16
	local.get	3
	local.get	16
	i32.add 
	local.set	17
	local.get	17
	local.set	18
	local.get	18
	i64.load	0:p2align=2
	local.set	19
	local.get	9
	local.get	19
	i64.store	0:p2align=2
	i32.const	8
	local.set	20
	local.get	9
	local.get	20
	i32.add 
	local.set	21
	local.get	18
	local.get	20
	i32.add 
	local.set	22
	local.get	22
	i64.load	0:p2align=2
	local.set	23
	local.get	21
	local.get	23
	i64.store	0:p2align=2
	return
	end_function
.Lfunc_end4:
	.size	set_start, .Lfunc_end4-set_start
                                        # -- End function
	.section	.text.peekn,"",@
	.type	peekn,@function                 # -- Begin function peekn
peekn:                                  # @peekn
	.functype	peekn (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	i32.load	0
	local.set	6
	local.get	4
	i32.load	12
	local.set	7
	local.get	7
	i32.load	8
	local.set	8
	local.get	4
	i32.load	8
	local.set	9
	local.get	8
	local.get	9
	i32.add 
	local.set	10
	local.get	6
	local.get	10
	i32.add 
	local.set	11
	local.get	11
	i32.load8_u	0
	local.set	12
	i32.const	24
	local.set	13
	local.get	12
	local.get	13
	i32.shl 
	local.set	14
	local.get	14
	local.get	13
	i32.shr_s
	local.set	15
	local.get	15
	return
	end_function
.Lfunc_end5:
	.size	peekn, .Lfunc_end5-peekn
                                        # -- End function
	.section	.text.advance,"",@
	.type	advance,@function               # -- Begin function advance
advance:                                # @advance
	.functype	advance (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	local.get	4
	i32.load	24
	local.set	5
	i32.const	1
	local.set	6
	local.get	5
	local.get	6
	i32.add 
	local.set	7
	local.get	4
	local.get	7
	i32.store	24
	local.get	3
	i32.load	12
	local.set	8
	local.get	8
	i32.load	0
	local.set	9
	local.get	3
	i32.load	12
	local.set	10
	local.get	10
	i32.load	8
	local.set	11
	i32.const	1
	local.set	12
	local.get	11
	local.get	12
	i32.add 
	local.set	13
	local.get	10
	local.get	13
	i32.store	8
	local.get	9
	local.get	11
	i32.add 
	local.set	14
	local.get	14
	i32.load8_u	0
	local.set	15
	i32.const	24
	local.set	16
	local.get	15
	local.get	16
	i32.shl 
	local.set	17
	local.get	17
	local.get	16
	i32.shr_s
	local.set	18
	local.get	18
	return
	end_function
.Lfunc_end6:
	.size	advance, .Lfunc_end6-advance
                                        # -- End function
	.section	.text.push,"",@
	.type	push,@function                  # -- Begin function push
push:                                   # @push
	.functype	push (i32, i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i64, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	64
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	global.set	__stack_pointer
	local.get	4
	local.get	0
	i32.store	60
	local.get	4
	local.get	1
	i32.store	56
	i32.const	.L.str.3
	local.set	5
	local.get	5
	call	sstring_from
	local.set	6
	local.get	4
	local.get	6
	i32.store	52
	local.get	4
	i32.load	52
	local.set	7
	local.get	4
	i32.load	60
	local.set	8
	local.get	8
	i32.load	0
	local.set	9
	local.get	4
	i32.load	60
	local.set	10
	local.get	10
	i32.load	12
	local.set	11
	local.get	9
	local.get	11
	i32.add 
	local.set	12
	local.get	4
	i32.load	60
	local.set	13
	local.get	13
	i32.load	8
	local.set	14
	local.get	4
	i32.load	60
	local.set	15
	local.get	15
	i32.load	12
	local.set	16
	local.get	14
	local.get	16
	i32.sub 
	local.set	17
	local.get	7
	local.get	12
	local.get	17
	call	sstring_catlen
	local.set	18
	local.get	4
	local.get	18
	i32.store	52
	local.get	4
	i32.load	60
	local.set	19
	local.get	19
	i32.load	20
	local.set	20
	local.get	4
	i32.load	60
	local.set	21
	local.get	21
	local.get	20
	i32.store	32
	local.get	4
	i32.load	60
	local.set	22
	local.get	22
	i32.load	24
	local.set	23
	local.get	4
	i32.load	60
	local.set	24
	local.get	24
	local.get	23
	i32.store	40
	local.get	4
	i32.load	60
	local.set	25
	local.get	25
	i32.load	16
	local.set	26
	local.get	4
	i32.load	56
	local.set	27
	local.get	4
	local.get	27
	i32.store	24
	local.get	4
	i32.load	52
	local.set	28
	local.get	4
	local.get	28
	i32.store	28
	i32.const	24
	local.set	29
	local.get	4
	local.get	29
	i32.add 
	local.set	30
	local.get	30
	local.set	31
	i32.const	8
	local.set	32
	local.get	31
	local.get	32
	i32.add 
	local.set	33
	local.get	4
	i32.load	60
	local.set	34
	i32.const	28
	local.set	35
	local.get	34
	local.get	35
	i32.add 
	local.set	36
	local.get	36
	i64.load	0:p2align=2
	local.set	37
	local.get	33
	local.get	37
	i64.store	0:p2align=2
	i32.const	8
	local.set	38
	local.get	33
	local.get	38
	i32.add 
	local.set	39
	local.get	36
	local.get	38
	i32.add 
	local.set	40
	local.get	40
	i64.load	0:p2align=2
	local.set	41
	local.get	39
	local.get	41
	i64.store	0:p2align=2
	i32.const	16
	local.set	42
	local.get	4
	local.get	42
	i32.add 
	local.set	43
	i32.const	24
	local.set	44
	local.get	4
	local.get	44
	i32.add 
	local.set	45
	local.get	45
	local.get	42
	i32.add 
	local.set	46
	local.get	46
	i64.load	0
	local.set	47
	local.get	43
	local.get	47
	i64.store	0
	i32.const	8
	local.set	48
	local.get	4
	local.get	48
	i32.add 
	local.set	49
	i32.const	24
	local.set	50
	local.get	4
	local.get	50
	i32.add 
	local.set	51
	local.get	51
	local.get	48
	i32.add 
	local.set	52
	local.get	52
	i64.load	0
	local.set	53
	local.get	49
	local.get	53
	i64.store	0
	local.get	4
	i64.load	24
	local.set	54
	local.get	4
	local.get	54
	i64.store	0
	local.get	26
	local.get	4
	call	tokenlist_push
	i32.const	64
	local.set	55
	local.get	4
	local.get	55
	i32.add 
	local.set	56
	local.get	56
	global.set	__stack_pointer
	return
	end_function
.Lfunc_end7:
	.size	push, .Lfunc_end7-push
                                        # -- End function
	.section	.text.handle_bang,"",@
	.type	handle_bang,@function           # -- Begin function handle_bang
handle_bang:                            # @handle_bang
	.functype	handle_bang (i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	i32.const	33
	local.set	5
	local.get	4
	local.get	5
	call	consume
	local.get	3
	i32.load	12
	local.set	6
	i32.const	0
	local.set	7
	local.get	6
	local.get	7
	call	peekn
	local.set	8
	i32.const	24
	local.set	9
	local.get	8
	local.get	9
	i32.shl 
	local.set	10
	local.get	10
	local.get	9
	i32.shr_s
	local.set	11
	i32.const	61
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
	block   	
	block   	
	local.get	17
	i32.eqz
	br_if   	0                               # 0: down to label33
# %bb.1:
	local.get	3
	i32.load	12
	local.set	18
	i32.const	61
	local.set	19
	local.get	18
	local.get	19
	call	consume
	local.get	3
	i32.load	12
	local.set	20
	i32.const	14
	local.set	21
	local.get	20
	local.get	21
	call	push
	br      	1                               # 1: down to label32
.LBB8_2:
	end_block                               # label33:
.LBB8_3:
	end_block                               # label32:
	i32.const	16
	local.set	22
	local.get	3
	local.get	22
	i32.add 
	local.set	23
	local.get	23
	global.set	__stack_pointer
	return
	end_function
.Lfunc_end8:
	.size	handle_bang, .Lfunc_end8-handle_bang
                                        # -- End function
	.section	.text.handle_left_angle,"",@
	.type	handle_left_angle,@function     # -- Begin function handle_left_angle
handle_left_angle:                      # @handle_left_angle
	.functype	handle_left_angle (i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	i32.const	60
	local.set	5
	local.get	4
	local.get	5
	call	consume
	local.get	3
	i32.load	12
	local.set	6
	i32.const	0
	local.set	7
	local.get	6
	local.get	7
	call	peekn
	local.set	8
	i32.const	24
	local.set	9
	local.get	8
	local.get	9
	i32.shl 
	local.set	10
	local.get	10
	local.get	9
	i32.shr_s
	local.set	11
	i32.const	61
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
	block   	
	block   	
	local.get	17
	i32.eqz
	br_if   	0                               # 0: down to label35
# %bb.1:
	local.get	3
	i32.load	12
	local.set	18
	local.get	18
	call	advance
	drop
	local.get	3
	i32.load	12
	local.set	19
	i32.const	18
	local.set	20
	local.get	19
	local.get	20
	call	push
	br      	1                               # 1: down to label34
.LBB9_2:
	end_block                               # label35:
	local.get	3
	i32.load	12
	local.set	21
	i32.const	16
	local.set	22
	local.get	21
	local.get	22
	call	push
.LBB9_3:
	end_block                               # label34:
	i32.const	16
	local.set	23
	local.get	3
	local.get	23
	i32.add 
	local.set	24
	local.get	24
	global.set	__stack_pointer
	return
	end_function
.Lfunc_end9:
	.size	handle_left_angle, .Lfunc_end9-handle_left_angle
                                        # -- End function
	.section	.text.handle_right_angle,"",@
	.type	handle_right_angle,@function    # -- Begin function handle_right_angle
handle_right_angle:                     # @handle_right_angle
	.functype	handle_right_angle (i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	i32.const	62
	local.set	5
	local.get	4
	local.get	5
	call	consume
	local.get	3
	i32.load	12
	local.set	6
	i32.const	0
	local.set	7
	local.get	6
	local.get	7
	call	peekn
	local.set	8
	i32.const	24
	local.set	9
	local.get	8
	local.get	9
	i32.shl 
	local.set	10
	local.get	10
	local.get	9
	i32.shr_s
	local.set	11
	i32.const	61
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
	block   	
	block   	
	local.get	17
	i32.eqz
	br_if   	0                               # 0: down to label37
# %bb.1:
	local.get	3
	i32.load	12
	local.set	18
	local.get	18
	call	advance
	drop
	local.get	3
	i32.load	12
	local.set	19
	i32.const	17
	local.set	20
	local.get	19
	local.get	20
	call	push
	br      	1                               # 1: down to label36
.LBB10_2:
	end_block                               # label37:
	local.get	3
	i32.load	12
	local.set	21
	i32.const	15
	local.set	22
	local.get	21
	local.get	22
	call	push
.LBB10_3:
	end_block                               # label36:
	i32.const	16
	local.set	23
	local.get	3
	local.get	23
	i32.add 
	local.set	24
	local.get	24
	global.set	__stack_pointer
	return
	end_function
.Lfunc_end10:
	.size	handle_right_angle, .Lfunc_end10-handle_right_angle
                                        # -- End function
	.section	.text.handle_colon,"",@
	.type	handle_colon,@function          # -- Begin function handle_colon
handle_colon:                           # @handle_colon
	.functype	handle_colon (i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	i32.const	58
	local.set	5
	local.get	4
	local.get	5
	call	consume
	local.get	3
	i32.load	12
	local.set	6
	i32.const	61
	local.set	7
	local.get	6
	local.get	7
	call	consume
	local.get	3
	i32.load	12
	local.set	8
	i32.const	19
	local.set	9
	local.get	8
	local.get	9
	call	push
	i32.const	16
	local.set	10
	local.get	3
	local.get	10
	i32.add 
	local.set	11
	local.get	11
	global.set	__stack_pointer
	return
	end_function
.Lfunc_end11:
	.size	handle_colon, .Lfunc_end11-handle_colon
                                        # -- End function
	.section	.text.handle_number,"",@
	.type	handle_number,@function         # -- Begin function handle_number
handle_number:                          # @handle_number
	.functype	handle_number (i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	call	set_start
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label39:
	local.get	3
	i32.load	12
	local.set	5
	i32.const	0
	local.set	6
	local.get	5
	local.get	6
	call	peekn
	local.set	7
	i32.const	24
	local.set	8
	local.get	7
	local.get	8
	i32.shl 
	local.set	9
	local.get	9
	local.get	8
	i32.shr_s
	local.set	10
	i32.const	48
	local.set	11
	local.get	10
	local.get	11
	i32.sub 
	local.set	12
	i32.const	10
	local.set	13
	local.get	12
	local.set	14
	local.get	13
	local.set	15
	local.get	14
	local.get	15
	i32.lt_u
	local.set	16
	i32.const	1
	local.set	17
	local.get	16
	local.get	17
	i32.and 
	local.set	18
	local.get	18
	i32.eqz
	br_if   	1                               # 1: down to label38
# %bb.2:                                #   in Loop: Header=BB12_1 Depth=1
	local.get	3
	i32.load	12
	local.set	19
	local.get	19
	call	advance
	drop
	br      	0                               # 0: up to label39
.LBB12_3:
	end_loop
	end_block                               # label38:
	local.get	3
	i32.load	12
	local.set	20
	i32.const	6
	local.set	21
	local.get	20
	local.get	21
	call	push
	i32.const	16
	local.set	22
	local.get	3
	local.get	22
	i32.add 
	local.set	23
	local.get	23
	global.set	__stack_pointer
	return
	end_function
.Lfunc_end12:
	.size	handle_number, .Lfunc_end12-handle_number
                                        # -- End function
	.section	.text.handle_double_quote,"",@
	.type	handle_double_quote,@function   # -- Begin function handle_double_quote
handle_double_quote:                    # @handle_double_quote
	.functype	handle_double_quote (i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	i32.const	34
	local.set	5
	local.get	4
	local.get	5
	call	consume
	local.get	3
	i32.load	12
	local.set	6
	local.get	6
	call	set_start
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label41:
	local.get	3
	i32.load	12
	local.set	7
	i32.const	0
	local.set	8
	local.get	7
	local.get	8
	call	peekn
	local.set	9
	i32.const	24
	local.set	10
	local.get	9
	local.get	10
	i32.shl 
	local.set	11
	local.get	11
	local.get	10
	i32.shr_s
	local.set	12
	i32.const	34
	local.set	13
	local.get	12
	local.set	14
	local.get	13
	local.set	15
	local.get	14
	local.get	15
	i32.ne  
	local.set	16
	i32.const	1
	local.set	17
	local.get	16
	local.get	17
	i32.and 
	local.set	18
	local.get	18
	i32.eqz
	br_if   	1                               # 1: down to label40
# %bb.2:                                #   in Loop: Header=BB13_1 Depth=1
	local.get	3
	i32.load	12
	local.set	19
	local.get	19
	call	advance
	drop
	br      	0                               # 0: up to label41
.LBB13_3:
	end_loop
	end_block                               # label40:
	local.get	3
	i32.load	12
	local.set	20
	i32.const	7
	local.set	21
	local.get	20
	local.get	21
	call	push
	local.get	3
	i32.load	12
	local.set	22
	i32.const	34
	local.set	23
	local.get	22
	local.get	23
	call	consume
	i32.const	16
	local.set	24
	local.get	3
	local.get	24
	i32.add 
	local.set	25
	local.get	25
	global.set	__stack_pointer
	return
	end_function
.Lfunc_end13:
	.size	handle_double_quote, .Lfunc_end13-handle_double_quote
                                        # -- End function
	.section	.text.handle_dot,"",@
	.type	handle_dot,@function            # -- Begin function handle_dot
handle_dot:                             # @handle_dot
	.functype	handle_dot (i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	i32.const	46
	local.set	5
	local.get	4
	local.get	5
	call	consume
	local.get	3
	i32.load	12
	local.set	6
	i32.const	46
	local.set	7
	local.get	6
	local.get	7
	call	consume
	local.get	3
	i32.load	12
	local.set	8
	i32.const	33
	local.set	9
	local.get	8
	local.get	9
	call	push
	i32.const	16
	local.set	10
	local.get	3
	local.get	10
	i32.add 
	local.set	11
	local.get	11
	global.set	__stack_pointer
	return
	end_function
.Lfunc_end14:
	.size	handle_dot, .Lfunc_end14-handle_dot
                                        # -- End function
	.section	.text.handle_identifier,"",@
	.type	handle_identifier,@function     # -- Begin function handle_identifier
handle_identifier:                      # @handle_identifier
	.functype	handle_identifier (i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	i32.const	0
	local.set	4
	local.get	3
	local.get	4
	i32.store	8
.LBB15_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	block   	
	loop    	                                # label44:
	local.get	3
	i32.load	8
	local.set	5
	i32.const	12
	local.set	6
	local.get	5
	local.set	7
	local.get	6
	local.set	8
	local.get	7
	local.get	8
	i32.lt_u
	local.set	9
	i32.const	1
	local.set	10
	local.get	9
	local.get	10
	i32.and 
	local.set	11
	local.get	11
	i32.eqz
	br_if   	1                               # 1: down to label43
# %bb.2:                                #   in Loop: Header=BB15_1 Depth=1
	local.get	3
	i32.load	12
	local.set	12
	local.get	12
	i32.load	0
	local.set	13
	local.get	3
	i32.load	12
	local.set	14
	local.get	14
	i32.load	8
	local.set	15
	local.get	13
	local.get	15
	i32.add 
	local.set	16
	local.get	3
	i32.load	8
	local.set	17
	i32.const	handle_identifier.keywords
	local.set	18
	i32.const	3
	local.set	19
	local.get	17
	local.get	19
	i32.shl 
	local.set	20
	local.get	18
	local.get	20
	i32.add 
	local.set	21
	local.get	21
	i32.load	0
	local.set	22
	local.get	3
	i32.load	8
	local.set	23
	i32.const	handle_identifier.keywords
	local.set	24
	i32.const	3
	local.set	25
	local.get	23
	local.get	25
	i32.shl 
	local.set	26
	local.get	24
	local.get	26
	i32.add 
	local.set	27
	local.get	27
	i32.load	0
	local.set	28
	local.get	28
	call	strlen
	local.set	29
	local.get	16
	local.get	22
	local.get	29
	call	strncmp
	local.set	30
	block   	
	block   	
	local.get	30
	br_if   	0                               # 0: down to label46
# %bb.3:                                #   in Loop: Header=BB15_1 Depth=1
	local.get	3
	i32.load	8
	local.set	31
	i32.const	handle_identifier.keywords
	local.set	32
	i32.const	3
	local.set	33
	local.get	31
	local.get	33
	i32.shl 
	local.set	34
	local.get	32
	local.get	34
	i32.add 
	local.set	35
	local.get	35
	i32.load	0
	local.set	36
	local.get	36
	call	strlen
	local.set	37
	local.get	3
	local.get	37
	i32.store	4
	local.get	3
	i32.load	12
	local.set	38
	local.get	38
	i32.load	0
	local.set	39
	local.get	3
	i32.load	12
	local.set	40
	local.get	40
	i32.load	8
	local.set	41
	local.get	3
	i32.load	4
	local.set	42
	local.get	41
	local.get	42
	i32.add 
	local.set	43
	local.get	39
	local.get	43
	i32.add 
	local.set	44
	local.get	44
	i32.load8_u	0
	local.set	45
	i32.const	24
	local.set	46
	local.get	45
	local.get	46
	i32.shl 
	local.set	47
	local.get	47
	local.get	46
	i32.shr_s
	local.set	48
	local.get	48
	call	isalnum
	local.set	49
	block   	
	block   	
	local.get	49
	br_if   	0                               # 0: down to label48
# %bb.4:                                #   in Loop: Header=BB15_1 Depth=1
	local.get	3
	i32.load	12
	local.set	50
	local.get	50
	i32.load	0
	local.set	51
	local.get	3
	i32.load	12
	local.set	52
	local.get	52
	i32.load	8
	local.set	53
	local.get	3
	i32.load	4
	local.set	54
	local.get	53
	local.get	54
	i32.add 
	local.set	55
	local.get	51
	local.get	55
	i32.add 
	local.set	56
	local.get	56
	i32.load8_u	0
	local.set	57
	i32.const	24
	local.set	58
	local.get	57
	local.get	58
	i32.shl 
	local.set	59
	local.get	59
	local.get	58
	i32.shr_s
	local.set	60
	i32.const	95
	local.set	61
	local.get	60
	local.set	62
	local.get	61
	local.set	63
	local.get	62
	local.get	63
	i32.eq  
	local.set	64
	i32.const	1
	local.set	65
	local.get	64
	local.get	65
	i32.and 
	local.set	66
	local.get	66
	i32.eqz
	br_if   	1                               # 1: down to label47
.LBB15_5:                               #   in Loop: Header=BB15_1 Depth=1
	end_block                               # label48:
	br      	2                               # 2: down to label45
.LBB15_6:
	end_block                               # label47:
	local.get	3
	i32.load	12
	local.set	67
	local.get	3
	i32.load	8
	local.set	68
	i32.const	handle_identifier.keywords
	local.set	69
	i32.const	3
	local.set	70
	local.get	68
	local.get	70
	i32.shl 
	local.set	71
	local.get	69
	local.get	71
	i32.add 
	local.set	72
	local.get	72
	i32.load	4
	local.set	73
	local.get	67
	local.get	73
	call	push
	local.get	3
	i32.load	8
	local.set	74
	i32.const	handle_identifier.keywords
	local.set	75
	i32.const	3
	local.set	76
	local.get	74
	local.get	76
	i32.shl 
	local.set	77
	local.get	75
	local.get	77
	i32.add 
	local.set	78
	local.get	78
	i32.load	0
	local.set	79
	local.get	79
	call	strlen
	local.set	80
	local.get	3
	i32.load	12
	local.set	81
	local.get	81
	i32.load	8
	local.set	82
	local.get	82
	local.get	80
	i32.add 
	local.set	83
	local.get	81
	local.get	83
	i32.store	8
	br      	4                               # 4: down to label42
.LBB15_7:                               #   in Loop: Header=BB15_1 Depth=1
	end_block                               # label46:
.LBB15_8:                               #   in Loop: Header=BB15_1 Depth=1
	end_block                               # label45:
	local.get	3
	i32.load	8
	local.set	84
	i32.const	1
	local.set	85
	local.get	84
	local.get	85
	i32.add 
	local.set	86
	local.get	3
	local.get	86
	i32.store	8
	br      	0                               # 0: up to label44
.LBB15_9:
	end_loop
	end_block                               # label43:
.LBB15_10:                              # =>This Inner Loop Header: Depth=1
	loop    	                                # label49:
	local.get	3
	i32.load	12
	local.set	87
	i32.const	0
	local.set	88
	local.get	87
	local.get	88
	call	peekn
	local.set	89
	i32.const	24
	local.set	90
	local.get	89
	local.get	90
	i32.shl 
	local.set	91
	local.get	91
	local.get	90
	i32.shr_s
	local.set	92
	i32.const	95
	local.set	93
	local.get	92
	local.set	94
	local.get	93
	local.set	95
	local.get	94
	local.get	95
	i32.eq  
	local.set	96
	i32.const	1
	local.set	97
	i32.const	1
	local.set	98
	local.get	96
	local.get	98
	i32.and 
	local.set	99
	local.get	97
	local.set	100
	block   	
	local.get	99
	br_if   	0                               # 0: down to label50
# %bb.11:                               #   in Loop: Header=BB15_10 Depth=1
	local.get	3
	i32.load	12
	local.set	101
	i32.const	0
	local.set	102
	local.get	101
	local.get	102
	call	peekn
	local.set	103
	i32.const	24
	local.set	104
	local.get	103
	local.get	104
	i32.shl 
	local.set	105
	local.get	105
	local.get	104
	i32.shr_s
	local.set	106
	i32.const	32
	local.set	107
	local.get	106
	local.get	107
	i32.or  
	local.set	108
	i32.const	97
	local.set	109
	local.get	108
	local.get	109
	i32.sub 
	local.set	110
	i32.const	26
	local.set	111
	local.get	110
	local.set	112
	local.get	111
	local.set	113
	local.get	112
	local.get	113
	i32.lt_u
	local.set	114
	local.get	114
	local.set	100
.LBB15_12:                              #   in Loop: Header=BB15_10 Depth=1
	end_block                               # label50:
	local.get	100
	local.set	115
	i32.const	1
	local.set	116
	local.get	115
	local.get	116
	i32.and 
	local.set	117
	block   	
	local.get	117
	i32.eqz
	br_if   	0                               # 0: down to label51
# %bb.13:                               #   in Loop: Header=BB15_10 Depth=1
	local.get	3
	i32.load	12
	local.set	118
	local.get	118
	call	advance
	drop
	br      	1                               # 1: up to label49
.LBB15_14:
	end_block                               # label51:
	end_loop
	local.get	3
	i32.load	12
	local.set	119
	i32.const	5
	local.set	120
	local.get	119
	local.get	120
	call	push
.LBB15_15:
	end_block                               # label42:
	i32.const	16
	local.set	121
	local.get	3
	local.get	121
	i32.add 
	local.set	122
	local.get	122
	global.set	__stack_pointer
	return
	end_function
.Lfunc_end15:
	.size	handle_identifier, .Lfunc_end15-handle_identifier
                                        # -- End function
	.section	.text.consume,"",@
	.type	consume,@function               # -- Begin function consume
consume:                                # @consume
	.functype	consume (i32, i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	32
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	global.set	__stack_pointer
	local.get	4
	local.get	0
	i32.store	28
	local.get	4
	local.get	1
	i32.store	24
# %bb.1:
	local.get	4
	i32.load	28
	local.set	5
	i32.const	0
	local.set	6
	local.get	5
	local.get	6
	call	peekn
	local.set	7
	i32.const	24
	local.set	8
	local.get	7
	local.get	8
	i32.shl 
	local.set	9
	local.get	9
	local.get	8
	i32.shr_s
	local.set	10
	local.get	4
	i32.load	24
	local.set	11
	local.get	10
	local.set	12
	local.get	11
	local.set	13
	local.get	12
	local.get	13
	i32.eq  
	local.set	14
	i32.const	1
	local.set	15
	local.get	14
	local.get	15
	i32.and 
	local.set	16
	block   	
	local.get	16
	br_if   	0                               # 0: down to label52
# %bb.2:
	i32.const	0
	local.set	17
	local.get	17
	i32.load	stderr
	local.set	18
	i32.const	.L.str.5
	local.set	19
	local.get	4
	local.get	19
	i32.store	8
	i32.const	63
	local.set	20
	local.get	4
	local.get	20
	i32.store	4
	i32.const	.L.str.1
	local.set	21
	local.get	4
	local.get	21
	i32.store	0
	i32.const	.L.str.4
	local.set	22
	local.get	18
	local.get	22
	local.get	4
	call	fprintf
	drop
	i32.const	1
	local.set	23
	local.get	23
	call	exit
	unreachable
.LBB16_3:
	end_block                               # label52:
# %bb.4:
	local.get	4
	i32.load	28
	local.set	24
	local.get	24
	call	advance
	drop
	i32.const	32
	local.set	25
	local.get	4
	local.get	25
	i32.add 
	local.set	26
	local.get	26
	global.set	__stack_pointer
	return
	end_function
.Lfunc_end16:
	.size	consume, .Lfunc_end16-consume
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata..L.str,"S",@
.L.str:
	.asciz	"die at %s:%d: "
	.size	.L.str, 15

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata..L.str.1,"S",@
.L.str.1:
	.asciz	"../src/lexer.c"
	.size	.L.str.1, 15

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata..L.str.2,"S",@
.L.str.2:
	.asciz	"Unexpected character near %4s\n"
	.size	.L.str.2, 31

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata..L.str.3,"S",@
.L.str.3:
	.skip	1
	.size	.L.str.3, 1

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata..L.str.4,"S",@
.L.str.4:
	.asciz	"expect at %s:%d: %s\n"
	.size	.L.str.4, 21

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata..L.str.5,"S",@
.L.str.5:
	.asciz	"peek(l) == ch"
	.size	.L.str.5, 14

	.type	handle_identifier.keywords,@object # @handle_identifier.keywords
	.section	.rodata.handle_identifier.keywords,"",@
	.p2align	4
handle_identifier.keywords:
	.int32	.L.str.6
	.int32	30                              # 0x1e
	.int32	.L.str.7
	.int32	32                              # 0x20
	.int32	.L.str.8
	.int32	0                               # 0x0
	.int32	.L.str.9
	.int32	24                              # 0x18
	.int32	.L.str.10
	.int32	23                              # 0x17
	.int32	.L.str.11
	.int32	25                              # 0x19
	.int32	.L.str.12
	.int32	28                              # 0x1c
	.int32	.L.str.13
	.int32	29                              # 0x1d
	.int32	.L.str.14
	.int32	27                              # 0x1b
	.int32	.L.str.15
	.int32	26                              # 0x1a
	.int32	.L.str.16
	.int32	21                              # 0x15
	.int32	.L.str.17
	.int32	31                              # 0x1f
	.size	handle_identifier.keywords, 96

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata..L.str.6,"S",@
.L.str.6:
	.asciz	"while"
	.size	.L.str.6, 6

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata..L.str.7,"S",@
.L.str.7:
	.asciz	"print"
	.size	.L.str.7, 6

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata..L.str.8,"S",@
.L.str.8:
	.asciz	"let"
	.size	.L.str.8, 4

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata..L.str.9,"S",@
.L.str.9:
	.asciz	"false"
	.size	.L.str.9, 6

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata..L.str.10,"S",@
.L.str.10:
	.asciz	"true"
	.size	.L.str.10, 5

	.type	.L.str.11,@object               # @.str.11
	.section	.rodata..L.str.11,"S",@
.L.str.11:
	.asciz	"nil"
	.size	.L.str.11, 4

	.type	.L.str.12,@object               # @.str.12
	.section	.rodata..L.str.12,"S",@
.L.str.12:
	.asciz	"if"
	.size	.L.str.12, 3

	.type	.L.str.13,@object               # @.str.13
	.section	.rodata..L.str.13,"S",@
.L.str.13:
	.asciz	"else"
	.size	.L.str.13, 5

	.type	.L.str.14,@object               # @.str.14
	.section	.rodata..L.str.14,"S",@
.L.str.14:
	.asciz	"and"
	.size	.L.str.14, 4

	.type	.L.str.15,@object               # @.str.15
	.section	.rodata..L.str.15,"S",@
.L.str.15:
	.asciz	"or"
	.size	.L.str.15, 3

	.type	.L.str.16,@object               # @.str.16
	.section	.rodata..L.str.16,"S",@
.L.str.16:
	.asciz	"not"
	.size	.L.str.16, 4

	.type	.L.str.17,@object               # @.str.17
	.section	.rodata..L.str.17,"S",@
.L.str.17:
	.asciz	"subroutine"
	.size	.L.str.17, 11

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
	.section	.rodata..L.str.17,"S",@
