	.text
	.file	"eval.c"
	.section	.text.ast_or_eval,"",@
	.hidden	ast_or_eval                     # -- Begin function ast_or_eval
	.globl	ast_or_eval
	.globaltype	__stack_pointer, i32
	.functype	sobject_istrue (i32) -> (i32)
	.functype	sobject_new (i32) -> (i32)
	.functype	generic_error (i32, i32, i32, i32) -> ()
	.functype	tokentype_str (i32) -> (i32)
	.functype	sobject_isequal (i32, i32) -> (i32)
	.functype	sstring_from (i32) -> (i32)
	.functype	sobject_to_string (i32) -> (i32)
	.functype	sstring_cat (i32, i32) -> (i32)
	.functype	env_lookup (i32, i32) -> (i32)
	.functype	strtod (i32, i32) -> (f64)
	.functype	env_define (i32, i32, i32) -> ()
	.functype	env_assign (i32, i32, i32) -> ()
	.functype	env_new (i32) -> (i32)
	.functype	env_free (i32) -> ()
	.functype	printf (i32, i32) -> (i32)
	.type	ast_or_eval,@function
ast_or_eval:                            # @ast_or_eval
	.functype	ast_or_eval (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	i32.store	8
	local.get	4
	local.get	1
	i32.store	4
	local.get	4
	i32.load	8
	local.set	5
	local.get	5
	i32.load	8
	local.set	6
	local.get	4
	i32.load	4
	local.set	7
	local.get	6
	local.get	7
	call	ast_eval
	local.set	8
	local.get	4
	local.get	8
	i32.store	0
	local.get	4
	i32.load	0
	local.set	9
	local.get	9
	call	sobject_istrue
	local.set	10
	i32.const	1
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	block   	
	block   	
	local.get	12
	i32.eqz
	br_if   	0                               # 0: down to label1
# %bb.1:
	local.get	4
	i32.load	0
	local.set	13
	local.get	4
	local.get	13
	i32.store	12
	br      	1                               # 1: down to label0
.LBB0_2:
	end_block                               # label1:
	local.get	4
	i32.load	8
	local.set	14
	local.get	14
	i32.load	12
	local.set	15
	local.get	4
	i32.load	4
	local.set	16
	local.get	15
	local.get	16
	call	ast_eval
	local.set	17
	local.get	4
	local.get	17
	i32.store	12
.LBB0_3:
	end_block                               # label0:
	local.get	4
	i32.load	12
	local.set	18
	i32.const	16
	local.set	19
	local.get	4
	local.get	19
	i32.add 
	local.set	20
	local.get	20
	global.set	__stack_pointer
	local.get	18
	return
	end_function
.Lfunc_end0:
	.size	ast_or_eval, .Lfunc_end0-ast_or_eval
                                        # -- End function
	.section	.text.ast_eval,"",@
	.hidden	ast_eval                        # -- Begin function ast_eval
	.globl	ast_eval
	.type	ast_eval,@function
ast_eval:                               # @ast_eval
	.functype	ast_eval (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	i32.store	8
	local.get	4
	local.get	1
	i32.store	4
	local.get	4
	i32.load	8
	local.set	5
	local.get	5
	i32.load	0
	local.set	6
	i32.const	13
	local.set	7
	local.get	6
	local.get	7
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
	local.get	6
	br_table 	{2, 3, 1, 0, 6, 5, 4, 7, 8, 9, 10, 11, 13, 12, 14} # 3: down to label13
                                        # 1: down to label15
                                        # 0: down to label16
                                        # 6: down to label10
                                        # 5: down to label11
                                        # 4: down to label12
                                        # 7: down to label9
                                        # 8: down to label8
                                        # 9: down to label7
                                        # 10: down to label6
                                        # 11: down to label5
                                        # 13: down to label3
                                        # 12: down to label4
                                        # 14: down to label2
.LBB1_1:
	end_block                               # label16:
	local.get	4
	i32.load	8
	local.set	8
	local.get	4
	i32.load	4
	local.set	9
	local.get	8
	local.get	9
	call	ast_binary_eval
	local.set	10
	local.get	4
	local.get	10
	i32.store	12
	br      	13                              # 13: down to label2
.LBB1_2:
	end_block                               # label15:
	local.get	4
	i32.load	8
	local.set	11
	local.get	4
	i32.load	4
	local.set	12
	local.get	11
	local.get	12
	call	ast_unary_eval
	local.set	13
	local.get	4
	local.get	13
	i32.store	12
	br      	12                              # 12: down to label2
.LBB1_3:
	end_block                               # label14:
	local.get	4
	i32.load	8
	local.set	14
	local.get	4
	i32.load	4
	local.set	15
	local.get	14
	local.get	15
	call	ast_or_eval
	local.set	16
	local.get	4
	local.get	16
	i32.store	12
	br      	11                              # 11: down to label2
.LBB1_4:
	end_block                               # label13:
	local.get	4
	i32.load	8
	local.set	17
	local.get	4
	i32.load	4
	local.set	18
	local.get	17
	local.get	18
	call	ast_and_eval
	local.set	19
	local.get	4
	local.get	19
	i32.store	12
	br      	10                              # 10: down to label2
.LBB1_5:
	end_block                               # label12:
	local.get	4
	i32.load	8
	local.set	20
	local.get	4
	i32.load	4
	local.set	21
	local.get	20
	local.get	21
	call	ast_literal_eval
	local.set	22
	local.get	4
	local.get	22
	i32.store	12
	br      	9                               # 9: down to label2
.LBB1_6:
	end_block                               # label11:
	local.get	4
	i32.load	8
	local.set	23
	local.get	4
	i32.load	4
	local.set	24
	local.get	23
	local.get	24
	call	ast_assignment_eval
	local.set	25
	local.get	4
	local.get	25
	i32.store	12
	br      	8                               # 8: down to label2
.LBB1_7:
	end_block                               # label10:
	local.get	4
	i32.load	8
	local.set	26
	local.get	4
	i32.load	4
	local.set	27
	local.get	26
	local.get	27
	call	ast_declaration_eval
	local.set	28
	local.get	4
	local.get	28
	i32.store	12
	br      	7                               # 7: down to label2
.LBB1_8:
	end_block                               # label9:
	local.get	4
	i32.load	8
	local.set	29
	local.get	4
	i32.load	4
	local.set	30
	local.get	29
	local.get	30
	call	ast_variable_eval
	local.set	31
	local.get	4
	local.get	31
	i32.store	12
	br      	6                               # 6: down to label2
.LBB1_9:
	end_block                               # label8:
	local.get	4
	i32.load	8
	local.set	32
	local.get	4
	i32.load	4
	local.set	33
	local.get	32
	local.get	33
	call	ast_if_eval
	local.set	34
	local.get	4
	local.get	34
	i32.store	12
	br      	5                               # 5: down to label2
.LBB1_10:
	end_block                               # label7:
	local.get	4
	i32.load	8
	local.set	35
	local.get	4
	i32.load	4
	local.set	36
	local.get	35
	local.get	36
	call	ast_while_eval
	local.set	37
	local.get	4
	local.get	37
	i32.store	12
	br      	4                               # 4: down to label2
.LBB1_11:
	end_block                               # label6:
	local.get	4
	i32.load	8
	local.set	38
	local.get	4
	i32.load	4
	local.set	39
	local.get	38
	local.get	39
	call	ast_block_eval
	local.set	40
	local.get	4
	local.get	40
	i32.store	12
	br      	3                               # 3: down to label2
.LBB1_12:
	end_block                               # label5:
	local.get	4
	i32.load	8
	local.set	41
	local.get	4
	i32.load	4
	local.set	42
	local.get	41
	local.get	42
	call	ast_function_eval
	local.set	43
	local.get	4
	local.get	43
	i32.store	12
	br      	2                               # 2: down to label2
.LBB1_13:
	end_block                               # label4:
	local.get	4
	i32.load	8
	local.set	44
	local.get	4
	i32.load	4
	local.set	45
	local.get	44
	local.get	45
	call	ast_print_eval
	local.set	46
	local.get	4
	local.get	46
	i32.store	12
	br      	1                               # 1: down to label2
.LBB1_14:
	end_block                               # label3:
	local.get	4
	i32.load	8
	local.set	47
	local.get	4
	i32.load	4
	local.set	48
	local.get	47
	local.get	48
	call	ast_call_eval
	local.set	49
	local.get	4
	local.get	49
	i32.store	12
.LBB1_15:
	end_block                               # label2:
	local.get	4
	i32.load	12
	local.set	50
	i32.const	16
	local.set	51
	local.get	4
	local.get	51
	i32.add 
	local.set	52
	local.get	52
	global.set	__stack_pointer
	local.get	50
	return
	end_function
.Lfunc_end1:
	.size	ast_eval, .Lfunc_end1-ast_eval
                                        # -- End function
	.section	.text.ast_and_eval,"",@
	.hidden	ast_and_eval                    # -- Begin function ast_and_eval
	.globl	ast_and_eval
	.type	ast_and_eval,@function
ast_and_eval:                           # @ast_and_eval
	.functype	ast_and_eval (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	i32.store	8
	local.get	4
	local.get	1
	i32.store	4
	local.get	4
	i32.load	8
	local.set	5
	local.get	5
	i32.load	8
	local.set	6
	local.get	4
	i32.load	4
	local.set	7
	local.get	6
	local.get	7
	call	ast_eval
	local.set	8
	local.get	4
	local.get	8
	i32.store	0
	local.get	4
	i32.load	0
	local.set	9
	local.get	9
	call	sobject_istrue
	local.set	10
	i32.const	1
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	block   	
	block   	
	local.get	12
	br_if   	0                               # 0: down to label18
# %bb.1:
	local.get	4
	i32.load	0
	local.set	13
	local.get	4
	local.get	13
	i32.store	12
	br      	1                               # 1: down to label17
.LBB2_2:
	end_block                               # label18:
	local.get	4
	i32.load	8
	local.set	14
	local.get	14
	i32.load	12
	local.set	15
	local.get	4
	i32.load	4
	local.set	16
	local.get	15
	local.get	16
	call	ast_eval
	local.set	17
	local.get	4
	local.get	17
	i32.store	12
.LBB2_3:
	end_block                               # label17:
	local.get	4
	i32.load	12
	local.set	18
	i32.const	16
	local.set	19
	local.get	4
	local.get	19
	i32.add 
	local.set	20
	local.get	20
	global.set	__stack_pointer
	local.get	18
	return
	end_function
.Lfunc_end2:
	.size	ast_and_eval, .Lfunc_end2-ast_and_eval
                                        # -- End function
	.section	.text.ast_unary_eval,"",@
	.hidden	ast_unary_eval                  # -- Begin function ast_unary_eval
	.globl	ast_unary_eval
	.type	ast_unary_eval,@function
ast_unary_eval:                         # @ast_unary_eval
	.functype	ast_unary_eval (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, f64, f64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, f64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	144
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	global.set	__stack_pointer
	local.get	4
	local.get	0
	i32.store	136
	local.get	4
	local.get	1
	i32.store	132
	local.get	4
	i32.load	136
	local.set	5
	i32.const	32
	local.set	6
	local.get	5
	local.get	6
	i32.add 
	local.set	7
	local.get	7
	i32.load	0
	local.set	8
	local.get	4
	i32.load	132
	local.set	9
	local.get	8
	local.get	9
	call	ast_eval
	local.set	10
	local.get	4
	local.get	10
	i32.store	128
	local.get	4
	i32.load	136
	local.set	11
	local.get	11
	i32.load	8
	local.set	12
	i32.const	-8
	local.set	13
	local.get	12
	local.get	13
	i32.add 
	local.set	14
	i32.const	1
	local.set	15
	local.get	14
	local.get	15
	i32.gt_u
	drop
	block   	
	block   	
	block   	
	block   	
	block   	
	local.get	14
	br_table 	{1, 0, 2}               # 0: down to label23
                                        # 2: down to label21
.LBB3_1:
	end_block                               # label23:
	local.get	4
	i32.load	128
	local.set	16
	local.get	16
	i32.load	0
	local.set	17
	i32.const	3
	local.set	18
	local.get	17
	local.set	19
	local.get	18
	local.set	20
	local.get	19
	local.get	20
	i32.eq  
	local.set	21
	i32.const	1
	local.set	22
	local.get	21
	local.get	22
	i32.and 
	local.set	23
	block   	
	local.get	23
	i32.eqz
	br_if   	0                               # 0: down to label24
# %bb.2:
	i32.const	3
	local.set	24
	local.get	4
	local.get	24
	i32.store	112
	local.get	4
	i32.load	128
	local.set	25
	local.get	25
	f64.load	8
	local.set	26
	local.get	26
	f64.neg 
	local.set	27
	local.get	4
	local.get	27
	f64.store	120
	i32.const	8
	local.set	28
	i32.const	32
	local.set	29
	local.get	4
	local.get	29
	i32.add 
	local.set	30
	local.get	30
	local.get	28
	i32.add 
	local.set	31
	i32.const	112
	local.set	32
	local.get	4
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
	local.get	4
	i64.load	112
	local.set	36
	local.get	4
	local.get	36
	i64.store	32
	i32.const	32
	local.set	37
	local.get	4
	local.get	37
	i32.add 
	local.set	38
	local.get	38
	call	sobject_new
	local.set	39
	local.get	4
	local.get	39
	i32.store	140
	br      	4                               # 4: down to label19
.LBB3_3:
	end_block                               # label24:
	br      	2                               # 2: down to label20
.LBB3_4:
	end_block                               # label22:
	local.get	4
	i32.load	128
	local.set	40
	local.get	40
	i32.load	0
	local.set	41
	i32.const	3
	local.set	42
	local.get	41
	local.set	43
	local.get	42
	local.set	44
	local.get	43
	local.get	44
	i32.eq  
	local.set	45
	i32.const	1
	local.set	46
	local.get	45
	local.get	46
	i32.and 
	local.set	47
	block   	
	local.get	47
	i32.eqz
	br_if   	0                               # 0: down to label25
# %bb.5:
	i32.const	3
	local.set	48
	local.get	4
	local.get	48
	i32.store	96
	local.get	4
	i32.load	128
	local.set	49
	local.get	49
	f64.load	8
	local.set	50
	local.get	4
	local.get	50
	f64.store	104
	i32.const	8
	local.set	51
	i32.const	64
	local.set	52
	local.get	4
	local.get	52
	i32.add 
	local.set	53
	local.get	53
	local.get	51
	i32.add 
	local.set	54
	i32.const	96
	local.set	55
	local.get	4
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
	local.get	4
	i64.load	96
	local.set	59
	local.get	4
	local.get	59
	i64.store	64
	i32.const	64
	local.set	60
	local.get	4
	local.get	60
	i32.add 
	local.set	61
	local.get	61
	call	sobject_new
	local.set	62
	local.get	4
	local.get	62
	i32.store	140
	br      	3                               # 3: down to label19
.LBB3_6:
	end_block                               # label25:
	br      	1                               # 1: down to label20
.LBB3_7:
	end_block                               # label21:
	local.get	4
	i32.load	136
	local.set	63
	i32.const	8
	local.set	64
	local.get	63
	local.get	64
	i32.add 
	local.set	65
	local.get	4
	i32.load	136
	local.set	66
	local.get	66
	i32.load	12
	local.set	67
	local.get	67
	call	tokentype_str
	local.set	68
	i32.const	16
	local.set	69
	local.get	65
	local.get	69
	i32.add 
	local.set	70
	local.get	70
	i64.load	0:p2align=2
	local.set	71
	i32.const	8
	local.set	72
	local.get	4
	local.get	72
	i32.add 
	local.set	73
	local.get	73
	local.get	69
	i32.add 
	local.set	74
	local.get	74
	local.get	71
	i64.store	0
	i32.const	8
	local.set	75
	local.get	65
	local.get	75
	i32.add 
	local.set	76
	local.get	76
	i64.load	0:p2align=2
	local.set	77
	i32.const	8
	local.set	78
	local.get	4
	local.get	78
	i32.add 
	local.set	79
	local.get	79
	local.get	75
	i32.add 
	local.set	80
	local.get	80
	local.get	77
	i64.store	0
	local.get	65
	i64.load	0:p2align=2
	local.set	81
	local.get	4
	local.get	81
	i64.store	8
	local.get	4
	local.get	68
	i32.store	0
	i32.const	.L.str.1
	local.set	82
	i32.const	.L.str
	local.set	83
	i32.const	8
	local.set	84
	local.get	4
	local.get	84
	i32.add 
	local.set	85
	local.get	83
	local.get	85
	local.get	82
	local.get	4
	call	generic_error
	unreachable
.LBB3_8:
	end_block                               # label20:
	i32.const	0
	local.set	86
	local.get	4
	local.get	86
	i32.store	80
	i32.const	80
	local.set	87
	local.get	4
	local.get	87
	i32.add 
	local.set	88
	local.get	88
	local.set	89
	i32.const	8
	local.set	90
	local.get	89
	local.get	90
	i32.add 
	local.set	91
	i64.const	0
	local.set	92
	local.get	91
	local.get	92
	i64.store	0
	i32.const	8
	local.set	93
	i32.const	48
	local.set	94
	local.get	4
	local.get	94
	i32.add 
	local.set	95
	local.get	95
	local.get	93
	i32.add 
	local.set	96
	i32.const	80
	local.set	97
	local.get	4
	local.get	97
	i32.add 
	local.set	98
	local.get	98
	local.get	93
	i32.add 
	local.set	99
	local.get	99
	i64.load	0
	local.set	100
	local.get	96
	local.get	100
	i64.store	0
	local.get	4
	i64.load	80
	local.set	101
	local.get	4
	local.get	101
	i64.store	48
	i32.const	48
	local.set	102
	local.get	4
	local.get	102
	i32.add 
	local.set	103
	local.get	103
	call	sobject_new
	local.set	104
	local.get	4
	local.get	104
	i32.store	140
.LBB3_9:
	end_block                               # label19:
	local.get	4
	i32.load	140
	local.set	105
	i32.const	144
	local.set	106
	local.get	4
	local.get	106
	i32.add 
	local.set	107
	local.get	107
	global.set	__stack_pointer
	local.get	105
	return
	end_function
.Lfunc_end3:
	.size	ast_unary_eval, .Lfunc_end3-ast_unary_eval
                                        # -- End function
	.section	.text.ast_binary_eval,"",@
	.hidden	ast_binary_eval                 # -- Begin function ast_binary_eval
	.globl	ast_binary_eval
	.type	ast_binary_eval,@function
ast_binary_eval:                        # @ast_binary_eval
	.functype	ast_binary_eval (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, f64, i32, f64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, f64, i32, f64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, f64, i32, f64, f64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, f64, i32, f64, f64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, f64, i32, f64, f64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, f64, i32, f64, f64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, f64, i32, f64, f64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, f64, i32, f64, f64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	464
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	global.set	__stack_pointer
	local.get	4
	local.get	0
	i32.store	456
	local.get	4
	local.get	1
	i32.store	452
	local.get	4
	i32.load	456
	local.set	5
	local.get	5
	i32.load	8
	local.set	6
	local.get	4
	i32.load	452
	local.set	7
	local.get	6
	local.get	7
	call	ast_eval
	local.set	8
	local.get	4
	local.get	8
	i32.store	448
	local.get	4
	i32.load	456
	local.set	9
	i32.const	36
	local.set	10
	local.get	9
	local.get	10
	i32.add 
	local.set	11
	local.get	11
	i32.load	0
	local.set	12
	local.get	4
	i32.load	452
	local.set	13
	local.get	12
	local.get	13
	call	ast_eval
	local.set	14
	local.get	4
	local.get	14
	i32.store	444
	i32.const	0
	local.set	15
	local.get	4
	local.get	15
	i32.store	440
	local.get	4
	i32.load	456
	local.set	16
	i32.const	12
	local.set	17
	local.get	16
	local.get	17
	i32.add 
	local.set	18
	local.get	18
	i32.load	0
	local.set	19
	i32.const	-8
	local.set	20
	local.get	19
	local.get	20
	i32.add 
	local.set	21
	i32.const	25
	local.set	22
	local.get	21
	local.get	22
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
	local.get	21
	br_table 	{4, 6, 7, 8, 9, 0, 1, 11, 11, 3, 2, 11, 11, 11, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 5, 11} # 6: down to label33
                                        # 7: down to label32
                                        # 8: down to label31
                                        # 9: down to label30
                                        # 0: down to label39
                                        # 1: down to label38
                                        # 11: down to label28
                                        # 3: down to label36
                                        # 2: down to label37
                                        # 10: down to label29
                                        # 5: down to label34
.LBB4_1:
	end_block                               # label39:
	local.get	4
	i32.load	448
	local.set	23
	local.get	4
	i32.load	444
	local.set	24
	local.get	23
	local.get	24
	call	sobject_isequal
	local.set	25
	i32.const	2
	local.set	26
	i32.const	1
	local.set	27
	i32.const	1
	local.set	28
	local.get	25
	local.get	28
	i32.and 
	local.set	29
	local.get	26
	local.get	27
	local.get	29
	i32.select
	local.set	30
	local.get	4
	local.get	30
	i32.store	424
	i32.const	424
	local.set	31
	local.get	4
	local.get	31
	i32.add 
	local.set	32
	local.get	32
	local.set	33
	i32.const	8
	local.set	34
	local.get	33
	local.get	34
	i32.add 
	local.set	35
	i64.const	0
	local.set	36
	local.get	35
	local.get	36
	i64.store	0
	i32.const	8
	local.set	37
	i32.const	32
	local.set	38
	local.get	4
	local.get	38
	i32.add 
	local.set	39
	local.get	39
	local.get	37
	i32.add 
	local.set	40
	i32.const	424
	local.set	41
	local.get	4
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
	local.get	4
	i64.load	424
	local.set	45
	local.get	4
	local.get	45
	i64.store	32
	i32.const	32
	local.set	46
	local.get	4
	local.get	46
	i32.add 
	local.set	47
	local.get	47
	call	sobject_new
	local.set	48
	local.get	4
	local.get	48
	i32.store	460
	br      	12                              # 12: down to label26
.LBB4_2:
	end_block                               # label38:
	local.get	4
	i32.load	448
	local.set	49
	local.get	4
	i32.load	444
	local.set	50
	local.get	49
	local.get	50
	call	sobject_isequal
	local.set	51
	i32.const	-1
	local.set	52
	local.get	51
	local.get	52
	i32.xor 
	local.set	53
	i32.const	2
	local.set	54
	i32.const	1
	local.set	55
	i32.const	1
	local.set	56
	local.get	53
	local.get	56
	i32.and 
	local.set	57
	local.get	54
	local.get	55
	local.get	57
	i32.select
	local.set	58
	local.get	4
	local.get	58
	i32.store	408
	i32.const	408
	local.set	59
	local.get	4
	local.get	59
	i32.add 
	local.set	60
	local.get	60
	local.set	61
	i32.const	8
	local.set	62
	local.get	61
	local.get	62
	i32.add 
	local.set	63
	i64.const	0
	local.set	64
	local.get	63
	local.get	64
	i64.store	0
	i32.const	8
	local.set	65
	i32.const	48
	local.set	66
	local.get	4
	local.get	66
	i32.add 
	local.set	67
	local.get	67
	local.get	65
	i32.add 
	local.set	68
	i32.const	408
	local.set	69
	local.get	4
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
	local.get	4
	i64.load	408
	local.set	73
	local.get	4
	local.get	73
	i64.store	48
	i32.const	48
	local.set	74
	local.get	4
	local.get	74
	i32.add 
	local.set	75
	local.get	75
	call	sobject_new
	local.set	76
	local.get	4
	local.get	76
	i32.store	460
	br      	11                              # 11: down to label26
.LBB4_3:
	end_block                               # label37:
	local.get	4
	i32.load	448
	local.set	77
	local.get	77
	i32.load	0
	local.set	78
	i32.const	3
	local.set	79
	local.get	78
	local.set	80
	local.get	79
	local.set	81
	local.get	80
	local.get	81
	i32.eq  
	local.set	82
	i32.const	1
	local.set	83
	local.get	82
	local.get	83
	i32.and 
	local.set	84
	block   	
	local.get	84
	i32.eqz
	br_if   	0                               # 0: down to label40
# %bb.4:
	local.get	4
	i32.load	444
	local.set	85
	local.get	85
	i32.load	0
	local.set	86
	i32.const	3
	local.set	87
	local.get	86
	local.set	88
	local.get	87
	local.set	89
	local.get	88
	local.get	89
	i32.eq  
	local.set	90
	i32.const	1
	local.set	91
	local.get	90
	local.get	91
	i32.and 
	local.set	92
	local.get	92
	i32.eqz
	br_if   	0                               # 0: down to label40
# %bb.5:
	local.get	4
	i32.load	448
	local.set	93
	local.get	93
	f64.load	8
	local.set	94
	local.get	4
	i32.load	444
	local.set	95
	local.get	95
	f64.load	8
	local.set	96
	local.get	94
	local.get	96
	f64.le  
	local.set	97
	i32.const	2
	local.set	98
	i32.const	1
	local.set	99
	i32.const	1
	local.set	100
	local.get	97
	local.get	100
	i32.and 
	local.set	101
	local.get	98
	local.get	99
	local.get	101
	i32.select
	local.set	102
	local.get	4
	local.get	102
	i32.store	392
	i32.const	392
	local.set	103
	local.get	4
	local.get	103
	i32.add 
	local.set	104
	local.get	104
	local.set	105
	i32.const	8
	local.set	106
	local.get	105
	local.get	106
	i32.add 
	local.set	107
	i64.const	0
	local.set	108
	local.get	107
	local.get	108
	i64.store	0
	i32.const	8
	local.set	109
	i32.const	64
	local.set	110
	local.get	4
	local.get	110
	i32.add 
	local.set	111
	local.get	111
	local.get	109
	i32.add 
	local.set	112
	i32.const	392
	local.set	113
	local.get	4
	local.get	113
	i32.add 
	local.set	114
	local.get	114
	local.get	109
	i32.add 
	local.set	115
	local.get	115
	i64.load	0
	local.set	116
	local.get	112
	local.get	116
	i64.store	0
	local.get	4
	i64.load	392
	local.set	117
	local.get	4
	local.get	117
	i64.store	64
	i32.const	64
	local.set	118
	local.get	4
	local.get	118
	i32.add 
	local.set	119
	local.get	119
	call	sobject_new
	local.set	120
	local.get	4
	local.get	120
	i32.store	460
	br      	11                              # 11: down to label26
.LBB4_6:
	end_block                               # label40:
	br      	9                               # 9: down to label27
.LBB4_7:
	end_block                               # label36:
	local.get	4
	i32.load	448
	local.set	121
	local.get	121
	i32.load	0
	local.set	122
	i32.const	3
	local.set	123
	local.get	122
	local.set	124
	local.get	123
	local.set	125
	local.get	124
	local.get	125
	i32.eq  
	local.set	126
	i32.const	1
	local.set	127
	local.get	126
	local.get	127
	i32.and 
	local.set	128
	block   	
	local.get	128
	i32.eqz
	br_if   	0                               # 0: down to label41
# %bb.8:
	local.get	4
	i32.load	444
	local.set	129
	local.get	129
	i32.load	0
	local.set	130
	i32.const	3
	local.set	131
	local.get	130
	local.set	132
	local.get	131
	local.set	133
	local.get	132
	local.get	133
	i32.eq  
	local.set	134
	i32.const	1
	local.set	135
	local.get	134
	local.get	135
	i32.and 
	local.set	136
	local.get	136
	i32.eqz
	br_if   	0                               # 0: down to label41
# %bb.9:
	local.get	4
	i32.load	448
	local.set	137
	local.get	137
	f64.load	8
	local.set	138
	local.get	4
	i32.load	444
	local.set	139
	local.get	139
	f64.load	8
	local.set	140
	local.get	138
	local.get	140
	f64.ge  
	local.set	141
	i32.const	2
	local.set	142
	i32.const	1
	local.set	143
	i32.const	1
	local.set	144
	local.get	141
	local.get	144
	i32.and 
	local.set	145
	local.get	142
	local.get	143
	local.get	145
	i32.select
	local.set	146
	local.get	4
	local.get	146
	i32.store	376
	i32.const	376
	local.set	147
	local.get	4
	local.get	147
	i32.add 
	local.set	148
	local.get	148
	local.set	149
	i32.const	8
	local.set	150
	local.get	149
	local.get	150
	i32.add 
	local.set	151
	i64.const	0
	local.set	152
	local.get	151
	local.get	152
	i64.store	0
	i32.const	8
	local.set	153
	i32.const	96
	local.set	154
	local.get	4
	local.get	154
	i32.add 
	local.set	155
	local.get	155
	local.get	153
	i32.add 
	local.set	156
	i32.const	376
	local.set	157
	local.get	4
	local.get	157
	i32.add 
	local.set	158
	local.get	158
	local.get	153
	i32.add 
	local.set	159
	local.get	159
	i64.load	0
	local.set	160
	local.get	156
	local.get	160
	i64.store	0
	local.get	4
	i64.load	376
	local.set	161
	local.get	4
	local.get	161
	i64.store	96
	i32.const	96
	local.set	162
	local.get	4
	local.get	162
	i32.add 
	local.set	163
	local.get	163
	call	sobject_new
	local.set	164
	local.get	4
	local.get	164
	i32.store	460
	br      	10                              # 10: down to label26
.LBB4_10:
	end_block                               # label41:
	br      	8                               # 8: down to label27
.LBB4_11:
	end_block                               # label35:
	local.get	4
	i32.load	448
	local.set	165
	local.get	165
	i32.load	0
	local.set	166
	i32.const	3
	local.set	167
	local.get	166
	local.set	168
	local.get	167
	local.set	169
	local.get	168
	local.get	169
	i32.eq  
	local.set	170
	i32.const	1
	local.set	171
	local.get	170
	local.get	171
	i32.and 
	local.set	172
	block   	
	local.get	172
	i32.eqz
	br_if   	0                               # 0: down to label42
# %bb.12:
	local.get	4
	i32.load	444
	local.set	173
	local.get	173
	i32.load	0
	local.set	174
	i32.const	3
	local.set	175
	local.get	174
	local.set	176
	local.get	175
	local.set	177
	local.get	176
	local.get	177
	i32.eq  
	local.set	178
	i32.const	1
	local.set	179
	local.get	178
	local.get	179
	i32.and 
	local.set	180
	local.get	180
	i32.eqz
	br_if   	0                               # 0: down to label42
# %bb.13:
	i32.const	3
	local.set	181
	local.get	4
	local.get	181
	i32.store	360
	local.get	4
	i32.load	448
	local.set	182
	local.get	182
	f64.load	8
	local.set	183
	local.get	4
	i32.load	444
	local.set	184
	local.get	184
	f64.load	8
	local.set	185
	local.get	183
	local.get	185
	f64.add 
	local.set	186
	local.get	4
	local.get	186
	f64.store	368
	i32.const	8
	local.set	187
	i32.const	112
	local.set	188
	local.get	4
	local.get	188
	i32.add 
	local.set	189
	local.get	189
	local.get	187
	i32.add 
	local.set	190
	i32.const	360
	local.set	191
	local.get	4
	local.get	191
	i32.add 
	local.set	192
	local.get	192
	local.get	187
	i32.add 
	local.set	193
	local.get	193
	i64.load	0
	local.set	194
	local.get	190
	local.get	194
	i64.store	0
	local.get	4
	i64.load	360
	local.set	195
	local.get	4
	local.get	195
	i64.store	112
	i32.const	112
	local.set	196
	local.get	4
	local.get	196
	i32.add 
	local.set	197
	local.get	197
	call	sobject_new
	local.set	198
	local.get	4
	local.get	198
	i32.store	460
	br      	9                               # 9: down to label26
.LBB4_14:
	end_block                               # label42:
	local.get	4
	i32.load	456
	local.set	199
	i32.const	8
	local.set	200
	local.get	199
	local.get	200
	i32.add 
	local.set	201
	i32.const	4
	local.set	202
	local.get	201
	local.get	202
	i32.add 
	local.set	203
	i32.const	16
	local.set	204
	local.get	203
	local.get	204
	i32.add 
	local.set	205
	local.get	205
	i64.load	0:p2align=2
	local.set	206
	i32.const	128
	local.set	207
	local.get	4
	local.get	207
	i32.add 
	local.set	208
	local.get	208
	local.get	204
	i32.add 
	local.set	209
	local.get	209
	local.get	206
	i64.store	0
	i32.const	8
	local.set	210
	local.get	203
	local.get	210
	i32.add 
	local.set	211
	local.get	211
	i64.load	0:p2align=2
	local.set	212
	i32.const	128
	local.set	213
	local.get	4
	local.get	213
	i32.add 
	local.set	214
	local.get	214
	local.get	210
	i32.add 
	local.set	215
	local.get	215
	local.get	212
	i64.store	0
	local.get	203
	i64.load	0:p2align=2
	local.set	216
	local.get	4
	local.get	216
	i64.store	128
	i32.const	.L.str.2
	local.set	217
	i32.const	.L.str
	local.set	218
	i32.const	0
	local.set	219
	i32.const	128
	local.set	220
	local.get	4
	local.get	220
	i32.add 
	local.set	221
	local.get	218
	local.get	221
	local.get	217
	local.get	219
	call	generic_error
	unreachable
.LBB4_15:
	end_block                               # label34:
	i32.const	4
	local.set	222
	local.get	4
	local.get	222
	i32.store	344
	local.get	4
	i32.load	448
	local.set	223
	local.get	223
	call	sobject_to_string
	local.set	224
	local.get	224
	call	sstring_from
	local.set	225
	local.get	4
	local.get	225
	i32.store	352
	i32.const	8
	local.set	226
	i32.const	152
	local.set	227
	local.get	4
	local.get	227
	i32.add 
	local.set	228
	local.get	228
	local.get	226
	i32.add 
	local.set	229
	i32.const	344
	local.set	230
	local.get	4
	local.get	230
	i32.add 
	local.set	231
	local.get	231
	local.get	226
	i32.add 
	local.set	232
	local.get	232
	i64.load	0
	local.set	233
	local.get	229
	local.get	233
	i64.store	0
	local.get	4
	i64.load	344
	local.set	234
	local.get	4
	local.get	234
	i64.store	152
	i32.const	152
	local.set	235
	local.get	4
	local.get	235
	i32.add 
	local.set	236
	local.get	236
	call	sobject_new
	local.set	237
	local.get	4
	local.get	237
	i32.store	440
	local.get	4
	i32.load	440
	local.set	238
	local.get	238
	i32.load	8
	local.set	239
	local.get	4
	i32.load	444
	local.set	240
	local.get	240
	call	sobject_to_string
	local.set	241
	local.get	239
	local.get	241
	call	sstring_cat
	local.set	242
	local.get	4
	i32.load	440
	local.set	243
	local.get	243
	local.get	242
	i32.store	8
	local.get	4
	i32.load	440
	local.set	244
	local.get	4
	local.get	244
	i32.store	460
	br      	7                               # 7: down to label26
.LBB4_16:
	end_block                               # label33:
	local.get	4
	i32.load	448
	local.set	245
	local.get	245
	i32.load	0
	local.set	246
	i32.const	3
	local.set	247
	local.get	246
	local.set	248
	local.get	247
	local.set	249
	local.get	248
	local.get	249
	i32.eq  
	local.set	250
	i32.const	1
	local.set	251
	local.get	250
	local.get	251
	i32.and 
	local.set	252
	block   	
	local.get	252
	i32.eqz
	br_if   	0                               # 0: down to label43
# %bb.17:
	local.get	4
	i32.load	444
	local.set	253
	local.get	253
	i32.load	0
	local.set	254
	i32.const	3
	local.set	255
	local.get	254
	local.set	256
	local.get	255
	local.set	257
	local.get	256
	local.get	257
	i32.eq  
	local.set	258
	i32.const	1
	local.set	259
	local.get	258
	local.get	259
	i32.and 
	local.set	260
	local.get	260
	i32.eqz
	br_if   	0                               # 0: down to label43
# %bb.18:
	i32.const	3
	local.set	261
	local.get	4
	local.get	261
	i32.store	328
	local.get	4
	i32.load	448
	local.set	262
	local.get	262
	f64.load	8
	local.set	263
	local.get	4
	i32.load	444
	local.set	264
	local.get	264
	f64.load	8
	local.set	265
	local.get	263
	local.get	265
	f64.sub 
	local.set	266
	local.get	4
	local.get	266
	f64.store	336
	i32.const	8
	local.set	267
	i32.const	168
	local.set	268
	local.get	4
	local.get	268
	i32.add 
	local.set	269
	local.get	269
	local.get	267
	i32.add 
	local.set	270
	i32.const	328
	local.set	271
	local.get	4
	local.get	271
	i32.add 
	local.set	272
	local.get	272
	local.get	267
	i32.add 
	local.set	273
	local.get	273
	i64.load	0
	local.set	274
	local.get	270
	local.get	274
	i64.store	0
	local.get	4
	i64.load	328
	local.set	275
	local.get	4
	local.get	275
	i64.store	168
	i32.const	168
	local.set	276
	local.get	4
	local.get	276
	i32.add 
	local.set	277
	local.get	277
	call	sobject_new
	local.set	278
	local.get	4
	local.get	278
	i32.store	460
	br      	7                               # 7: down to label26
.LBB4_19:
	end_block                               # label43:
	br      	5                               # 5: down to label27
.LBB4_20:
	end_block                               # label32:
	local.get	4
	i32.load	448
	local.set	279
	local.get	279
	i32.load	0
	local.set	280
	i32.const	3
	local.set	281
	local.get	280
	local.set	282
	local.get	281
	local.set	283
	local.get	282
	local.get	283
	i32.eq  
	local.set	284
	i32.const	1
	local.set	285
	local.get	284
	local.get	285
	i32.and 
	local.set	286
	block   	
	local.get	286
	i32.eqz
	br_if   	0                               # 0: down to label44
# %bb.21:
	local.get	4
	i32.load	444
	local.set	287
	local.get	287
	i32.load	0
	local.set	288
	i32.const	3
	local.set	289
	local.get	288
	local.set	290
	local.get	289
	local.set	291
	local.get	290
	local.get	291
	i32.eq  
	local.set	292
	i32.const	1
	local.set	293
	local.get	292
	local.get	293
	i32.and 
	local.set	294
	local.get	294
	i32.eqz
	br_if   	0                               # 0: down to label44
# %bb.22:
	i32.const	3
	local.set	295
	local.get	4
	local.get	295
	i32.store	312
	local.get	4
	i32.load	448
	local.set	296
	local.get	296
	f64.load	8
	local.set	297
	local.get	4
	i32.load	444
	local.set	298
	local.get	298
	f64.load	8
	local.set	299
	local.get	297
	local.get	299
	f64.mul 
	local.set	300
	local.get	4
	local.get	300
	f64.store	320
	i32.const	8
	local.set	301
	i32.const	184
	local.set	302
	local.get	4
	local.get	302
	i32.add 
	local.set	303
	local.get	303
	local.get	301
	i32.add 
	local.set	304
	i32.const	312
	local.set	305
	local.get	4
	local.get	305
	i32.add 
	local.set	306
	local.get	306
	local.get	301
	i32.add 
	local.set	307
	local.get	307
	i64.load	0
	local.set	308
	local.get	304
	local.get	308
	i64.store	0
	local.get	4
	i64.load	312
	local.set	309
	local.get	4
	local.get	309
	i64.store	184
	i32.const	184
	local.set	310
	local.get	4
	local.get	310
	i32.add 
	local.set	311
	local.get	311
	call	sobject_new
	local.set	312
	local.get	4
	local.get	312
	i32.store	460
	br      	6                               # 6: down to label26
.LBB4_23:
	end_block                               # label44:
	br      	4                               # 4: down to label27
.LBB4_24:
	end_block                               # label31:
	local.get	4
	i32.load	448
	local.set	313
	local.get	313
	i32.load	0
	local.set	314
	i32.const	3
	local.set	315
	local.get	314
	local.set	316
	local.get	315
	local.set	317
	local.get	316
	local.get	317
	i32.eq  
	local.set	318
	i32.const	1
	local.set	319
	local.get	318
	local.get	319
	i32.and 
	local.set	320
	block   	
	local.get	320
	i32.eqz
	br_if   	0                               # 0: down to label45
# %bb.25:
	local.get	4
	i32.load	444
	local.set	321
	local.get	321
	i32.load	0
	local.set	322
	i32.const	3
	local.set	323
	local.get	322
	local.set	324
	local.get	323
	local.set	325
	local.get	324
	local.get	325
	i32.eq  
	local.set	326
	i32.const	1
	local.set	327
	local.get	326
	local.get	327
	i32.and 
	local.set	328
	local.get	328
	i32.eqz
	br_if   	0                               # 0: down to label45
# %bb.26:
	i32.const	3
	local.set	329
	local.get	4
	local.get	329
	i32.store	296
	local.get	4
	i32.load	448
	local.set	330
	local.get	330
	f64.load	8
	local.set	331
	local.get	4
	i32.load	444
	local.set	332
	local.get	332
	f64.load	8
	local.set	333
	local.get	331
	local.get	333
	f64.div 
	local.set	334
	local.get	4
	local.get	334
	f64.store	304
	i32.const	8
	local.set	335
	i32.const	200
	local.set	336
	local.get	4
	local.get	336
	i32.add 
	local.set	337
	local.get	337
	local.get	335
	i32.add 
	local.set	338
	i32.const	296
	local.set	339
	local.get	4
	local.get	339
	i32.add 
	local.set	340
	local.get	340
	local.get	335
	i32.add 
	local.set	341
	local.get	341
	i64.load	0
	local.set	342
	local.get	338
	local.get	342
	i64.store	0
	local.get	4
	i64.load	296
	local.set	343
	local.get	4
	local.get	343
	i64.store	200
	i32.const	200
	local.set	344
	local.get	4
	local.get	344
	i32.add 
	local.set	345
	local.get	345
	call	sobject_new
	local.set	346
	local.get	4
	local.get	346
	i32.store	460
	br      	5                               # 5: down to label26
.LBB4_27:
	end_block                               # label45:
	br      	3                               # 3: down to label27
.LBB4_28:
	end_block                               # label30:
	local.get	4
	i32.load	448
	local.set	347
	local.get	347
	i32.load	0
	local.set	348
	i32.const	3
	local.set	349
	local.get	348
	local.set	350
	local.get	349
	local.set	351
	local.get	350
	local.get	351
	i32.eq  
	local.set	352
	i32.const	1
	local.set	353
	local.get	352
	local.get	353
	i32.and 
	local.set	354
	block   	
	local.get	354
	i32.eqz
	br_if   	0                               # 0: down to label46
# %bb.29:
	local.get	4
	i32.load	444
	local.set	355
	local.get	355
	i32.load	0
	local.set	356
	i32.const	3
	local.set	357
	local.get	356
	local.set	358
	local.get	357
	local.set	359
	local.get	358
	local.get	359
	i32.eq  
	local.set	360
	i32.const	1
	local.set	361
	local.get	360
	local.get	361
	i32.and 
	local.set	362
	local.get	362
	i32.eqz
	br_if   	0                               # 0: down to label46
# %bb.30:
	i32.const	3
	local.set	363
	local.get	4
	local.get	363
	i32.store	280
	local.get	4
	i32.load	448
	local.set	364
	local.get	364
	f64.load	8
	local.set	365
	local.get	4
	i32.load	444
	local.set	366
	local.get	366
	f64.load	8
	local.set	367
	local.get	365
	local.get	367
	call	fmod
	local.set	368
	local.get	4
	local.get	368
	f64.store	288
	i32.const	8
	local.set	369
	i32.const	216
	local.set	370
	local.get	4
	local.get	370
	i32.add 
	local.set	371
	local.get	371
	local.get	369
	i32.add 
	local.set	372
	i32.const	280
	local.set	373
	local.get	4
	local.get	373
	i32.add 
	local.set	374
	local.get	374
	local.get	369
	i32.add 
	local.set	375
	local.get	375
	i64.load	0
	local.set	376
	local.get	372
	local.get	376
	i64.store	0
	local.get	4
	i64.load	280
	local.set	377
	local.get	4
	local.get	377
	i64.store	216
	i32.const	216
	local.set	378
	local.get	4
	local.get	378
	i32.add 
	local.set	379
	local.get	379
	call	sobject_new
	local.set	380
	local.get	4
	local.get	380
	i32.store	460
	br      	4                               # 4: down to label26
.LBB4_31:
	end_block                               # label46:
	br      	2                               # 2: down to label27
.LBB4_32:
	end_block                               # label29:
	local.get	4
	i32.load	448
	local.set	381
	local.get	381
	i32.load	0
	local.set	382
	i32.const	3
	local.set	383
	local.get	382
	local.set	384
	local.get	383
	local.set	385
	local.get	384
	local.get	385
	i32.eq  
	local.set	386
	i32.const	1
	local.set	387
	local.get	386
	local.get	387
	i32.and 
	local.set	388
	block   	
	local.get	388
	i32.eqz
	br_if   	0                               # 0: down to label47
# %bb.33:
	local.get	4
	i32.load	444
	local.set	389
	local.get	389
	i32.load	0
	local.set	390
	i32.const	3
	local.set	391
	local.get	390
	local.set	392
	local.get	391
	local.set	393
	local.get	392
	local.get	393
	i32.eq  
	local.set	394
	i32.const	1
	local.set	395
	local.get	394
	local.get	395
	i32.and 
	local.set	396
	local.get	396
	i32.eqz
	br_if   	0                               # 0: down to label47
# %bb.34:
	i32.const	3
	local.set	397
	local.get	4
	local.get	397
	i32.store	264
	local.get	4
	i32.load	448
	local.set	398
	local.get	398
	f64.load	8
	local.set	399
	local.get	4
	i32.load	444
	local.set	400
	local.get	400
	f64.load	8
	local.set	401
	local.get	399
	local.get	401
	call	pow
	local.set	402
	local.get	4
	local.get	402
	f64.store	272
	i32.const	8
	local.set	403
	i32.const	232
	local.set	404
	local.get	4
	local.get	404
	i32.add 
	local.set	405
	local.get	405
	local.get	403
	i32.add 
	local.set	406
	i32.const	264
	local.set	407
	local.get	4
	local.get	407
	i32.add 
	local.set	408
	local.get	408
	local.get	403
	i32.add 
	local.set	409
	local.get	409
	i64.load	0
	local.set	410
	local.get	406
	local.get	410
	i64.store	0
	local.get	4
	i64.load	264
	local.set	411
	local.get	4
	local.get	411
	i64.store	232
	i32.const	232
	local.set	412
	local.get	4
	local.get	412
	i32.add 
	local.set	413
	local.get	413
	call	sobject_new
	local.set	414
	local.get	4
	local.get	414
	i32.store	460
	br      	3                               # 3: down to label26
.LBB4_35:
	end_block                               # label47:
	br      	1                               # 1: down to label27
.LBB4_36:
	end_block                               # label28:
	local.get	4
	i32.load	456
	local.set	415
	i32.const	8
	local.set	416
	local.get	415
	local.get	416
	i32.add 
	local.set	417
	i32.const	4
	local.set	418
	local.get	417
	local.get	418
	i32.add 
	local.set	419
	local.get	4
	i32.load	456
	local.set	420
	local.get	420
	i32.load	12
	local.set	421
	local.get	421
	call	tokentype_str
	local.set	422
	i32.const	16
	local.set	423
	local.get	419
	local.get	423
	i32.add 
	local.set	424
	local.get	424
	i64.load	0:p2align=2
	local.set	425
	i32.const	8
	local.set	426
	local.get	4
	local.get	426
	i32.add 
	local.set	427
	local.get	427
	local.get	423
	i32.add 
	local.set	428
	local.get	428
	local.get	425
	i64.store	0
	i32.const	8
	local.set	429
	local.get	419
	local.get	429
	i32.add 
	local.set	430
	local.get	430
	i64.load	0:p2align=2
	local.set	431
	i32.const	8
	local.set	432
	local.get	4
	local.get	432
	i32.add 
	local.set	433
	local.get	433
	local.get	429
	i32.add 
	local.set	434
	local.get	434
	local.get	431
	i64.store	0
	local.get	419
	i64.load	0:p2align=2
	local.set	435
	local.get	4
	local.get	435
	i64.store	8
	local.get	4
	local.get	422
	i32.store	0
	i32.const	.L.str.3
	local.set	436
	i32.const	.L.str
	local.set	437
	i32.const	8
	local.set	438
	local.get	4
	local.get	438
	i32.add 
	local.set	439
	local.get	437
	local.get	439
	local.get	436
	local.get	4
	call	generic_error
	unreachable
.LBB4_37:
	end_block                               # label27:
	i32.const	0
	local.set	440
	local.get	4
	local.get	440
	i32.store	248
	i32.const	248
	local.set	441
	local.get	4
	local.get	441
	i32.add 
	local.set	442
	local.get	442
	local.set	443
	i32.const	8
	local.set	444
	local.get	443
	local.get	444
	i32.add 
	local.set	445
	i64.const	0
	local.set	446
	local.get	445
	local.get	446
	i64.store	0
	i32.const	8
	local.set	447
	i32.const	80
	local.set	448
	local.get	4
	local.get	448
	i32.add 
	local.set	449
	local.get	449
	local.get	447
	i32.add 
	local.set	450
	i32.const	248
	local.set	451
	local.get	4
	local.get	451
	i32.add 
	local.set	452
	local.get	452
	local.get	447
	i32.add 
	local.set	453
	local.get	453
	i64.load	0
	local.set	454
	local.get	450
	local.get	454
	i64.store	0
	local.get	4
	i64.load	248
	local.set	455
	local.get	4
	local.get	455
	i64.store	80
	i32.const	80
	local.set	456
	local.get	4
	local.get	456
	i32.add 
	local.set	457
	local.get	457
	call	sobject_new
	local.set	458
	local.get	4
	local.get	458
	i32.store	460
.LBB4_38:
	end_block                               # label26:
	local.get	4
	i32.load	460
	local.set	459
	i32.const	464
	local.set	460
	local.get	4
	local.get	460
	i32.add 
	local.set	461
	local.get	461
	global.set	__stack_pointer
	local.get	459
	return
	end_function
.Lfunc_end4:
	.size	ast_binary_eval, .Lfunc_end4-ast_binary_eval
                                        # -- End function
	.section	.text.ast_variable_eval,"",@
	.hidden	ast_variable_eval               # -- Begin function ast_variable_eval
	.globl	ast_variable_eval
	.type	ast_variable_eval,@function
ast_variable_eval:                      # @ast_variable_eval
	.functype	ast_variable_eval (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i64, i32, i32, i32
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
	local.get	4
	i32.load	24
	local.set	5
	local.get	4
	i32.load	28
	local.set	6
	i32.const	8
	local.set	7
	local.get	6
	local.get	7
	i32.add 
	local.set	8
	i32.const	16
	local.set	9
	local.get	8
	local.get	9
	i32.add 
	local.set	10
	local.get	10
	i64.load	0:p2align=2
	local.set	11
	local.get	4
	local.get	9
	i32.add 
	local.set	12
	local.get	12
	local.get	11
	i64.store	0
	i32.const	8
	local.set	13
	local.get	8
	local.get	13
	i32.add 
	local.set	14
	local.get	14
	i64.load	0:p2align=2
	local.set	15
	local.get	4
	local.get	13
	i32.add 
	local.set	16
	local.get	16
	local.get	15
	i64.store	0
	local.get	8
	i64.load	0:p2align=2
	local.set	17
	local.get	4
	local.get	17
	i64.store	0
	local.get	5
	local.get	4
	call	env_lookup
	local.set	18
	i32.const	32
	local.set	19
	local.get	4
	local.get	19
	i32.add 
	local.set	20
	local.get	20
	global.set	__stack_pointer
	local.get	18
	return
	end_function
.Lfunc_end5:
	.size	ast_variable_eval, .Lfunc_end5-ast_variable_eval
                                        # -- End function
	.section	.text.ast_literal_eval,"",@
	.hidden	ast_literal_eval                # -- Begin function ast_literal_eval
	.globl	ast_literal_eval
	.type	ast_literal_eval,@function
ast_literal_eval:                       # @ast_literal_eval
	.functype	ast_literal_eval (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, f64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	208
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	global.set	__stack_pointer
	local.get	4
	local.get	0
	i32.store	200
	local.get	4
	local.get	1
	i32.store	196
	local.get	4
	i32.load	200
	local.set	5
	local.get	5
	i32.load	8
	local.set	6
	i32.const	-6
	local.set	7
	local.get	6
	local.get	7
	i32.add 
	local.set	8
	i32.const	19
	local.set	9
	local.get	8
	local.get	9
	i32.gt_u
	drop
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	local.get	8
	br_table 	{1, 0, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 3, 2, 4, 5} # 0: down to label54
                                        # 5: down to label49
                                        # 3: down to label51
                                        # 2: down to label52
                                        # 4: down to label50
.LBB6_1:
	end_block                               # label54:
	i32.const	4
	local.set	10
	local.get	4
	local.get	10
	i32.store	176
	local.get	4
	i32.load	200
	local.set	11
	local.get	11
	i32.load	12
	local.set	12
	local.get	12
	call	sstring_from
	local.set	13
	local.get	4
	local.get	13
	i32.store	184
	i32.const	8
	local.set	14
	i32.const	32
	local.set	15
	local.get	4
	local.get	15
	i32.add 
	local.set	16
	local.get	16
	local.get	14
	i32.add 
	local.set	17
	i32.const	176
	local.set	18
	local.get	4
	local.get	18
	i32.add 
	local.set	19
	local.get	19
	local.get	14
	i32.add 
	local.set	20
	local.get	20
	i64.load	0
	local.set	21
	local.get	17
	local.get	21
	i64.store	0
	local.get	4
	i64.load	176
	local.set	22
	local.get	4
	local.get	22
	i64.store	32
	i32.const	32
	local.set	23
	local.get	4
	local.get	23
	i32.add 
	local.set	24
	local.get	24
	call	sobject_new
	local.set	25
	local.get	4
	local.get	25
	i32.store	204
	br      	5                               # 5: down to label48
.LBB6_2:
	end_block                               # label53:
	i32.const	3
	local.set	26
	local.get	4
	local.get	26
	i32.store	160
	local.get	4
	i32.load	200
	local.set	27
	local.get	27
	i32.load	12
	local.set	28
	i32.const	0
	local.set	29
	local.get	28
	local.get	29
	call	strtod
	local.set	30
	local.get	4
	local.get	30
	f64.store	168
	i32.const	8
	local.set	31
	i32.const	48
	local.set	32
	local.get	4
	local.get	32
	i32.add 
	local.set	33
	local.get	33
	local.get	31
	i32.add 
	local.set	34
	i32.const	160
	local.set	35
	local.get	4
	local.get	35
	i32.add 
	local.set	36
	local.get	36
	local.get	31
	i32.add 
	local.set	37
	local.get	37
	i64.load	0
	local.set	38
	local.get	34
	local.get	38
	i64.store	0
	local.get	4
	i64.load	160
	local.set	39
	local.get	4
	local.get	39
	i64.store	48
	i32.const	48
	local.set	40
	local.get	4
	local.get	40
	i32.add 
	local.set	41
	local.get	41
	call	sobject_new
	local.set	42
	local.get	4
	local.get	42
	i32.store	204
	br      	4                               # 4: down to label48
.LBB6_3:
	end_block                               # label52:
	i32.const	1
	local.set	43
	local.get	4
	local.get	43
	i32.store	144
	i32.const	144
	local.set	44
	local.get	4
	local.get	44
	i32.add 
	local.set	45
	local.get	45
	local.set	46
	i32.const	8
	local.set	47
	local.get	46
	local.get	47
	i32.add 
	local.set	48
	i64.const	0
	local.set	49
	local.get	48
	local.get	49
	i64.store	0
	i32.const	8
	local.set	50
	i32.const	64
	local.set	51
	local.get	4
	local.get	51
	i32.add 
	local.set	52
	local.get	52
	local.get	50
	i32.add 
	local.set	53
	i32.const	144
	local.set	54
	local.get	4
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
	local.get	4
	i64.load	144
	local.set	58
	local.get	4
	local.get	58
	i64.store	64
	i32.const	64
	local.set	59
	local.get	4
	local.get	59
	i32.add 
	local.set	60
	local.get	60
	call	sobject_new
	local.set	61
	local.get	4
	local.get	61
	i32.store	204
	br      	3                               # 3: down to label48
.LBB6_4:
	end_block                               # label51:
	i32.const	2
	local.set	62
	local.get	4
	local.get	62
	i32.store	128
	i32.const	128
	local.set	63
	local.get	4
	local.get	63
	i32.add 
	local.set	64
	local.get	64
	local.set	65
	i32.const	8
	local.set	66
	local.get	65
	local.get	66
	i32.add 
	local.set	67
	i64.const	0
	local.set	68
	local.get	67
	local.get	68
	i64.store	0
	i32.const	8
	local.set	69
	i32.const	80
	local.set	70
	local.get	4
	local.get	70
	i32.add 
	local.set	71
	local.get	71
	local.get	69
	i32.add 
	local.set	72
	i32.const	128
	local.set	73
	local.get	4
	local.get	73
	i32.add 
	local.set	74
	local.get	74
	local.get	69
	i32.add 
	local.set	75
	local.get	75
	i64.load	0
	local.set	76
	local.get	72
	local.get	76
	i64.store	0
	local.get	4
	i64.load	128
	local.set	77
	local.get	4
	local.get	77
	i64.store	80
	i32.const	80
	local.set	78
	local.get	4
	local.get	78
	i32.add 
	local.set	79
	local.get	79
	call	sobject_new
	local.set	80
	local.get	4
	local.get	80
	i32.store	204
	br      	2                               # 2: down to label48
.LBB6_5:
	end_block                               # label50:
	i32.const	0
	local.set	81
	local.get	4
	local.get	81
	i32.store	112
	i32.const	112
	local.set	82
	local.get	4
	local.get	82
	i32.add 
	local.set	83
	local.get	83
	local.set	84
	i32.const	8
	local.set	85
	local.get	84
	local.get	85
	i32.add 
	local.set	86
	i64.const	0
	local.set	87
	local.get	86
	local.get	87
	i64.store	0
	i32.const	8
	local.set	88
	i32.const	96
	local.set	89
	local.get	4
	local.get	89
	i32.add 
	local.set	90
	local.get	90
	local.get	88
	i32.add 
	local.set	91
	i32.const	112
	local.set	92
	local.get	4
	local.get	92
	i32.add 
	local.set	93
	local.get	93
	local.get	88
	i32.add 
	local.set	94
	local.get	94
	i64.load	0
	local.set	95
	local.get	91
	local.get	95
	i64.store	0
	local.get	4
	i64.load	112
	local.set	96
	local.get	4
	local.get	96
	i64.store	96
	i32.const	96
	local.set	97
	local.get	4
	local.get	97
	i32.add 
	local.set	98
	local.get	98
	call	sobject_new
	local.set	99
	local.get	4
	local.get	99
	i32.store	204
	br      	1                               # 1: down to label48
.LBB6_6:
	end_block                               # label49:
	local.get	4
	i32.load	200
	local.set	100
	i32.const	8
	local.set	101
	local.get	100
	local.get	101
	i32.add 
	local.set	102
	i32.const	16
	local.set	103
	local.get	102
	local.get	103
	i32.add 
	local.set	104
	local.get	104
	i64.load	0:p2align=2
	local.set	105
	i32.const	8
	local.set	106
	local.get	4
	local.get	106
	i32.add 
	local.set	107
	local.get	107
	local.get	103
	i32.add 
	local.set	108
	local.get	108
	local.get	105
	i64.store	0
	i32.const	8
	local.set	109
	local.get	102
	local.get	109
	i32.add 
	local.set	110
	local.get	110
	i64.load	0:p2align=2
	local.set	111
	i32.const	8
	local.set	112
	local.get	4
	local.get	112
	i32.add 
	local.set	113
	local.get	113
	local.get	109
	i32.add 
	local.set	114
	local.get	114
	local.get	111
	i64.store	0
	local.get	102
	i64.load	0:p2align=2
	local.set	115
	local.get	4
	local.get	115
	i64.store	8
	i32.const	.L.str.4
	local.set	116
	i32.const	.L.str
	local.set	117
	i32.const	0
	local.set	118
	i32.const	8
	local.set	119
	local.get	4
	local.get	119
	i32.add 
	local.set	120
	local.get	117
	local.get	120
	local.get	116
	local.get	118
	call	generic_error
	unreachable
.LBB6_7:
	end_block                               # label48:
	local.get	4
	i32.load	204
	local.set	121
	i32.const	208
	local.set	122
	local.get	4
	local.get	122
	i32.add 
	local.set	123
	local.get	123
	global.set	__stack_pointer
	local.get	121
	return
	end_function
.Lfunc_end6:
	.size	ast_literal_eval, .Lfunc_end6-ast_literal_eval
                                        # -- End function
	.section	.text.ast_declaration_eval,"",@
	.hidden	ast_declaration_eval            # -- Begin function ast_declaration_eval
	.globl	ast_declaration_eval
	.type	ast_declaration_eval,@function
ast_declaration_eval:                   # @ast_declaration_eval
	.functype	ast_declaration_eval (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	80
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	global.set	__stack_pointer
	local.get	4
	local.get	0
	i32.store	76
	local.get	4
	local.get	1
	i32.store	72
	local.get	4
	i32.load	76
	local.set	5
	local.get	5
	i32.load	32
	local.set	6
	i32.const	0
	local.set	7
	local.get	6
	local.set	8
	local.get	7
	local.set	9
	local.get	8
	local.get	9
	i32.ne  
	local.set	10
	i32.const	1
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	block   	
	block   	
	local.get	12
	i32.eqz
	br_if   	0                               # 0: down to label56
# %bb.1:
	local.get	4
	i32.load	76
	local.set	13
	local.get	13
	i32.load	32
	local.set	14
	local.get	4
	i32.load	72
	local.set	15
	local.get	14
	local.get	15
	call	ast_eval
	local.set	16
	local.get	4
	local.get	16
	i32.store	68
	br      	1                               # 1: down to label55
.LBB7_2:
	end_block                               # label56:
	i32.const	0
	local.set	17
	local.get	4
	local.get	17
	i32.store	48
	i32.const	48
	local.set	18
	local.get	4
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
	i64.const	0
	local.set	23
	local.get	22
	local.get	23
	i64.store	0
	i32.const	8
	local.set	24
	i32.const	32
	local.set	25
	local.get	4
	local.get	25
	i32.add 
	local.set	26
	local.get	26
	local.get	24
	i32.add 
	local.set	27
	i32.const	48
	local.set	28
	local.get	4
	local.get	28
	i32.add 
	local.set	29
	local.get	29
	local.get	24
	i32.add 
	local.set	30
	local.get	30
	i64.load	0
	local.set	31
	local.get	27
	local.get	31
	i64.store	0
	local.get	4
	i64.load	48
	local.set	32
	local.get	4
	local.get	32
	i64.store	32
	i32.const	32
	local.set	33
	local.get	4
	local.get	33
	i32.add 
	local.set	34
	local.get	34
	call	sobject_new
	local.set	35
	local.get	4
	local.get	35
	i32.store	68
.LBB7_3:
	end_block                               # label55:
	local.get	4
	i32.load	72
	local.set	36
	local.get	4
	i32.load	76
	local.set	37
	i32.const	8
	local.set	38
	local.get	37
	local.get	38
	i32.add 
	local.set	39
	local.get	4
	i32.load	68
	local.set	40
	i32.const	16
	local.set	41
	local.get	39
	local.get	41
	i32.add 
	local.set	42
	local.get	42
	i64.load	0:p2align=2
	local.set	43
	i32.const	8
	local.set	44
	local.get	4
	local.get	44
	i32.add 
	local.set	45
	local.get	45
	local.get	41
	i32.add 
	local.set	46
	local.get	46
	local.get	43
	i64.store	0
	i32.const	8
	local.set	47
	local.get	39
	local.get	47
	i32.add 
	local.set	48
	local.get	48
	i64.load	0:p2align=2
	local.set	49
	i32.const	8
	local.set	50
	local.get	4
	local.get	50
	i32.add 
	local.set	51
	local.get	51
	local.get	47
	i32.add 
	local.set	52
	local.get	52
	local.get	49
	i64.store	0
	local.get	39
	i64.load	0:p2align=2
	local.set	53
	local.get	4
	local.get	53
	i64.store	8
	i32.const	8
	local.set	54
	local.get	4
	local.get	54
	i32.add 
	local.set	55
	local.get	36
	local.get	55
	local.get	40
	call	env_define
	local.get	4
	i32.load	68
	local.set	56
	i32.const	80
	local.set	57
	local.get	4
	local.get	57
	i32.add 
	local.set	58
	local.get	58
	global.set	__stack_pointer
	local.get	56
	return
	end_function
.Lfunc_end7:
	.size	ast_declaration_eval, .Lfunc_end7-ast_declaration_eval
                                        # -- End function
	.section	.text.ast_assignment_eval,"",@
	.hidden	ast_assignment_eval             # -- Begin function ast_assignment_eval
	.globl	ast_assignment_eval
	.type	ast_assignment_eval,@function
ast_assignment_eval:                    # @ast_assignment_eval
	.functype	ast_assignment_eval (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	48
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	global.set	__stack_pointer
	local.get	4
	local.get	0
	i32.store	44
	local.get	4
	local.get	1
	i32.store	40
	local.get	4
	i32.load	44
	local.set	5
	local.get	5
	i32.load	32
	local.set	6
	local.get	4
	i32.load	40
	local.set	7
	local.get	6
	local.get	7
	call	ast_eval
	local.set	8
	local.get	4
	local.get	8
	i32.store	36
	local.get	4
	i32.load	40
	local.set	9
	local.get	4
	i32.load	44
	local.set	10
	i32.const	8
	local.set	11
	local.get	10
	local.get	11
	i32.add 
	local.set	12
	local.get	4
	i32.load	36
	local.set	13
	i32.const	16
	local.set	14
	local.get	12
	local.get	14
	i32.add 
	local.set	15
	local.get	15
	i64.load	0:p2align=2
	local.set	16
	i32.const	8
	local.set	17
	local.get	4
	local.get	17
	i32.add 
	local.set	18
	local.get	18
	local.get	14
	i32.add 
	local.set	19
	local.get	19
	local.get	16
	i64.store	0
	i32.const	8
	local.set	20
	local.get	12
	local.get	20
	i32.add 
	local.set	21
	local.get	21
	i64.load	0:p2align=2
	local.set	22
	i32.const	8
	local.set	23
	local.get	4
	local.get	23
	i32.add 
	local.set	24
	local.get	24
	local.get	20
	i32.add 
	local.set	25
	local.get	25
	local.get	22
	i64.store	0
	local.get	12
	i64.load	0:p2align=2
	local.set	26
	local.get	4
	local.get	26
	i64.store	8
	i32.const	8
	local.set	27
	local.get	4
	local.get	27
	i32.add 
	local.set	28
	local.get	9
	local.get	28
	local.get	13
	call	env_assign
	local.get	4
	i32.load	36
	local.set	29
	i32.const	48
	local.set	30
	local.get	4
	local.get	30
	i32.add 
	local.set	31
	local.get	31
	global.set	__stack_pointer
	local.get	29
	return
	end_function
.Lfunc_end8:
	.size	ast_assignment_eval, .Lfunc_end8-ast_assignment_eval
                                        # -- End function
	.section	.text.ast_if_eval,"",@
	.hidden	ast_if_eval                     # -- Begin function ast_if_eval
	.globl	ast_if_eval
	.type	ast_if_eval,@function
ast_if_eval:                            # @ast_if_eval
	.functype	ast_if_eval (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	48
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	global.set	__stack_pointer
	local.get	4
	local.get	0
	i32.store	40
	local.get	4
	local.get	1
	i32.store	36
	local.get	4
	i32.load	40
	local.set	5
	local.get	5
	i32.load	8
	local.set	6
	local.get	4
	i32.load	36
	local.set	7
	local.get	6
	local.get	7
	call	ast_eval
	local.set	8
	local.get	4
	local.get	8
	i32.store	32
	local.get	4
	i32.load	32
	local.set	9
	local.get	9
	call	sobject_istrue
	local.set	10
	i32.const	1
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	block   	
	block   	
	local.get	12
	i32.eqz
	br_if   	0                               # 0: down to label58
# %bb.1:
	local.get	4
	i32.load	40
	local.set	13
	local.get	13
	i32.load	12
	local.set	14
	local.get	4
	i32.load	36
	local.set	15
	local.get	14
	local.get	15
	call	ast_eval
	local.set	16
	local.get	4
	local.get	16
	i32.store	44
	br      	1                               # 1: down to label57
.LBB9_2:
	end_block                               # label58:
	local.get	4
	i32.load	40
	local.set	17
	local.get	17
	i32.load	16
	local.set	18
	i32.const	0
	local.set	19
	local.get	18
	local.set	20
	local.get	19
	local.set	21
	local.get	20
	local.get	21
	i32.ne  
	local.set	22
	i32.const	1
	local.set	23
	local.get	22
	local.get	23
	i32.and 
	local.set	24
	block   	
	local.get	24
	i32.eqz
	br_if   	0                               # 0: down to label59
# %bb.3:
	local.get	4
	i32.load	40
	local.set	25
	local.get	25
	i32.load	16
	local.set	26
	local.get	4
	i32.load	36
	local.set	27
	local.get	26
	local.get	27
	call	ast_eval
	local.set	28
	local.get	4
	local.get	28
	i32.store	44
	br      	1                               # 1: down to label57
.LBB9_4:
	end_block                               # label59:
	i32.const	0
	local.set	29
	local.get	4
	local.get	29
	i32.store	16
	i32.const	16
	local.set	30
	local.get	4
	local.get	30
	i32.add 
	local.set	31
	local.get	31
	local.set	32
	i32.const	8
	local.set	33
	local.get	32
	local.get	33
	i32.add 
	local.set	34
	i64.const	0
	local.set	35
	local.get	34
	local.get	35
	i64.store	0
	i32.const	8
	local.set	36
	local.get	4
	local.get	36
	i32.add 
	local.set	37
	i32.const	16
	local.set	38
	local.get	4
	local.get	38
	i32.add 
	local.set	39
	local.get	39
	local.get	36
	i32.add 
	local.set	40
	local.get	40
	i64.load	0
	local.set	41
	local.get	37
	local.get	41
	i64.store	0
	local.get	4
	i64.load	16
	local.set	42
	local.get	4
	local.get	42
	i64.store	0
	local.get	4
	call	sobject_new
	local.set	43
	local.get	4
	local.get	43
	i32.store	44
.LBB9_5:
	end_block                               # label57:
	local.get	4
	i32.load	44
	local.set	44
	i32.const	48
	local.set	45
	local.get	4
	local.get	45
	i32.add 
	local.set	46
	local.get	46
	global.set	__stack_pointer
	local.get	44
	return
	end_function
.Lfunc_end9:
	.size	ast_if_eval, .Lfunc_end9-ast_if_eval
                                        # -- End function
	.section	.text.ast_while_eval,"",@
	.hidden	ast_while_eval                  # -- Begin function ast_while_eval
	.globl	ast_while_eval
	.type	ast_while_eval,@function
ast_while_eval:                         # @ast_while_eval
	.functype	ast_while_eval (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	48
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	global.set	__stack_pointer
	local.get	4
	local.get	0
	i32.store	44
	local.get	4
	local.get	1
	i32.store	40
	i32.const	0
	local.set	5
	local.get	4
	local.get	5
	i32.store	36
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label61:
	local.get	4
	i32.load	44
	local.set	6
	local.get	6
	i32.load	8
	local.set	7
	local.get	4
	i32.load	40
	local.set	8
	local.get	7
	local.get	8
	call	ast_eval
	local.set	9
	local.get	9
	call	sobject_istrue
	local.set	10
	i32.const	1
	local.set	11
	local.get	10
	local.get	11
	i32.and 
	local.set	12
	local.get	12
	i32.eqz
	br_if   	1                               # 1: down to label60
# %bb.2:                                #   in Loop: Header=BB10_1 Depth=1
	local.get	4
	i32.load	44
	local.set	13
	local.get	13
	i32.load	12
	local.set	14
	local.get	4
	i32.load	40
	local.set	15
	local.get	14
	local.get	15
	call	ast_eval
	local.set	16
	local.get	4
	local.get	16
	i32.store	36
	br      	0                               # 0: up to label61
.LBB10_3:
	end_loop
	end_block                               # label60:
	local.get	4
	i32.load	36
	local.set	17
	i32.const	0
	local.set	18
	local.get	17
	local.set	19
	local.get	18
	local.set	20
	local.get	19
	local.get	20
	i32.eq  
	local.set	21
	i32.const	1
	local.set	22
	local.get	21
	local.get	22
	i32.and 
	local.set	23
	block   	
	local.get	23
	i32.eqz
	br_if   	0                               # 0: down to label62
# %bb.4:
	i32.const	0
	local.set	24
	local.get	4
	local.get	24
	i32.store	16
	i32.const	16
	local.set	25
	local.get	4
	local.get	25
	i32.add 
	local.set	26
	local.get	26
	local.set	27
	i32.const	8
	local.set	28
	local.get	27
	local.get	28
	i32.add 
	local.set	29
	i64.const	0
	local.set	30
	local.get	29
	local.get	30
	i64.store	0
	i32.const	8
	local.set	31
	local.get	4
	local.get	31
	i32.add 
	local.set	32
	i32.const	16
	local.set	33
	local.get	4
	local.get	33
	i32.add 
	local.set	34
	local.get	34
	local.get	31
	i32.add 
	local.set	35
	local.get	35
	i64.load	0
	local.set	36
	local.get	32
	local.get	36
	i64.store	0
	local.get	4
	i64.load	16
	local.set	37
	local.get	4
	local.get	37
	i64.store	0
	local.get	4
	call	sobject_new
	local.set	38
	local.get	4
	local.get	38
	i32.store	36
.LBB10_5:
	end_block                               # label62:
	local.get	4
	i32.load	36
	local.set	39
	i32.const	48
	local.set	40
	local.get	4
	local.get	40
	i32.add 
	local.set	41
	local.get	41
	global.set	__stack_pointer
	local.get	39
	return
	end_function
.Lfunc_end10:
	.size	ast_while_eval, .Lfunc_end10-ast_while_eval
                                        # -- End function
	.section	.text.ast_block_eval,"",@
	.hidden	ast_block_eval                  # -- Begin function ast_block_eval
	.globl	ast_block_eval
	.type	ast_block_eval,@function
ast_block_eval:                         # @ast_block_eval
	.functype	ast_block_eval (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	local.get	4
	i32.load	24
	local.set	5
	local.get	5
	call	env_new
	local.set	6
	local.get	4
	local.get	6
	i32.store	20
	i32.const	0
	local.set	7
	local.get	4
	local.get	7
	i32.store	16
	i32.const	0
	local.set	8
	local.get	4
	local.get	8
	i32.store	12
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label64:
	local.get	4
	i32.load	12
	local.set	9
	local.get	4
	i32.load	28
	local.set	10
	local.get	10
	i32.load	8
	local.set	11
	local.get	11
	i32.load	0
	local.set	12
	local.get	9
	local.set	13
	local.get	12
	local.set	14
	local.get	13
	local.get	14
	i32.lt_u
	local.set	15
	i32.const	1
	local.set	16
	local.get	15
	local.get	16
	i32.and 
	local.set	17
	local.get	17
	i32.eqz
	br_if   	1                               # 1: down to label63
# %bb.2:                                #   in Loop: Header=BB11_1 Depth=1
	local.get	4
	i32.load	28
	local.set	18
	local.get	18
	i32.load	8
	local.set	19
	local.get	19
	i32.load	8
	local.set	20
	local.get	4
	i32.load	12
	local.set	21
	i32.const	2
	local.set	22
	local.get	21
	local.get	22
	i32.shl 
	local.set	23
	local.get	20
	local.get	23
	i32.add 
	local.set	24
	local.get	24
	i32.load	0
	local.set	25
	local.get	4
	i32.load	20
	local.set	26
	local.get	25
	local.get	26
	call	ast_eval
	local.set	27
	local.get	4
	local.get	27
	i32.store	16
# %bb.3:                                #   in Loop: Header=BB11_1 Depth=1
	local.get	4
	i32.load	12
	local.set	28
	i32.const	1
	local.set	29
	local.get	28
	local.get	29
	i32.add 
	local.set	30
	local.get	4
	local.get	30
	i32.store	12
	br      	0                               # 0: up to label64
.LBB11_4:
	end_loop
	end_block                               # label63:
	local.get	4
	i32.load	20
	local.set	31
	local.get	31
	call	env_free
	local.get	4
	i32.load	16
	local.set	32
	i32.const	32
	local.set	33
	local.get	4
	local.get	33
	i32.add 
	local.set	34
	local.get	34
	global.set	__stack_pointer
	local.get	32
	return
	end_function
.Lfunc_end11:
	.size	ast_block_eval, .Lfunc_end11-ast_block_eval
                                        # -- End function
	.section	.text.ast_function_eval,"",@
	.hidden	ast_function_eval               # -- Begin function ast_function_eval
	.globl	ast_function_eval
	.type	ast_function_eval,@function
ast_function_eval:                      # @ast_function_eval
	.functype	ast_function_eval (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	48
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	global.set	__stack_pointer
	local.get	4
	local.get	0
	i32.store	44
	local.get	4
	local.get	1
	i32.store	40
	i32.const	6
	local.set	5
	local.get	4
	local.get	5
	i32.store	24
	local.get	4
	i32.load	44
	local.set	6
	local.get	6
	i32.load	8
	local.set	7
	local.get	4
	local.get	7
	i32.store	32
	local.get	4
	i32.load	44
	local.set	8
	local.get	8
	i32.load	12
	local.set	9
	local.get	4
	local.get	9
	i32.store	36
	i32.const	8
	local.set	10
	i32.const	8
	local.set	11
	local.get	4
	local.get	11
	i32.add 
	local.set	12
	local.get	12
	local.get	10
	i32.add 
	local.set	13
	i32.const	24
	local.set	14
	local.get	4
	local.get	14
	i32.add 
	local.set	15
	local.get	15
	local.get	10
	i32.add 
	local.set	16
	local.get	16
	i64.load	0
	local.set	17
	local.get	13
	local.get	17
	i64.store	0
	local.get	4
	i64.load	24
	local.set	18
	local.get	4
	local.get	18
	i64.store	8
	i32.const	8
	local.set	19
	local.get	4
	local.get	19
	i32.add 
	local.set	20
	local.get	20
	call	sobject_new
	local.set	21
	i32.const	48
	local.set	22
	local.get	4
	local.get	22
	i32.add 
	local.set	23
	local.get	23
	global.set	__stack_pointer
	local.get	21
	return
	end_function
.Lfunc_end12:
	.size	ast_function_eval, .Lfunc_end12-ast_function_eval
                                        # -- End function
	.section	.text.ast_call_eval,"",@
	.hidden	ast_call_eval                   # -- Begin function ast_call_eval
	.globl	ast_call_eval
	.type	ast_call_eval,@function
ast_call_eval:                          # @ast_call_eval
	.functype	ast_call_eval (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	112
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	global.set	__stack_pointer
	local.get	4
	local.get	0
	i32.store	108
	local.get	4
	local.get	1
	i32.store	104
	local.get	4
	i32.load	104
	local.set	5
	local.get	5
	call	env_new
	local.set	6
	local.get	4
	local.get	6
	i32.store	100
	local.get	4
	i32.load	108
	local.set	7
	local.get	7
	i32.load	8
	local.set	8
	local.get	4
	i32.load	104
	local.set	9
	local.get	8
	local.get	9
	call	ast_eval
	local.set	10
	local.get	4
	local.get	10
	i32.store	96
	local.get	4
	i32.load	96
	local.set	11
	local.get	11
	i32.load	0
	local.set	12
	i32.const	6
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
	block   	
	local.get	18
	i32.eqz
	br_if   	0                               # 0: down to label65
# %bb.1:
	local.get	4
	i32.load	108
	local.set	19
	i32.const	8
	local.set	20
	local.get	19
	local.get	20
	i32.add 
	local.set	21
	i32.const	8
	local.set	22
	local.get	21
	local.get	22
	i32.add 
	local.set	23
	i32.const	16
	local.set	24
	local.get	23
	local.get	24
	i32.add 
	local.set	25
	local.get	25
	i64.load	0:p2align=2
	local.set	26
	i32.const	8
	local.set	27
	local.get	4
	local.get	27
	i32.add 
	local.set	28
	local.get	28
	local.get	24
	i32.add 
	local.set	29
	local.get	29
	local.get	26
	i64.store	0
	i32.const	8
	local.set	30
	local.get	23
	local.get	30
	i32.add 
	local.set	31
	local.get	31
	i64.load	0:p2align=2
	local.set	32
	i32.const	8
	local.set	33
	local.get	4
	local.get	33
	i32.add 
	local.set	34
	local.get	34
	local.get	30
	i32.add 
	local.set	35
	local.get	35
	local.get	32
	i64.store	0
	local.get	23
	i64.load	0:p2align=2
	local.set	36
	local.get	4
	local.get	36
	i64.store	8
	i32.const	.L.str.5
	local.set	37
	i32.const	.L.str
	local.set	38
	i32.const	0
	local.set	39
	i32.const	8
	local.set	40
	local.get	4
	local.get	40
	i32.add 
	local.set	41
	local.get	38
	local.get	41
	local.get	37
	local.get	39
	call	generic_error
	unreachable
.LBB13_2:
	end_block                               # label65:
	local.get	4
	i32.load	96
	local.set	42
	local.get	42
	i32.load	8
	local.set	43
	local.get	43
	i32.load	0
	local.set	44
	local.get	4
	i32.load	108
	local.set	45
	local.get	45
	i32.load	12
	local.set	46
	local.get	46
	i32.load	0
	local.set	47
	local.get	44
	local.set	48
	local.get	47
	local.set	49
	local.get	48
	local.get	49
	i32.ne  
	local.set	50
	i32.const	1
	local.set	51
	local.get	50
	local.get	51
	i32.and 
	local.set	52
	block   	
	local.get	52
	i32.eqz
	br_if   	0                               # 0: down to label66
# %bb.3:
	local.get	4
	i32.load	108
	local.set	53
	i32.const	8
	local.set	54
	local.get	53
	local.get	54
	i32.add 
	local.set	55
	i32.const	8
	local.set	56
	local.get	55
	local.get	56
	i32.add 
	local.set	57
	local.get	4
	i32.load	96
	local.set	58
	local.get	58
	i32.load	8
	local.set	59
	local.get	59
	i32.load	0
	local.set	60
	local.get	4
	i32.load	108
	local.set	61
	local.get	61
	i32.load	12
	local.set	62
	local.get	62
	i32.load	0
	local.set	63
	i32.const	16
	local.set	64
	local.get	57
	local.get	64
	i32.add 
	local.set	65
	local.get	65
	i64.load	0:p2align=2
	local.set	66
	i32.const	40
	local.set	67
	local.get	4
	local.get	67
	i32.add 
	local.set	68
	local.get	68
	local.get	64
	i32.add 
	local.set	69
	local.get	69
	local.get	66
	i64.store	0
	i32.const	8
	local.set	70
	local.get	57
	local.get	70
	i32.add 
	local.set	71
	local.get	71
	i64.load	0:p2align=2
	local.set	72
	i32.const	40
	local.set	73
	local.get	4
	local.get	73
	i32.add 
	local.set	74
	local.get	74
	local.get	70
	i32.add 
	local.set	75
	local.get	75
	local.get	72
	i64.store	0
	local.get	57
	i64.load	0:p2align=2
	local.set	76
	local.get	4
	local.get	76
	i64.store	40
	local.get	4
	local.get	63
	i32.store	36
	local.get	4
	local.get	60
	i32.store	32
	i32.const	.L.str.6
	local.set	77
	i32.const	.L.str
	local.set	78
	i32.const	40
	local.set	79
	local.get	4
	local.get	79
	i32.add 
	local.set	80
	i32.const	32
	local.set	81
	local.get	4
	local.get	81
	i32.add 
	local.set	82
	local.get	78
	local.get	80
	local.get	77
	local.get	82
	call	generic_error
	unreachable
.LBB13_4:
	end_block                               # label66:
	i32.const	0
	local.set	83
	local.get	4
	local.get	83
	i32.store	92
.LBB13_5:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label68:
	local.get	4
	i32.load	92
	local.set	84
	local.get	4
	i32.load	108
	local.set	85
	local.get	85
	i32.load	12
	local.set	86
	local.get	86
	i32.load	0
	local.set	87
	local.get	84
	local.set	88
	local.get	87
	local.set	89
	local.get	88
	local.get	89
	i32.lt_u
	local.set	90
	i32.const	1
	local.set	91
	local.get	90
	local.get	91
	i32.and 
	local.set	92
	local.get	92
	i32.eqz
	br_if   	1                               # 1: down to label67
# %bb.6:                                #   in Loop: Header=BB13_5 Depth=1
	local.get	4
	i32.load	100
	local.set	93
	local.get	4
	i32.load	96
	local.set	94
	local.get	94
	i32.load	8
	local.set	95
	local.get	95
	i32.load	8
	local.set	96
	local.get	4
	i32.load	92
	local.set	97
	i32.const	24
	local.set	98
	local.get	97
	local.get	98
	i32.mul 
	local.set	99
	local.get	96
	local.get	99
	i32.add 
	local.set	100
	local.get	4
	i32.load	108
	local.set	101
	local.get	101
	i32.load	12
	local.set	102
	local.get	102
	i32.load	8
	local.set	103
	local.get	4
	i32.load	92
	local.set	104
	i32.const	2
	local.set	105
	local.get	104
	local.get	105
	i32.shl 
	local.set	106
	local.get	103
	local.get	106
	i32.add 
	local.set	107
	local.get	107
	i32.load	0
	local.set	108
	local.get	4
	i32.load	104
	local.set	109
	local.get	108
	local.get	109
	call	ast_eval
	local.set	110
	i32.const	16
	local.set	111
	local.get	100
	local.get	111
	i32.add 
	local.set	112
	local.get	112
	i64.load	0:p2align=2
	local.set	113
	i32.const	64
	local.set	114
	local.get	4
	local.get	114
	i32.add 
	local.set	115
	local.get	115
	local.get	111
	i32.add 
	local.set	116
	local.get	116
	local.get	113
	i64.store	0
	i32.const	8
	local.set	117
	local.get	100
	local.get	117
	i32.add 
	local.set	118
	local.get	118
	i64.load	0:p2align=2
	local.set	119
	i32.const	64
	local.set	120
	local.get	4
	local.get	120
	i32.add 
	local.set	121
	local.get	121
	local.get	117
	i32.add 
	local.set	122
	local.get	122
	local.get	119
	i64.store	0
	local.get	100
	i64.load	0:p2align=2
	local.set	123
	local.get	4
	local.get	123
	i64.store	64
	i32.const	64
	local.set	124
	local.get	4
	local.get	124
	i32.add 
	local.set	125
	local.get	93
	local.get	125
	local.get	110
	call	env_define
# %bb.7:                                #   in Loop: Header=BB13_5 Depth=1
	local.get	4
	i32.load	92
	local.set	126
	i32.const	1
	local.set	127
	local.get	126
	local.get	127
	i32.add 
	local.set	128
	local.get	4
	local.get	128
	i32.store	92
	br      	0                               # 0: up to label68
.LBB13_8:
	end_loop
	end_block                               # label67:
	local.get	4
	i32.load	96
	local.set	129
	local.get	129
	i32.load	12
	local.set	130
	local.get	4
	i32.load	100
	local.set	131
	local.get	130
	local.get	131
	call	ast_eval
	local.set	132
	local.get	4
	local.get	132
	i32.store	88
	local.get	4
	i32.load	100
	local.set	133
	local.get	133
	call	env_free
	local.get	4
	i32.load	88
	local.set	134
	i32.const	112
	local.set	135
	local.get	4
	local.get	135
	i32.add 
	local.set	136
	local.get	136
	global.set	__stack_pointer
	local.get	134
	return
	end_function
.Lfunc_end13:
	.size	ast_call_eval, .Lfunc_end13-ast_call_eval
                                        # -- End function
	.section	.text.ast_print_eval,"",@
	.hidden	ast_print_eval                  # -- Begin function ast_print_eval
	.globl	ast_print_eval
	.type	ast_print_eval,@function
ast_print_eval:                         # @ast_print_eval
	.functype	ast_print_eval (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	i32.load	8
	local.set	6
	local.get	4
	i32.load	8
	local.set	7
	local.get	6
	local.get	7
	call	ast_eval
	local.set	8
	local.get	4
	local.get	8
	i32.store	4
	local.get	4
	i32.load	4
	local.set	9
	local.get	9
	call	sobject_to_string
	local.set	10
	local.get	4
	local.get	10
	i32.store	0
	i32.const	.L.str.7
	local.set	11
	local.get	11
	local.get	4
	call	printf
	drop
	local.get	4
	i32.load	4
	local.set	12
	i32.const	16
	local.set	13
	local.get	4
	local.get	13
	i32.add 
	local.set	14
	local.get	14
	global.set	__stack_pointer
	local.get	12
	return
	end_function
.Lfunc_end14:
	.size	ast_print_eval, .Lfunc_end14-ast_print_eval
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata..L.str,"S",@
.L.str:
	.asciz	"RuntimeError"
	.size	.L.str, 13

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata..L.str.1,"S",@
.L.str.1:
	.asciz	"Wrong operator for unary: %s"
	.size	.L.str.1, 29

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata..L.str.2,"S",@
.L.str.2:
	.asciz	"invalid operand type for binary operator + "
	.size	.L.str.2, 44

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata..L.str.3,"S",@
.L.str.3:
	.asciz	"Wrong operator for binary: %s"
	.size	.L.str.3, 30

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata..L.str.4,"S",@
.L.str.4:
	.asciz	"Not a literal"
	.size	.L.str.4, 14

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata..L.str.5,"S",@
.L.str.5:
	.asciz	"Object not callable"
	.size	.L.str.5, 20

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata..L.str.6,"S",@
.L.str.6:
	.asciz	"Function take %d parameters but only %d arguments given"
	.size	.L.str.6, 56

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata..L.str.7,"S",@
.L.str.7:
	.asciz	"%s\n"
	.size	.L.str.7, 4

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
	.section	.rodata..L.str.7,"S",@
