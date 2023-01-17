	.text
	.file	"sstring.c"
	.section	.text.sstring_alloc,"",@
	.hidden	sstring_alloc                   # -- Begin function sstring_alloc
	.globl	sstring_alloc
	.globaltype	__stack_pointer, i32
	.functype	strlen (i32) -> (i32)
	.functype	malloc (i32) -> (i32)
	.functype	realloc (i32, i32) -> (i32)
	.functype	vsnprintf (i32, i32, i32, i32) -> (i32)
	.functype	free (i32) -> ()
	.type	sstring_alloc,@function
sstring_alloc:                          # @sstring_alloc
	.functype	sstring_alloc (i32) -> (i32)
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
	call	sstring_getinfo
	local.set	5
	local.get	5
	i32.load	0
	local.set	6
	i32.const	16
	local.set	7
	local.get	3
	local.get	7
	i32.add 
	local.set	8
	local.get	8
	global.set	__stack_pointer
	local.get	6
	return
	end_function
.Lfunc_end0:
	.size	sstring_alloc, .Lfunc_end0-sstring_alloc
                                        # -- End function
	.section	.text.sstring_getinfo,"",@
	.type	sstring_getinfo,@function       # -- Begin function sstring_getinfo
sstring_getinfo:                        # @sstring_getinfo
	.functype	sstring_getinfo (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32
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
	i32.const	-8
	local.set	5
	local.get	4
	local.get	5
	i32.add 
	local.set	6
	local.get	6
	return
	end_function
.Lfunc_end1:
	.size	sstring_getinfo, .Lfunc_end1-sstring_getinfo
                                        # -- End function
	.section	.text.sstring_length,"",@
	.hidden	sstring_length                  # -- Begin function sstring_length
	.globl	sstring_length
	.type	sstring_length,@function
sstring_length:                         # @sstring_length
	.functype	sstring_length (i32) -> (i32)
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
	call	sstring_getinfo
	local.set	5
	local.get	5
	i32.load	4
	local.set	6
	i32.const	16
	local.set	7
	local.get	3
	local.get	7
	i32.add 
	local.set	8
	local.get	8
	global.set	__stack_pointer
	local.get	6
	return
	end_function
.Lfunc_end2:
	.size	sstring_length, .Lfunc_end2-sstring_length
                                        # -- End function
	.section	.text.sstring_from,"",@
	.hidden	sstring_from                    # -- Begin function sstring_from
	.globl	sstring_from
	.type	sstring_from,@function
sstring_from:                           # @sstring_from
	.functype	sstring_from (i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	i32.store	8
	local.get	3
	i32.load	8
	local.set	4
	local.get	4
	call	strlen
	local.set	5
	local.get	3
	local.get	5
	i32.store	4
	local.get	3
	i32.load	4
	local.set	6
	i32.const	8
	local.set	7
	local.get	6
	local.get	7
	i32.add 
	local.set	8
	i32.const	1
	local.set	9
	local.get	8
	local.get	9
	i32.add 
	local.set	10
	local.get	10
	call	malloc
	local.set	11
	local.get	3
	local.get	11
	i32.store	0
	local.get	3
	i32.load	0
	local.set	12
	i32.const	0
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
	block   	
	local.get	18
	br_if   	0                               # 0: down to label1
# %bb.1:
	i32.const	0
	local.set	19
	local.get	3
	local.get	19
	i32.store	12
	br      	1                               # 1: down to label0
.LBB3_2:
	end_block                               # label1:
	local.get	3
	i32.load	4
	local.set	20
	i32.const	1
	local.set	21
	local.get	20
	local.get	21
	i32.add 
	local.set	22
	local.get	3
	i32.load	0
	local.set	23
	local.get	23
	local.get	22
	i32.store	0
	local.get	3
	i32.load	4
	local.set	24
	local.get	3
	i32.load	0
	local.set	25
	local.get	25
	local.get	24
	i32.store	4
	local.get	3
	i32.load	0
	local.set	26
	i32.const	8
	local.set	27
	local.get	26
	local.get	27
	i32.add 
	local.set	28
	local.get	3
	i32.load	8
	local.set	29
	local.get	3
	i32.load	4
	local.set	30
	local.get	28
	local.get	29
	local.get	30
	call	memcpy
	drop
	local.get	3
	i32.load	0
	local.set	31
	i32.const	8
	local.set	32
	local.get	31
	local.get	32
	i32.add 
	local.set	33
	local.get	3
	i32.load	4
	local.set	34
	local.get	33
	local.get	34
	i32.add 
	local.set	35
	i32.const	0
	local.set	36
	local.get	35
	local.get	36
	i32.store8	0
	local.get	3
	i32.load	0
	local.set	37
	i32.const	8
	local.set	38
	local.get	37
	local.get	38
	i32.add 
	local.set	39
	local.get	3
	local.get	39
	i32.store	12
.LBB3_3:
	end_block                               # label0:
	local.get	3
	i32.load	12
	local.set	40
	i32.const	16
	local.set	41
	local.get	3
	local.get	41
	i32.add 
	local.set	42
	local.get	42
	global.set	__stack_pointer
	local.get	40
	return
	end_function
.Lfunc_end3:
	.size	sstring_from, .Lfunc_end3-sstring_from
                                        # -- End function
	.section	.text.sstring_realloc,"",@
	.hidden	sstring_realloc                 # -- Begin function sstring_realloc
	.globl	sstring_realloc
	.type	sstring_realloc,@function
sstring_realloc:                        # @sstring_realloc
	.functype	sstring_realloc (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	i32.const	0
	local.set	6
	local.get	5
	local.set	7
	local.get	6
	local.set	8
	local.get	7
	local.get	8
	i32.eq  
	local.set	9
	i32.const	1
	local.set	10
	local.get	9
	local.get	10
	i32.and 
	local.set	11
	block   	
	block   	
	local.get	11
	i32.eqz
	br_if   	0                               # 0: down to label3
# %bb.1:
	i32.const	0
	local.set	12
	local.get	4
	local.get	12
	i32.store	12
	br      	1                               # 1: down to label2
.LBB4_2:
	end_block                               # label3:
	local.get	4
	i32.load	4
	local.set	13
	local.get	4
	i32.load	8
	local.set	14
	local.get	14
	call	sstring_alloc
	local.set	15
	local.get	13
	local.set	16
	local.get	15
	local.set	17
	local.get	16
	local.get	17
	i32.lt_u
	local.set	18
	i32.const	1
	local.set	19
	local.get	18
	local.get	19
	i32.and 
	local.set	20
	block   	
	local.get	20
	i32.eqz
	br_if   	0                               # 0: down to label4
# %bb.3:
	local.get	4
	i32.load	8
	local.set	21
	local.get	4
	local.get	21
	i32.store	12
	br      	1                               # 1: down to label2
.LBB4_4:
	end_block                               # label4:
	local.get	4
	i32.load	4
	local.set	22
	local.get	4
	i32.load	8
	local.set	23
	local.get	23
	call	sstring_getinfo
	local.set	24
	local.get	24
	local.get	22
	i32.store	0
	local.get	4
	i32.load	8
	local.set	25
	local.get	25
	call	sstring_getinfo
	local.set	26
	local.get	4
	i32.load	4
	local.set	27
	i32.const	8
	local.set	28
	local.get	27
	local.get	28
	i32.add 
	local.set	29
	local.get	26
	local.get	29
	call	realloc
	local.set	30
	local.get	4
	local.get	30
	i32.store	0
	local.get	4
	i32.load	0
	local.set	31
	i32.const	8
	local.set	32
	local.get	31
	local.get	32
	i32.add 
	local.set	33
	local.get	4
	local.get	33
	i32.store	12
.LBB4_5:
	end_block                               # label2:
	local.get	4
	i32.load	12
	local.set	34
	i32.const	16
	local.set	35
	local.get	4
	local.get	35
	i32.add 
	local.set	36
	local.get	36
	global.set	__stack_pointer
	local.get	34
	return
	end_function
.Lfunc_end4:
	.size	sstring_realloc, .Lfunc_end4-sstring_realloc
                                        # -- End function
	.section	.text.sstring_cat,"",@
	.hidden	sstring_cat                     # -- Begin function sstring_cat
	.globl	sstring_cat
	.type	sstring_cat,@function
sstring_cat:                            # @sstring_cat
	.functype	sstring_cat (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	local.get	4
	i32.load	8
	local.set	6
	local.get	4
	i32.load	8
	local.set	7
	local.get	7
	call	strlen
	local.set	8
	local.get	5
	local.get	6
	local.get	8
	call	sstring_catlen
	local.set	9
	i32.const	16
	local.set	10
	local.get	4
	local.get	10
	i32.add 
	local.set	11
	local.get	11
	global.set	__stack_pointer
	local.get	9
	return
	end_function
.Lfunc_end5:
	.size	sstring_cat, .Lfunc_end5-sstring_cat
                                        # -- End function
	.section	.text.sstring_catlen,"",@
	.hidden	sstring_catlen                  # -- Begin function sstring_catlen
	.globl	sstring_catlen
	.type	sstring_catlen,@function
sstring_catlen:                         # @sstring_catlen
	.functype	sstring_catlen (i32, i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	local.get	0
	i32.store	8
	local.get	5
	local.get	1
	i32.store	4
	local.get	5
	local.get	2
	i32.store	0
	local.get	5
	i32.load	8
	local.set	6
	i32.const	0
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
	br_if   	0                               # 0: down to label6
# %bb.1:
	i32.const	0
	local.set	13
	local.get	5
	local.get	13
	i32.store	12
	br      	1                               # 1: down to label5
.LBB6_2:
	end_block                               # label6:
	local.get	5
	i32.load	8
	local.set	14
	local.get	5
	i32.load	0
	local.set	15
	i32.const	1
	local.set	16
	local.get	15
	local.get	16
	i32.add 
	local.set	17
	local.get	14
	local.get	17
	call	sstring_ensure_alloc
	local.set	18
	local.get	5
	local.get	18
	i32.store	8
	local.get	5
	i32.load	8
	local.set	19
	local.get	5
	i32.load	8
	local.set	20
	local.get	20
	call	sstring_length
	local.set	21
	local.get	19
	local.get	21
	i32.add 
	local.set	22
	local.get	5
	i32.load	4
	local.set	23
	local.get	5
	i32.load	0
	local.set	24
	local.get	22
	local.get	23
	local.get	24
	call	memcpy
	drop
	local.get	5
	i32.load	8
	local.set	25
	local.get	5
	i32.load	8
	local.set	26
	local.get	26
	call	sstring_length
	local.set	27
	local.get	5
	i32.load	0
	local.set	28
	local.get	27
	local.get	28
	i32.add 
	local.set	29
	local.get	25
	local.get	29
	i32.add 
	local.set	30
	i32.const	0
	local.set	31
	local.get	30
	local.get	31
	i32.store8	0
	local.get	5
	i32.load	0
	local.set	32
	local.get	5
	i32.load	8
	local.set	33
	local.get	33
	call	sstring_getinfo
	local.set	34
	local.get	34
	i32.load	4
	local.set	35
	local.get	35
	local.get	32
	i32.add 
	local.set	36
	local.get	34
	local.get	36
	i32.store	4
	local.get	5
	i32.load	8
	local.set	37
	local.get	5
	local.get	37
	i32.store	12
.LBB6_3:
	end_block                               # label5:
	local.get	5
	i32.load	12
	local.set	38
	i32.const	16
	local.set	39
	local.get	5
	local.get	39
	i32.add 
	local.set	40
	local.get	40
	global.set	__stack_pointer
	local.get	38
	return
	end_function
.Lfunc_end6:
	.size	sstring_catlen, .Lfunc_end6-sstring_catlen
                                        # -- End function
	.section	.text.sstring_ensure_alloc,"",@
	.type	sstring_ensure_alloc,@function  # -- Begin function sstring_ensure_alloc
sstring_ensure_alloc:                   # @sstring_ensure_alloc
	.functype	sstring_ensure_alloc (i32, i32) -> (i32)
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
	i32.load	8
	local.set	5
	local.get	4
	i32.load	12
	local.set	6
	local.get	6
	call	sstring_length
	local.set	7
	local.get	5
	local.get	7
	i32.add 
	local.set	8
	local.get	8
	call	first_2n_not_less_than
	local.set	9
	local.get	4
	local.get	9
	i32.store	4
	local.get	4
	i32.load	12
	local.set	10
	local.get	4
	i32.load	4
	local.set	11
	local.get	10
	local.get	11
	call	sstring_realloc
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
.Lfunc_end7:
	.size	sstring_ensure_alloc, .Lfunc_end7-sstring_ensure_alloc
                                        # -- End function
	.section	.text.sstring_format,"",@
	.hidden	sstring_format                  # -- Begin function sstring_format
	.globl	sstring_format
	.type	sstring_format,@function
sstring_format:                         # @sstring_format
	.functype	sstring_format (i32, i32) -> (i32)
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	i32.const	8
	local.set	5
	local.get	4
	local.get	5
	i32.add 
	local.set	6
	local.get	6
	local.set	7
	local.get	7
	local.get	1
	i32.store	0
	local.get	4
	i32.load	12
	local.set	8
	local.get	4
	i32.load	8
	local.set	9
	i32.const	0
	local.set	10
	local.get	10
	local.get	10
	local.get	8
	local.get	9
	call	vsnprintf
	local.set	11
	local.get	4
	local.get	11
	i32.store	4
	i32.const	8
	local.set	12
	local.get	4
	local.get	12
	i32.add 
	local.set	13
	local.get	13
	drop
	local.get	4
	i32.load	4
	local.set	14
	i32.const	8
	local.set	15
	local.get	14
	local.get	15
	i32.add 
	local.set	16
	i32.const	1
	local.set	17
	local.get	16
	local.get	17
	i32.add 
	local.set	18
	local.get	18
	call	malloc
	local.set	19
	local.get	4
	local.get	19
	i32.store	0
	local.get	4
	i32.load	4
	local.set	20
	i32.const	1
	local.set	21
	local.get	20
	local.get	21
	i32.add 
	local.set	22
	local.get	4
	i32.load	0
	local.set	23
	local.get	23
	local.get	22
	i32.store	0
	local.get	4
	i32.load	4
	local.set	24
	local.get	4
	i32.load	0
	local.set	25
	local.get	25
	local.get	24
	i32.store	4
	i32.const	8
	local.set	26
	local.get	4
	local.get	26
	i32.add 
	local.set	27
	local.get	27
	local.set	28
	local.get	28
	local.get	1
	i32.store	0
	local.get	4
	i32.load	0
	local.set	29
	i32.const	8
	local.set	30
	local.get	29
	local.get	30
	i32.add 
	local.set	31
	local.get	4
	i32.load	4
	local.set	32
	i32.const	1
	local.set	33
	local.get	32
	local.get	33
	i32.add 
	local.set	34
	local.get	4
	i32.load	12
	local.set	35
	local.get	4
	i32.load	8
	local.set	36
	local.get	31
	local.get	34
	local.get	35
	local.get	36
	call	vsnprintf
	drop
	i32.const	8
	local.set	37
	local.get	4
	local.get	37
	i32.add 
	local.set	38
	local.get	38
	drop
	local.get	4
	i32.load	0
	local.set	39
	i32.const	8
	local.set	40
	local.get	39
	local.get	40
	i32.add 
	local.set	41
	i32.const	16
	local.set	42
	local.get	4
	local.get	42
	i32.add 
	local.set	43
	local.get	43
	global.set	__stack_pointer
	local.get	41
	return
	end_function
.Lfunc_end8:
	.size	sstring_format, .Lfunc_end8-sstring_format
                                        # -- End function
	.section	.text.sstring_free,"",@
	.hidden	sstring_free                    # -- Begin function sstring_free
	.globl	sstring_free
	.type	sstring_free,@function
sstring_free:                           # @sstring_free
	.functype	sstring_free (i32) -> ()
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
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
	i32.const	0
	local.set	5
	local.get	4
	local.set	6
	local.get	5
	local.set	7
	local.get	6
	local.get	7
	i32.eq  
	local.set	8
	i32.const	1
	local.set	9
	local.get	8
	local.get	9
	i32.and 
	local.set	10
	block   	
	block   	
	local.get	10
	i32.eqz
	br_if   	0                               # 0: down to label8
# %bb.1:
	br      	1                               # 1: down to label7
.LBB9_2:
	end_block                               # label8:
	local.get	3
	i32.load	12
	local.set	11
	local.get	11
	call	sstring_getinfo
	local.set	12
	local.get	12
	call	free
.LBB9_3:
	end_block                               # label7:
	i32.const	16
	local.set	13
	local.get	3
	local.get	13
	i32.add 
	local.set	14
	local.get	14
	global.set	__stack_pointer
	return
	end_function
.Lfunc_end9:
	.size	sstring_free, .Lfunc_end9-sstring_free
                                        # -- End function
	.section	.text.first_2n_not_less_than,"",@
	.type	first_2n_not_less_than,@function # -- Begin function first_2n_not_less_than
first_2n_not_less_than:                 # @first_2n_not_less_than
	.functype	first_2n_not_less_than (i32) -> (i32)
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
	local.get	0
	i32.store	12
	i32.const	1
	local.set	4
	local.get	3
	local.get	4
	i32.store	8
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label10:
	local.get	3
	i32.load	8
	local.set	5
	local.get	3
	i32.load	12
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
	br_if   	1                               # 1: down to label9
# %bb.2:                                #   in Loop: Header=BB10_1 Depth=1
	local.get	3
	i32.load	8
	local.set	12
	i32.const	1
	local.set	13
	local.get	12
	local.get	13
	i32.shl 
	local.set	14
	local.get	3
	local.get	14
	i32.store	8
	br      	0                               # 0: up to label10
.LBB10_3:
	end_loop
	end_block                               # label9:
	local.get	3
	i32.load	8
	local.set	15
	local.get	15
	return
	end_function
.Lfunc_end10:
	.size	first_2n_not_less_than, .Lfunc_end10-first_2n_not_less_than
                                        # -- End function
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
	.section	.text.first_2n_not_less_than,"",@
