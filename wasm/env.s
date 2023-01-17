	.text
	.file	"env.c"
	.section	.text.env_new,"",@
	.hidden	env_new                         # -- Begin function env_new
	.globl	env_new
	.globaltype	__stack_pointer, i32
	.functype	malloc (i32) -> (i32)
	.functype	generic_error (i32, i32, i32, i32) -> ()
	.functype	realloc (i32, i32) -> (i32)
	.functype	free (i32) -> ()
	.functype	strcmp (i32, i32) -> (i32)
	.type	env_new,@function
env_new:                                # @env_new
	.functype	env_new (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	i32.const	20
	local.set	4
	local.get	4
	call	malloc
	local.set	5
	local.get	3
	local.get	5
	i32.store	8
	local.get	3
	i32.load	12
	local.set	6
	local.get	3
	i32.load	8
	local.set	7
	local.get	7
	local.get	6
	i32.store	0
	local.get	3
	i32.load	8
	local.set	8
	i32.const	1024
	local.set	9
	local.get	8
	local.get	9
	i32.store	16
	local.get	3
	i32.load	8
	local.set	10
	i32.const	0
	local.set	11
	local.get	10
	local.get	11
	i32.store	12
	local.get	3
	i32.load	8
	local.set	12
	local.get	12
	i32.load	16
	local.set	13
	i32.const	2
	local.set	14
	local.get	13
	local.get	14
	i32.shl 
	local.set	15
	local.get	15
	call	malloc
	local.set	16
	local.get	3
	i32.load	8
	local.set	17
	local.get	17
	local.get	16
	i32.store	4
	local.get	3
	i32.load	8
	local.set	18
	local.get	18
	i32.load	16
	local.set	19
	i32.const	2
	local.set	20
	local.get	19
	local.get	20
	i32.shl 
	local.set	21
	local.get	21
	call	malloc
	local.set	22
	local.get	3
	i32.load	8
	local.set	23
	local.get	23
	local.get	22
	i32.store	8
	local.get	3
	i32.load	8
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
	.size	env_new, .Lfunc_end0-env_new
                                        # -- End function
	.section	.text.env_lookup,"",@
	.hidden	env_lookup                      # -- Begin function env_lookup
	.globl	env_lookup
	.type	env_lookup,@function
env_lookup:                             # @env_lookup
	.functype	env_lookup (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	i32.load	88
	local.set	5
	i32.const	16
	local.set	6
	local.get	1
	local.get	6
	i32.add 
	local.set	7
	local.get	7
	i64.load	0:p2align=2
	local.set	8
	i32.const	56
	local.set	9
	local.get	4
	local.get	9
	i32.add 
	local.set	10
	local.get	10
	local.get	6
	i32.add 
	local.set	11
	local.get	11
	local.get	8
	i64.store	0
	i32.const	8
	local.set	12
	local.get	1
	local.get	12
	i32.add 
	local.set	13
	local.get	13
	i64.load	0:p2align=2
	local.set	14
	i32.const	56
	local.set	15
	local.get	4
	local.get	15
	i32.add 
	local.set	16
	local.get	16
	local.get	12
	i32.add 
	local.set	17
	local.get	17
	local.get	14
	i64.store	0
	local.get	1
	i64.load	0:p2align=2
	local.set	18
	local.get	4
	local.get	18
	i64.store	56
	i32.const	56
	local.set	19
	local.get	4
	local.get	19
	i32.add 
	local.set	20
	local.get	5
	local.get	20
	call	env_find
	local.set	21
	local.get	4
	local.get	21
	i32.store	84
	local.get	4
	i32.load	84
	local.set	22
	i32.const	0
	local.set	23
	local.get	22
	local.set	24
	local.get	23
	local.set	25
	local.get	24
	local.get	25
	i32.ne  
	local.set	26
	i32.const	1
	local.set	27
	local.get	26
	local.get	27
	i32.and 
	local.set	28
	block   	
	block   	
	local.get	28
	br_if   	0                               # 0: down to label1
# %bb.1:
	local.get	4
	i32.load	88
	local.set	29
	local.get	29
	i32.load	0
	local.set	30
	i32.const	0
	local.set	31
	local.get	30
	local.set	32
	local.get	31
	local.set	33
	local.get	32
	local.get	33
	i32.ne  
	local.set	34
	i32.const	1
	local.set	35
	local.get	34
	local.get	35
	i32.and 
	local.set	36
	block   	
	local.get	36
	i32.eqz
	br_if   	0                               # 0: down to label2
# %bb.2:
	local.get	4
	i32.load	88
	local.set	37
	local.get	37
	i32.load	0
	local.set	38
	i32.const	16
	local.set	39
	local.get	1
	local.get	39
	i32.add 
	local.set	40
	local.get	40
	i64.load	0:p2align=2
	local.set	41
	i32.const	8
	local.set	42
	local.get	4
	local.get	42
	i32.add 
	local.set	43
	local.get	43
	local.get	39
	i32.add 
	local.set	44
	local.get	44
	local.get	41
	i64.store	0
	i32.const	8
	local.set	45
	local.get	1
	local.get	45
	i32.add 
	local.set	46
	local.get	46
	i64.load	0:p2align=2
	local.set	47
	i32.const	8
	local.set	48
	local.get	4
	local.get	48
	i32.add 
	local.set	49
	local.get	49
	local.get	45
	i32.add 
	local.set	50
	local.get	50
	local.get	47
	i64.store	0
	local.get	1
	i64.load	0:p2align=2
	local.set	51
	local.get	4
	local.get	51
	i64.store	8
	i32.const	8
	local.set	52
	local.get	4
	local.get	52
	i32.add 
	local.set	53
	local.get	38
	local.get	53
	call	env_lookup
	local.set	54
	local.get	4
	local.get	54
	i32.store	92
	br      	2                               # 2: down to label0
.LBB1_3:
	end_block                               # label2:
	i32.const	16
	local.set	55
	local.get	1
	local.get	55
	i32.add 
	local.set	56
	local.get	56
	i64.load	0:p2align=2
	local.set	57
	i32.const	32
	local.set	58
	local.get	4
	local.get	58
	i32.add 
	local.set	59
	local.get	59
	local.get	55
	i32.add 
	local.set	60
	local.get	60
	local.get	57
	i64.store	0
	i32.const	8
	local.set	61
	local.get	1
	local.get	61
	i32.add 
	local.set	62
	local.get	62
	i64.load	0:p2align=2
	local.set	63
	i32.const	32
	local.set	64
	local.get	4
	local.get	64
	i32.add 
	local.set	65
	local.get	65
	local.get	61
	i32.add 
	local.set	66
	local.get	66
	local.get	63
	i64.store	0
	local.get	1
	i64.load	0:p2align=2
	local.set	67
	local.get	4
	local.get	67
	i64.store	32
	i32.const	.L.str.1
	local.set	68
	i32.const	.L.str
	local.set	69
	i32.const	0
	local.set	70
	i32.const	32
	local.set	71
	local.get	4
	local.get	71
	i32.add 
	local.set	72
	local.get	69
	local.get	72
	local.get	68
	local.get	70
	call	generic_error
	unreachable
.LBB1_4:
	end_block                               # label1:
	local.get	4
	i32.load	84
	local.set	73
	local.get	73
	i32.load	0
	local.set	74
	local.get	4
	local.get	74
	i32.store	92
.LBB1_5:
	end_block                               # label0:
	local.get	4
	i32.load	92
	local.set	75
	i32.const	96
	local.set	76
	local.get	4
	local.get	76
	i32.add 
	local.set	77
	local.get	77
	global.set	__stack_pointer
	local.get	75
	return
	end_function
.Lfunc_end1:
	.size	env_lookup, .Lfunc_end1-env_lookup
                                        # -- End function
	.section	.text.env_find,"",@
	.type	env_find,@function              # -- Begin function env_find
env_find:                               # @env_find
	.functype	env_find (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	i32.const	0
	local.set	5
	local.get	4
	local.get	5
	i32.store	4
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	block   	
	block   	
	loop    	                                # label5:
	local.get	4
	i32.load	4
	local.set	6
	local.get	4
	i32.load	8
	local.set	7
	local.get	7
	i32.load	12
	local.set	8
	local.get	6
	local.set	9
	local.get	8
	local.set	10
	local.get	9
	local.get	10
	i32.lt_u
	local.set	11
	i32.const	1
	local.set	12
	local.get	11
	local.get	12
	i32.and 
	local.set	13
	local.get	13
	i32.eqz
	br_if   	1                               # 1: down to label4
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	local.get	1
	i32.load	4
	local.set	14
	local.get	4
	i32.load	8
	local.set	15
	local.get	15
	i32.load	4
	local.set	16
	local.get	4
	i32.load	4
	local.set	17
	i32.const	2
	local.set	18
	local.get	17
	local.get	18
	i32.shl 
	local.set	19
	local.get	16
	local.get	19
	i32.add 
	local.set	20
	local.get	20
	i32.load	0
	local.set	21
	local.get	14
	local.set	22
	local.get	21
	local.set	23
	local.get	22
	local.get	23
	i32.eq  
	local.set	24
	i32.const	1
	local.set	25
	local.get	24
	local.get	25
	i32.and 
	local.set	26
	block   	
	block   	
	local.get	26
	br_if   	0                               # 0: down to label7
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	local.get	1
	i32.load	4
	local.set	27
	local.get	4
	i32.load	8
	local.set	28
	local.get	28
	i32.load	4
	local.set	29
	local.get	4
	i32.load	4
	local.set	30
	i32.const	2
	local.set	31
	local.get	30
	local.get	31
	i32.shl 
	local.set	32
	local.get	29
	local.get	32
	i32.add 
	local.set	33
	local.get	33
	i32.load	0
	local.set	34
	local.get	27
	local.get	34
	call	strcmp
	local.set	35
	local.get	35
	br_if   	1                               # 1: down to label6
.LBB2_4:
	end_block                               # label7:
	local.get	4
	i32.load	8
	local.set	36
	local.get	36
	i32.load	8
	local.set	37
	local.get	4
	i32.load	4
	local.set	38
	i32.const	2
	local.set	39
	local.get	38
	local.get	39
	i32.shl 
	local.set	40
	local.get	37
	local.get	40
	i32.add 
	local.set	41
	local.get	4
	local.get	41
	i32.store	12
	br      	3                               # 3: down to label3
.LBB2_5:                                #   in Loop: Header=BB2_1 Depth=1
	end_block                               # label6:
# %bb.6:                                #   in Loop: Header=BB2_1 Depth=1
	local.get	4
	i32.load	4
	local.set	42
	i32.const	1
	local.set	43
	local.get	42
	local.get	43
	i32.add 
	local.set	44
	local.get	4
	local.get	44
	i32.store	4
	br      	0                               # 0: up to label5
.LBB2_7:
	end_loop
	end_block                               # label4:
	i32.const	0
	local.set	45
	local.get	4
	local.get	45
	i32.store	12
.LBB2_8:
	end_block                               # label3:
	local.get	4
	i32.load	12
	local.set	46
	i32.const	16
	local.set	47
	local.get	4
	local.get	47
	i32.add 
	local.set	48
	local.get	48
	global.set	__stack_pointer
	local.get	46
	return
	end_function
.Lfunc_end2:
	.size	env_find, .Lfunc_end2-env_find
                                        # -- End function
	.section	.text.env_define,"",@
	.hidden	env_define                      # -- Begin function env_define
	.globl	env_define
	.type	env_define,@function
env_define:                             # @env_define
	.functype	env_define (i32, i32, i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	64
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	global.set	__stack_pointer
	local.get	5
	local.get	0
	i32.store	60
	local.get	5
	local.get	2
	i32.store	56
	local.get	5
	i32.load	60
	local.set	6
	i32.const	16
	local.set	7
	local.get	1
	local.get	7
	i32.add 
	local.set	8
	local.get	8
	i64.load	0:p2align=2
	local.set	9
	i32.const	24
	local.set	10
	local.get	5
	local.get	10
	i32.add 
	local.set	11
	local.get	11
	local.get	7
	i32.add 
	local.set	12
	local.get	12
	local.get	9
	i64.store	0
	i32.const	8
	local.set	13
	local.get	1
	local.get	13
	i32.add 
	local.set	14
	local.get	14
	i64.load	0:p2align=2
	local.set	15
	i32.const	24
	local.set	16
	local.get	5
	local.get	16
	i32.add 
	local.set	17
	local.get	17
	local.get	13
	i32.add 
	local.set	18
	local.get	18
	local.get	15
	i64.store	0
	local.get	1
	i64.load	0:p2align=2
	local.set	19
	local.get	5
	local.get	19
	i64.store	24
	i32.const	24
	local.set	20
	local.get	5
	local.get	20
	i32.add 
	local.set	21
	local.get	6
	local.get	21
	call	env_find
	local.set	22
	local.get	5
	local.get	22
	i32.store	52
	local.get	5
	i32.load	52
	local.set	23
	i32.const	0
	local.set	24
	local.get	23
	local.set	25
	local.get	24
	local.set	26
	local.get	25
	local.get	26
	i32.ne  
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
	br_if   	0                               # 0: down to label8
# %bb.1:
	i32.const	16
	local.set	30
	local.get	1
	local.get	30
	i32.add 
	local.set	31
	local.get	31
	i64.load	0:p2align=2
	local.set	32
	local.get	5
	local.get	30
	i32.add 
	local.set	33
	local.get	33
	local.get	32
	i64.store	0
	i32.const	8
	local.set	34
	local.get	1
	local.get	34
	i32.add 
	local.set	35
	local.get	35
	i64.load	0:p2align=2
	local.set	36
	local.get	5
	local.get	34
	i32.add 
	local.set	37
	local.get	37
	local.get	36
	i64.store	0
	local.get	1
	i64.load	0:p2align=2
	local.set	38
	local.get	5
	local.get	38
	i64.store	0
	i32.const	.L.str.2
	local.set	39
	i32.const	.L.str
	local.set	40
	i32.const	0
	local.set	41
	local.get	40
	local.get	5
	local.get	39
	local.get	41
	call	generic_error
	unreachable
.LBB3_2:
	end_block                               # label8:
	local.get	5
	i32.load	60
	local.set	42
	local.get	42
	i32.load	12
	local.set	43
	local.get	5
	i32.load	60
	local.set	44
	local.get	44
	i32.load	16
	local.set	45
	local.get	43
	local.set	46
	local.get	45
	local.set	47
	local.get	46
	local.get	47
	i32.eq  
	local.set	48
	i32.const	1
	local.set	49
	local.get	48
	local.get	49
	i32.and 
	local.set	50
	block   	
	local.get	50
	i32.eqz
	br_if   	0                               # 0: down to label9
# %bb.3:
	local.get	5
	i32.load	60
	local.set	51
	local.get	51
	i32.load	16
	local.set	52
	i32.const	1
	local.set	53
	local.get	52
	local.get	53
	i32.shl 
	local.set	54
	local.get	51
	local.get	54
	i32.store	16
	local.get	5
	i32.load	60
	local.set	55
	local.get	55
	i32.load	4
	local.set	56
	local.get	5
	i32.load	60
	local.set	57
	local.get	57
	i32.load	16
	local.set	58
	i32.const	2
	local.set	59
	local.get	58
	local.get	59
	i32.shl 
	local.set	60
	local.get	56
	local.get	60
	call	realloc
	local.set	61
	local.get	5
	i32.load	60
	local.set	62
	local.get	62
	local.get	61
	i32.store	4
	local.get	5
	i32.load	60
	local.set	63
	local.get	63
	i32.load	8
	local.set	64
	local.get	5
	i32.load	60
	local.set	65
	local.get	65
	i32.load	16
	local.set	66
	i32.const	2
	local.set	67
	local.get	66
	local.get	67
	i32.shl 
	local.set	68
	local.get	64
	local.get	68
	call	realloc
	local.set	69
	local.get	5
	i32.load	60
	local.set	70
	local.get	70
	local.get	69
	i32.store	8
.LBB3_4:
	end_block                               # label9:
	local.get	1
	i32.load	4
	local.set	71
	local.get	5
	i32.load	60
	local.set	72
	local.get	72
	i32.load	4
	local.set	73
	local.get	5
	i32.load	60
	local.set	74
	local.get	74
	i32.load	12
	local.set	75
	i32.const	2
	local.set	76
	local.get	75
	local.get	76
	i32.shl 
	local.set	77
	local.get	73
	local.get	77
	i32.add 
	local.set	78
	local.get	78
	local.get	71
	i32.store	0
	local.get	5
	i32.load	56
	local.set	79
	local.get	5
	i32.load	60
	local.set	80
	local.get	80
	i32.load	8
	local.set	81
	local.get	5
	i32.load	60
	local.set	82
	local.get	82
	i32.load	12
	local.set	83
	i32.const	2
	local.set	84
	local.get	83
	local.get	84
	i32.shl 
	local.set	85
	local.get	81
	local.get	85
	i32.add 
	local.set	86
	local.get	86
	local.get	79
	i32.store	0
	local.get	5
	i32.load	60
	local.set	87
	local.get	87
	i32.load	12
	local.set	88
	i32.const	1
	local.set	89
	local.get	88
	local.get	89
	i32.add 
	local.set	90
	local.get	87
	local.get	90
	i32.store	12
	i32.const	64
	local.set	91
	local.get	5
	local.get	91
	i32.add 
	local.set	92
	local.get	92
	global.set	__stack_pointer
	return
	end_function
.Lfunc_end3:
	.size	env_define, .Lfunc_end3-env_define
                                        # -- End function
	.section	.text.env_assign,"",@
	.hidden	env_assign                      # -- Begin function env_assign
	.globl	env_assign
	.type	env_assign,@function
env_assign:                             # @env_assign
	.functype	env_assign (i32, i32, i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32
# %bb.0:
	global.get	__stack_pointer
	local.set	3
	i32.const	96
	local.set	4
	local.get	3
	local.get	4
	i32.sub 
	local.set	5
	local.get	5
	global.set	__stack_pointer
	local.get	5
	local.get	0
	i32.store	92
	local.get	5
	local.get	2
	i32.store	88
	local.get	5
	i32.load	92
	local.set	6
	i32.const	16
	local.set	7
	local.get	1
	local.get	7
	i32.add 
	local.set	8
	local.get	8
	i64.load	0:p2align=2
	local.set	9
	i32.const	56
	local.set	10
	local.get	5
	local.get	10
	i32.add 
	local.set	11
	local.get	11
	local.get	7
	i32.add 
	local.set	12
	local.get	12
	local.get	9
	i64.store	0
	i32.const	8
	local.set	13
	local.get	1
	local.get	13
	i32.add 
	local.set	14
	local.get	14
	i64.load	0:p2align=2
	local.set	15
	i32.const	56
	local.set	16
	local.get	5
	local.get	16
	i32.add 
	local.set	17
	local.get	17
	local.get	13
	i32.add 
	local.set	18
	local.get	18
	local.get	15
	i64.store	0
	local.get	1
	i64.load	0:p2align=2
	local.set	19
	local.get	5
	local.get	19
	i64.store	56
	i32.const	56
	local.set	20
	local.get	5
	local.get	20
	i32.add 
	local.set	21
	local.get	6
	local.get	21
	call	env_find
	local.set	22
	local.get	5
	local.get	22
	i32.store	84
	local.get	5
	i32.load	84
	local.set	23
	i32.const	0
	local.set	24
	local.get	23
	local.set	25
	local.get	24
	local.set	26
	local.get	25
	local.get	26
	i32.ne  
	local.set	27
	i32.const	1
	local.set	28
	local.get	27
	local.get	28
	i32.and 
	local.set	29
	block   	
	block   	
	local.get	29
	br_if   	0                               # 0: down to label11
# %bb.1:
	local.get	5
	i32.load	92
	local.set	30
	local.get	30
	i32.load	0
	local.set	31
	i32.const	0
	local.set	32
	local.get	31
	local.set	33
	local.get	32
	local.set	34
	local.get	33
	local.get	34
	i32.ne  
	local.set	35
	i32.const	1
	local.set	36
	local.get	35
	local.get	36
	i32.and 
	local.set	37
	block   	
	block   	
	local.get	37
	i32.eqz
	br_if   	0                               # 0: down to label13
# %bb.2:
	local.get	5
	i32.load	92
	local.set	38
	local.get	38
	i32.load	0
	local.set	39
	local.get	5
	i32.load	88
	local.set	40
	i32.const	16
	local.set	41
	local.get	1
	local.get	41
	i32.add 
	local.set	42
	local.get	42
	i64.load	0:p2align=2
	local.set	43
	i32.const	8
	local.set	44
	local.get	5
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
	local.get	1
	local.get	47
	i32.add 
	local.set	48
	local.get	48
	i64.load	0:p2align=2
	local.set	49
	i32.const	8
	local.set	50
	local.get	5
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
	local.get	1
	i64.load	0:p2align=2
	local.set	53
	local.get	5
	local.get	53
	i64.store	8
	i32.const	8
	local.set	54
	local.get	5
	local.get	54
	i32.add 
	local.set	55
	local.get	39
	local.get	55
	local.get	40
	call	env_assign
	br      	1                               # 1: down to label12
.LBB4_3:
	end_block                               # label13:
	i32.const	16
	local.set	56
	local.get	1
	local.get	56
	i32.add 
	local.set	57
	local.get	57
	i64.load	0:p2align=2
	local.set	58
	i32.const	32
	local.set	59
	local.get	5
	local.get	59
	i32.add 
	local.set	60
	local.get	60
	local.get	56
	i32.add 
	local.set	61
	local.get	61
	local.get	58
	i64.store	0
	i32.const	8
	local.set	62
	local.get	1
	local.get	62
	i32.add 
	local.set	63
	local.get	63
	i64.load	0:p2align=2
	local.set	64
	i32.const	32
	local.set	65
	local.get	5
	local.get	65
	i32.add 
	local.set	66
	local.get	66
	local.get	62
	i32.add 
	local.set	67
	local.get	67
	local.get	64
	i64.store	0
	local.get	1
	i64.load	0:p2align=2
	local.set	68
	local.get	5
	local.get	68
	i64.store	32
	i32.const	.L.str.3
	local.set	69
	i32.const	.L.str
	local.set	70
	i32.const	0
	local.set	71
	i32.const	32
	local.set	72
	local.get	5
	local.get	72
	i32.add 
	local.set	73
	local.get	70
	local.get	73
	local.get	69
	local.get	71
	call	generic_error
	unreachable
.LBB4_4:
	end_block                               # label12:
	br      	1                               # 1: down to label10
.LBB4_5:
	end_block                               # label11:
	local.get	5
	i32.load	88
	local.set	74
	local.get	5
	i32.load	84
	local.set	75
	local.get	75
	local.get	74
	i32.store	0
.LBB4_6:
	end_block                               # label10:
	i32.const	96
	local.set	76
	local.get	5
	local.get	76
	i32.add 
	local.set	77
	local.get	77
	global.set	__stack_pointer
	return
	end_function
.Lfunc_end4:
	.size	env_assign, .Lfunc_end4-env_assign
                                        # -- End function
	.section	.text.env_free,"",@
	.hidden	env_free                        # -- Begin function env_free
	.globl	env_free
	.type	env_free,@function
env_free:                               # @env_free
	.functype	env_free (i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	i32.load	4
	local.set	5
	local.get	5
	call	free
	local.get	3
	i32.load	12
	local.set	6
	local.get	6
	i32.load	8
	local.set	7
	local.get	7
	call	free
	local.get	3
	i32.load	12
	local.set	8
	local.get	8
	call	free
	i32.const	16
	local.set	9
	local.get	3
	local.get	9
	i32.add 
	local.set	10
	local.get	10
	global.set	__stack_pointer
	return
	end_function
.Lfunc_end5:
	.size	env_free, .Lfunc_end5-env_free
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata..L.str,"S",@
.L.str:
	.asciz	"RuntimeError"
	.size	.L.str, 13

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata..L.str.1,"S",@
.L.str.1:
	.asciz	"env_lookup undeclared variable"
	.size	.L.str.1, 31

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata..L.str.2,"S",@
.L.str.2:
	.asciz	"variable declared twice"
	.size	.L.str.2, 24

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata..L.str.3,"S",@
.L.str.3:
	.asciz	"env_assign undeclared variable"
	.size	.L.str.3, 31

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
	.section	.rodata..L.str.3,"S",@
