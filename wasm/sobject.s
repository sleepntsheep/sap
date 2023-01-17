	.text
	.file	"sobject.c"
	.section	.text.sobject_new,"",@
	.hidden	sobject_new                     # -- Begin function sobject_new
	.globl	sobject_new
	.globaltype	__stack_pointer, i32
	.functype	malloc (i32) -> (i32)
	.functype	strcmp (i32, i32) -> (i32)
	.functype	fprintf (i32, i32, i32) -> (i32)
	.functype	exit (i32) -> ()
	.functype	sstring_from (i32) -> (i32)
	.functype	sstring_format (i32, i32) -> (i32)
	.functype	sstring_cat (i32, i32) -> (i32)
	.functype	sstring_free (i32) -> ()
	.functype	tokenlist_free (i32) -> ()
	.functype	free (i32) -> ()
	.type	sobject_new,@function
sobject_new:                            # @sobject_new
	.functype	sobject_new (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32
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
	i32.const	16
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
	i32.const	8
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
	local.get	3
	i32.load	12
	local.set	12
	i32.const	16
	local.set	13
	local.get	3
	local.get	13
	i32.add 
	local.set	14
	local.get	14
	global.set	__stack_pointer
	local.get	12
	return
	end_function
.Lfunc_end0:
	.size	sobject_new, .Lfunc_end0-sobject_new
                                        # -- End function
	.section	.text.sobject_istrue,"",@
	.hidden	sobject_istrue                  # -- Begin function sobject_istrue
	.globl	sobject_istrue
	.type	sobject_istrue,@function
sobject_istrue:                         # @sobject_istrue
	.functype	sobject_istrue (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	i32.store	8
	local.get	3
	i32.load	8
	local.set	4
	local.get	4
	i32.load	0
	local.set	5
	i32.const	1
	local.set	6
	local.get	5
	local.get	6
	i32.gt_u
	local.set	7
	block   	
	block   	
	local.get	7
	br_if   	0                               # 0: down to label1
# %bb.1:
	i32.const	0
	local.set	8
	i32.const	1
	local.set	9
	local.get	8
	local.get	9
	i32.and 
	local.set	10
	local.get	3
	local.get	10
	i32.store8	15
	br      	1                               # 1: down to label0
.LBB1_2:
	end_block                               # label1:
	i32.const	1
	local.set	11
	i32.const	1
	local.set	12
	local.get	11
	local.get	12
	i32.and 
	local.set	13
	local.get	3
	local.get	13
	i32.store8	15
.LBB1_3:
	end_block                               # label0:
	local.get	3
	i32.load8_u	15
	local.set	14
	i32.const	1
	local.set	15
	local.get	14
	local.get	15
	i32.and 
	local.set	16
	local.get	16
	return
	end_function
.Lfunc_end1:
	.size	sobject_istrue, .Lfunc_end1-sobject_istrue
                                        # -- End function
	.section	.text.sobject_isequal,"",@
	.hidden	sobject_isequal                 # -- Begin function sobject_isequal
	.globl	sobject_isequal
	.type	sobject_isequal,@function
sobject_isequal:                        # @sobject_isequal
	.functype	sobject_isequal (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, f64, i32, f64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	i32.store	24
	local.get	4
	local.get	1
	i32.store	20
	local.get	4
	i32.load	24
	local.set	5
	local.get	5
	i32.load	0
	local.set	6
	local.get	4
	i32.load	20
	local.set	7
	local.get	7
	i32.load	0
	local.set	8
	local.get	6
	local.set	9
	local.get	8
	local.set	10
	local.get	9
	local.get	10
	i32.ne  
	local.set	11
	i32.const	1
	local.set	12
	local.get	11
	local.get	12
	i32.and 
	local.set	13
	block   	
	block   	
	local.get	13
	i32.eqz
	br_if   	0                               # 0: down to label3
# %bb.1:
	i32.const	0
	local.set	14
	i32.const	1
	local.set	15
	local.get	14
	local.get	15
	i32.and 
	local.set	16
	local.get	4
	local.get	16
	i32.store8	31
	br      	1                               # 1: down to label2
.LBB2_2:
	end_block                               # label3:
	local.get	4
	i32.load	24
	local.set	17
	local.get	17
	i32.load	0
	local.set	18
	i32.const	6
	local.set	19
	local.get	18
	local.get	19
	i32.gt_u
	drop
	block   	
	block   	
	block   	
	block   	
	local.get	18
	br_table 	{0, 0, 0, 1, 2, 3, 3, 4} # 0: down to label7
                                        # 1: down to label6
                                        # 2: down to label5
                                        # 3: down to label4
                                        # 4: down to label2
.LBB2_3:
	end_block                               # label7:
	i32.const	1
	local.set	20
	i32.const	1
	local.set	21
	local.get	20
	local.get	21
	i32.and 
	local.set	22
	local.get	4
	local.get	22
	i32.store8	31
	br      	3                               # 3: down to label2
.LBB2_4:
	end_block                               # label6:
	local.get	4
	i32.load	24
	local.set	23
	local.get	23
	f64.load	8
	local.set	24
	local.get	4
	i32.load	20
	local.set	25
	local.get	25
	f64.load	8
	local.set	26
	local.get	24
	local.get	26
	f64.eq  
	local.set	27
	i32.const	1
	local.set	28
	local.get	27
	local.get	28
	i32.and 
	local.set	29
	local.get	4
	local.get	29
	i32.store8	31
	br      	2                               # 2: down to label2
.LBB2_5:
	end_block                               # label5:
	local.get	4
	i32.load	24
	local.set	30
	local.get	30
	i32.load	8
	local.set	31
	local.get	4
	i32.load	20
	local.set	32
	local.get	32
	i32.load	8
	local.set	33
	local.get	31
	local.get	33
	call	strcmp
	local.set	34
	i32.const	0
	local.set	35
	local.get	34
	local.set	36
	local.get	35
	local.set	37
	local.get	36
	local.get	37
	i32.ne  
	local.set	38
	i32.const	-1
	local.set	39
	local.get	38
	local.get	39
	i32.xor 
	local.set	40
	i32.const	1
	local.set	41
	local.get	40
	local.get	41
	i32.and 
	local.set	42
	local.get	4
	local.get	42
	i32.store8	31
	br      	1                               # 1: down to label2
.LBB2_6:
	end_block                               # label4:
# %bb.7:
	i32.const	0
	local.set	43
	local.get	43
	i32.load	stderr
	local.set	44
	i32.const	37
	local.set	45
	local.get	4
	local.get	45
	i32.store	4
	i32.const	.L.str.1
	local.set	46
	local.get	4
	local.get	46
	i32.store	0
	i32.const	.L.str
	local.set	47
	local.get	44
	local.get	47
	local.get	4
	call	fprintf
	drop
	i32.const	0
	local.set	48
	local.get	48
	i32.load	stderr
	local.set	49
	i32.const	.L.str.2
	local.set	50
	i32.const	0
	local.set	51
	local.get	49
	local.get	50
	local.get	51
	call	fprintf
	drop
	i32.const	1
	local.set	52
	local.get	52
	call	exit
	unreachable
.LBB2_8:
	end_block                               # label2:
	local.get	4
	i32.load8_u	31
	local.set	53
	i32.const	1
	local.set	54
	local.get	53
	local.get	54
	i32.and 
	local.set	55
	i32.const	32
	local.set	56
	local.get	4
	local.get	56
	i32.add 
	local.set	57
	local.get	57
	global.set	__stack_pointer
	local.get	55
	return
	end_function
.Lfunc_end2:
	.size	sobject_isequal, .Lfunc_end2-sobject_isequal
                                        # -- End function
	.section	.text.sobject_to_string,"",@
	.hidden	sobject_to_string               # -- Begin function sobject_to_string
	.globl	sobject_to_string
	.type	sobject_to_string,@function
sobject_to_string:                      # @sobject_to_string
	.functype	sobject_to_string (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, f64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	1
	i32.const	64
	local.set	2
	local.get	1
	local.get	2
	i32.sub 
	local.set	3
	local.get	3
	global.set	__stack_pointer
	local.get	3
	local.get	0
	i32.store	56
	local.get	3
	i32.load	56
	local.set	4
	local.get	4
	i32.load	0
	local.set	5
	i32.const	6
	local.set	6
	local.get	5
	local.get	6
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
	local.get	5
	br_table 	{2, 0, 1, 3, 4, 5, 6, 7} # 0: down to label15
                                        # 1: down to label14
                                        # 3: down to label12
                                        # 4: down to label11
                                        # 5: down to label10
                                        # 6: down to label9
                                        # 7: down to label8
.LBB3_1:
	end_block                               # label15:
	i32.const	.L.str.3
	local.set	7
	local.get	7
	call	sstring_from
	local.set	8
	local.get	3
	local.get	8
	i32.store	60
	br      	6                               # 6: down to label8
.LBB3_2:
	end_block                               # label14:
	i32.const	.L.str.4
	local.set	9
	local.get	9
	call	sstring_from
	local.set	10
	local.get	3
	local.get	10
	i32.store	60
	br      	5                               # 5: down to label8
.LBB3_3:
	end_block                               # label13:
	i32.const	.L.str.5
	local.set	11
	local.get	11
	call	sstring_from
	local.set	12
	local.get	3
	local.get	12
	i32.store	60
	br      	4                               # 4: down to label8
.LBB3_4:
	end_block                               # label12:
	local.get	3
	i32.load	56
	local.set	13
	local.get	13
	f64.load	8
	local.set	14
	local.get	3
	local.get	14
	f64.store	0
	i32.const	.L.str.6
	local.set	15
	local.get	15
	local.get	3
	call	sstring_format
	local.set	16
	local.get	3
	local.get	16
	i32.store	60
	br      	3                               # 3: down to label8
.LBB3_5:
	end_block                               # label11:
	local.get	3
	i32.load	56
	local.set	17
	local.get	17
	i32.load	8
	local.set	18
	local.get	3
	local.get	18
	i32.store	16
	i32.const	.L.str.7
	local.set	19
	i32.const	16
	local.set	20
	local.get	3
	local.get	20
	i32.add 
	local.set	21
	local.get	19
	local.get	21
	call	sstring_format
	local.set	22
	local.get	3
	local.get	22
	i32.store	60
	br      	2                               # 2: down to label8
.LBB3_6:
	end_block                               # label10:
	local.get	3
	i32.load	56
	local.set	23
	local.get	3
	local.get	23
	i32.store	32
	i32.const	.L.str.8
	local.set	24
	i32.const	32
	local.set	25
	local.get	3
	local.get	25
	i32.add 
	local.set	26
	local.get	24
	local.get	26
	call	sstring_format
	local.set	27
	local.get	3
	local.get	27
	i32.store	60
	br      	1                               # 1: down to label8
.LBB3_7:
	end_block                               # label9:
	local.get	3
	i32.load	56
	local.set	28
	local.get	3
	local.get	28
	i32.store	48
	i32.const	.L.str.9
	local.set	29
	i32.const	48
	local.set	30
	local.get	3
	local.get	30
	i32.add 
	local.set	31
	local.get	29
	local.get	31
	call	sstring_format
	local.set	32
	local.get	3
	local.get	32
	i32.store	60
.LBB3_8:
	end_block                               # label8:
	local.get	3
	i32.load	60
	local.set	33
	i32.const	64
	local.set	34
	local.get	3
	local.get	34
	i32.add 
	local.set	35
	local.get	35
	global.set	__stack_pointer
	local.get	33
	return
	end_function
.Lfunc_end3:
	.size	sobject_to_string, .Lfunc_end3-sobject_to_string
                                        # -- End function
	.section	.text.sobject_add,"",@
	.hidden	sobject_add                     # -- Begin function sobject_add
	.globl	sobject_add
	.type	sobject_add,@function
sobject_add:                            # @sobject_add
	.functype	sobject_add (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, f64, i32, f64, f64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	2
	i32.const	96
	local.set	3
	local.get	2
	local.get	3
	i32.sub 
	local.set	4
	local.get	4
	global.set	__stack_pointer
	local.get	4
	local.get	0
	i32.store	88
	local.get	4
	local.get	1
	i32.store	84
	local.get	4
	i32.load	88
	local.set	5
	local.get	5
	i32.load	0
	local.set	6
	i32.const	3
	local.set	7
	local.get	6
	local.set	8
	local.get	7
	local.set	9
	local.get	8
	local.get	9
	i32.eq  
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
	br_if   	0                               # 0: down to label17
# %bb.1:
	local.get	4
	i32.load	84
	local.set	13
	local.get	13
	i32.load	0
	local.set	14
	i32.const	3
	local.set	15
	local.get	14
	local.set	16
	local.get	15
	local.set	17
	local.get	16
	local.get	17
	i32.eq  
	local.set	18
	i32.const	1
	local.set	19
	local.get	18
	local.get	19
	i32.and 
	local.set	20
	local.get	20
	i32.eqz
	br_if   	0                               # 0: down to label17
# %bb.2:
	i32.const	3
	local.set	21
	local.get	4
	local.get	21
	i32.store	64
	local.get	4
	i32.load	88
	local.set	22
	local.get	22
	f64.load	8
	local.set	23
	local.get	4
	i32.load	84
	local.set	24
	local.get	24
	f64.load	8
	local.set	25
	local.get	23
	local.get	25
	f64.add 
	local.set	26
	local.get	4
	local.get	26
	f64.store	72
	i32.const	8
	local.set	27
	i32.const	8
	local.set	28
	local.get	4
	local.get	28
	i32.add 
	local.set	29
	local.get	29
	local.get	27
	i32.add 
	local.set	30
	i32.const	64
	local.set	31
	local.get	4
	local.get	31
	i32.add 
	local.set	32
	local.get	32
	local.get	27
	i32.add 
	local.set	33
	local.get	33
	i64.load	0
	local.set	34
	local.get	30
	local.get	34
	i64.store	0
	local.get	4
	i64.load	64
	local.set	35
	local.get	4
	local.get	35
	i64.store	8
	i32.const	8
	local.set	36
	local.get	4
	local.get	36
	i32.add 
	local.set	37
	local.get	37
	call	sobject_new
	local.set	38
	local.get	4
	local.get	38
	i32.store	92
	br      	1                               # 1: down to label16
.LBB4_3:
	end_block                               # label17:
	local.get	4
	i32.load	88
	local.set	39
	local.get	39
	i32.load	0
	local.set	40
	i32.const	4
	local.set	41
	local.get	40
	local.set	42
	local.get	41
	local.set	43
	local.get	42
	local.get	43
	i32.eq  
	local.set	44
	i32.const	1
	local.set	45
	local.get	44
	local.get	45
	i32.and 
	local.set	46
	block   	
	block   	
	local.get	46
	br_if   	0                               # 0: down to label19
# %bb.4:
	local.get	4
	i32.load	84
	local.set	47
	local.get	47
	i32.load	0
	local.set	48
	i32.const	4
	local.set	49
	local.get	48
	local.set	50
	local.get	49
	local.set	51
	local.get	50
	local.get	51
	i32.eq  
	local.set	52
	i32.const	1
	local.set	53
	local.get	52
	local.get	53
	i32.and 
	local.set	54
	local.get	54
	i32.eqz
	br_if   	1                               # 1: down to label18
.LBB4_5:
	end_block                               # label19:
	i32.const	.L.str.10
	local.set	55
	local.get	55
	call	sstring_from
	local.set	56
	local.get	4
	local.get	56
	i32.store	60
	local.get	4
	i32.load	60
	local.set	57
	local.get	4
	i32.load	88
	local.set	58
	local.get	58
	call	sobject_to_string
	local.set	59
	local.get	57
	local.get	59
	call	sstring_cat
	local.set	60
	local.get	4
	local.get	60
	i32.store	60
	local.get	4
	i32.load	60
	local.set	61
	local.get	4
	i32.load	84
	local.set	62
	local.get	62
	call	sobject_to_string
	local.set	63
	local.get	61
	local.get	63
	call	sstring_cat
	local.set	64
	local.get	4
	local.get	64
	i32.store	60
	local.get	4
	i32.load	88
	local.set	65
	local.get	65
	call	sobject_free
	local.get	4
	i32.load	84
	local.set	66
	local.get	66
	call	sobject_free
	i32.const	4
	local.set	67
	local.get	4
	local.get	67
	i32.store	40
	local.get	4
	i32.load	60
	local.set	68
	local.get	68
	call	sstring_from
	local.set	69
	local.get	4
	local.get	69
	i32.store	48
	i32.const	8
	local.set	70
	i32.const	24
	local.set	71
	local.get	4
	local.get	71
	i32.add 
	local.set	72
	local.get	72
	local.get	70
	i32.add 
	local.set	73
	i32.const	40
	local.set	74
	local.get	4
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
	local.get	4
	i64.load	40
	local.set	78
	local.get	4
	local.get	78
	i64.store	24
	i32.const	24
	local.set	79
	local.get	4
	local.get	79
	i32.add 
	local.set	80
	local.get	80
	call	sobject_new
	local.set	81
	local.get	4
	local.get	81
	i32.store	92
	br      	1                               # 1: down to label16
.LBB4_6:
	end_block                               # label18:
	i32.const	0
	local.set	82
	local.get	4
	local.get	82
	i32.store	92
.LBB4_7:
	end_block                               # label16:
	local.get	4
	i32.load	92
	local.set	83
	i32.const	96
	local.set	84
	local.get	4
	local.get	84
	i32.add 
	local.set	85
	local.get	85
	global.set	__stack_pointer
	local.get	83
	return
	end_function
.Lfunc_end4:
	.size	sobject_add, .Lfunc_end4-sobject_add
                                        # -- End function
	.section	.text.sobject_free,"",@
	.hidden	sobject_free                    # -- Begin function sobject_free
	.globl	sobject_free
	.type	sobject_free,@function
sobject_free:                           # @sobject_free
	.functype	sobject_free (i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	i32.load	0
	local.set	5
	i32.const	-4
	local.set	6
	local.get	5
	local.get	6
	i32.add 
	local.set	7
	i32.const	2
	local.set	8
	local.get	7
	local.get	8
	i32.gt_u
	drop
	block   	
	block   	
	block   	
	block   	
	local.get	7
	br_table 	{0, 2, 1, 2}            # 2: down to label21
                                        # 1: down to label22
.LBB5_1:
	end_block                               # label23:
	local.get	3
	i32.load	12
	local.set	9
	local.get	9
	i32.load	8
	local.set	10
	local.get	10
	call	sstring_free
	br      	2                               # 2: down to label20
.LBB5_2:
	end_block                               # label22:
	local.get	3
	i32.load	12
	local.set	11
	local.get	11
	i32.load	8
	local.set	12
	local.get	12
	call	tokenlist_free
	br      	1                               # 1: down to label20
.LBB5_3:
	end_block                               # label21:
.LBB5_4:
	end_block                               # label20:
	local.get	3
	i32.load	12
	local.set	13
	local.get	13
	call	free
	i32.const	16
	local.set	14
	local.get	3
	local.get	14
	i32.add 
	local.set	15
	local.get	15
	global.set	__stack_pointer
	return
	end_function
.Lfunc_end5:
	.size	sobject_free, .Lfunc_end5-sobject_free
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata..L.str,"S",@
.L.str:
	.asciz	"die at %s:%d: "
	.size	.L.str, 15

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata..L.str.1,"S",@
.L.str.1:
	.asciz	"../src/sobject.c"
	.size	.L.str.1, 17

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata..L.str.2,"S",@
.L.str.2:
	.asciz	"Unimp"
	.size	.L.str.2, 6

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata..L.str.3,"S",@
.L.str.3:
	.asciz	"false"
	.size	.L.str.3, 6

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata..L.str.4,"S",@
.L.str.4:
	.asciz	"true"
	.size	.L.str.4, 5

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata..L.str.5,"S",@
.L.str.5:
	.asciz	"nil"
	.size	.L.str.5, 4

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata..L.str.6,"S",@
.L.str.6:
	.asciz	"%g"
	.size	.L.str.6, 3

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata..L.str.7,"S",@
.L.str.7:
	.asciz	"%s"
	.size	.L.str.7, 3

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata..L.str.8,"S",@
.L.str.8:
	.asciz	"<table: %p>"
	.size	.L.str.8, 12

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata..L.str.9,"S",@
.L.str.9:
	.asciz	"<function: %p>"
	.size	.L.str.9, 15

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata..L.str.10,"S",@
.L.str.10:
	.skip	1
	.size	.L.str.10, 1

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
	.section	.rodata..L.str.10,"S",@
