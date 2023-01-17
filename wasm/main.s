	.text
	.file	"main.c"
	.section	.text.interpret,"",@
	.hidden	interpret                       # -- Begin function interpret
	.globl	interpret
	.globaltype	__stack_pointer, i32
	.functype	env_new (i32) -> (i32)
	.functype	lex (i32, i32) -> (i32)
	.functype	parse (i32) -> (i32)
	.functype	ast_eval (i32, i32) -> (i32)
	.functype	astlist_free (i32) -> ()
	.functype	tokenlist_free (i32) -> ()
	.functype	fopen (i32, i32) -> (i32)
	.functype	fseek (i32, i32, i32) -> (i32)
	.functype	ftell (i32) -> (i32)
	.functype	malloc (i32) -> (i32)
	.functype	fread (i32, i32, i32, i32) -> (i32)
	.functype	fclose (i32) -> (i32)
	.functype	free (i32) -> ()
	.functype	fgets (i32, i32, i32) -> (i32)
	.type	interpret,@function
interpret:                              # @interpret
	.functype	interpret (i32) -> ()
	.local  	i32
# %bb.0:
	global.get	__stack_pointer
	i32.const	32
	i32.sub 
	local.tee	1
	global.set	__stack_pointer
	local.get	1
	local.get	0
	i32.store	28
	local.get	1
	i32.const	0
	call	env_new
	i32.store	24
	local.get	1
	local.get	1
	i32.load	28
	i32.const	4294967295
	call	lex
	i32.store	20
	local.get	1
	local.get	1
	i32.load	20
	call	parse
	i32.store	16
	local.get	1
	i32.const	0
	i32.store	12
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label1:
	local.get	1
	i32.load	12
	local.get	1
	i32.load	16
	i32.load	0
	i32.lt_u
	i32.const	1
	i32.and 
	i32.eqz
	br_if   	1                               # 1: down to label0
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	local.get	1
	i32.load	16
	i32.load	8
	local.get	1
	i32.load	12
	i32.const	2
	i32.shl 
	i32.add 
	i32.load	0
	local.get	1
	i32.load	24
	call	ast_eval
	drop
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	local.get	1
	local.get	1
	i32.load	12
	i32.const	1
	i32.add 
	i32.store	12
	br      	0                               # 0: up to label1
.LBB0_4:
	end_loop
	end_block                               # label0:
	local.get	1
	i32.load	16
	call	astlist_free
	local.get	1
	i32.load	20
	call	tokenlist_free
	local.get	1
	i32.const	32
	i32.add 
	global.set	__stack_pointer
                                        # fallthrough-return
	end_function
.Lfunc_end0:
	.size	interpret, .Lfunc_end0-interpret
                                        # -- End function
	.section	.text.__main_argc_argv,"",@
	.hidden	__main_argc_argv                # -- Begin function __main_argc_argv
	.globl	__main_argc_argv
	.type	__main_argc_argv,@function
__main_argc_argv:                       # @__main_argc_argv
	.functype	__main_argc_argv (i32, i32) -> (i32)
	.local  	i32
# %bb.0:
	global.get	__stack_pointer
	i32.const	4144
	i32.sub 
	local.tee	2
	global.set	__stack_pointer
	local.get	2
	i32.const	0
	i32.store	4140
	local.get	2
	local.get	0
	i32.store	4136
	local.get	2
	local.get	1
	i32.store	4132
	block   	
	block   	
	local.get	2
	i32.load	4136
	i32.const	1
	i32.gt_s
	i32.const	1
	i32.and 
	i32.eqz
	br_if   	0                               # 0: down to label3
# %bb.1:
	local.get	2
	i32.const	1
	i32.store	4128
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	block   	
	loop    	                                # label5:
	local.get	2
	i32.load	4128
	local.get	2
	i32.load	4136
	i32.lt_s
	i32.const	1
	i32.and 
	i32.eqz
	br_if   	1                               # 1: down to label4
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	local.get	2
	local.get	2
	i32.load	4132
	local.get	2
	i32.load	4128
	i32.const	2
	i32.shl 
	i32.add 
	i32.load	0
	i32.const	.L.str
	call	fopen
	i32.store	4124
	local.get	2
	i32.load	4124
	i32.const	0
	i32.const	2
	call	fseek
	drop
	local.get	2
	local.get	2
	i32.load	4124
	call	ftell
	i32.store	4120
	local.get	2
	i32.load	4124
	i32.const	0
	i32.const	0
	call	fseek
	drop
	local.get	2
	local.get	2
	i32.load	4120
	i32.const	1
	i32.add 
	call	malloc
	i32.store	4116
	local.get	2
	i32.load	4116
	local.get	2
	i32.load	4120
	i32.const	1
	local.get	2
	i32.load	4124
	call	fread
	drop
	local.get	2
	i32.load	4124
	call	fclose
	drop
	local.get	2
	i32.load	4116
	local.get	2
	i32.load	4120
	i32.add 
	i32.const	0
	i32.store8	0
	local.get	2
	i32.load	4116
	call	interpret
	local.get	2
	i32.load	4116
	call	free
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	local.get	2
	local.get	2
	i32.load	4128
	i32.const	1
	i32.add 
	i32.store	4128
	br      	0                               # 0: up to label5
.LBB1_5:
	end_loop
	end_block                               # label4:
	br      	1                               # 1: down to label2
.LBB1_6:
	end_block                               # label3:
	local.get	2
	i32.const	0
	call	env_new
	i32.store	12
.LBB1_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
	block   	
	loop    	                                # label7:
	local.get	2
	i32.const	16
	i32.add 
	i32.const	4096
	i32.const	0
	i32.load	stdin
	call	fgets
	i32.const	0
	i32.ne  
	i32.const	1
	i32.and 
	i32.eqz
	br_if   	1                               # 1: down to label6
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=1
	local.get	2
	local.get	2
	i32.const	16
	i32.add 
	i32.const	4294967295
	call	lex
	i32.store	8
	local.get	2
	local.get	2
	i32.load	8
	call	parse
	i32.store	4
	local.get	2
	i32.const	0
	i32.store	0
.LBB1_9:                                #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	block   	
	loop    	                                # label9:
	local.get	2
	i32.load	0
	local.get	2
	i32.load	4
	i32.load	0
	i32.lt_u
	i32.const	1
	i32.and 
	i32.eqz
	br_if   	1                               # 1: down to label8
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=2
	local.get	2
	i32.load	4
	i32.load	8
	local.get	2
	i32.load	0
	i32.const	2
	i32.shl 
	i32.add 
	i32.load	0
	local.get	2
	i32.load	12
	call	ast_eval
	drop
# %bb.11:                               #   in Loop: Header=BB1_9 Depth=2
	local.get	2
	local.get	2
	i32.load	0
	i32.const	1
	i32.add 
	i32.store	0
	br      	0                               # 0: up to label9
.LBB1_12:                               #   in Loop: Header=BB1_7 Depth=1
	end_loop
	end_block                               # label8:
	local.get	2
	i32.load	4
	call	astlist_free
	local.get	2
	i32.load	8
	call	tokenlist_free
	br      	0                               # 0: up to label7
.LBB1_13:
	end_loop
	end_block                               # label6:
.LBB1_14:
	end_block                               # label2:
	local.get	2
	i32.const	4144
	i32.add 
	global.set	__stack_pointer
	i32.const	0
                                        # fallthrough-return
	end_function
.Lfunc_end1:
	.size	__main_argc_argv, .Lfunc_end1-__main_argc_argv
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata..L.str,"S",@
.L.str:
	.asciz	"r"
	.size	.L.str, 2

	.ident	"clang version 14.0.6"
	.size	stdin, 4
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
