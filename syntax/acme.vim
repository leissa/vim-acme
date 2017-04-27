syn clear
syn case ignore

syn keyword asm65O2Mnemonics adc and asl bit brk clc cld cli clv cmp cpx cpy dec dex dey eor inc inx iny lda ldx ldy lsr nop ora pha php pla plp rol ror rti rts sbc sec sed sei sta stx sty tax tay tsx txa txs tya jmp jsr

syn match asm6502Index ",\s*[xy]" contains=asm6502Mnemonics

syn keyword asm6502Branch bcc bcs beq bmi bne bpl bvc bvs

syn keyword asm6510Illegal slo rla sre rra sax lax dcp isc anc asr arr sbx dop top jam

syn match asmMacroCall		"+[a-z_][a-z0-9_]*"
syn match asmReferenceCall	"\~[a-z_+-.][a-z0-9_+-]*"
syn match asmComment		";.*" contains=asmTodo
syn keyword asmTodo		contained todo fixme xxx warning danger note notice bug
syn region asmString		start=+"+ skip=+\\"+ end=+"+

syn match asmPseudoop		"![a-z]*"hs=s+1
syn keyword asmPseudoop		else

syn match asmLabel		"\<[a-z_+-.][a-z0-9_+-]*\>"

syn match decNumber		"\<\d\+\>"
syn match hexNumber		"\$\x\+\>"
syn match binNumber		"%[01]\+\>"
syn match asmImmediate		"#\$\x\+\>"
syn match asmImmediate		"#\d\+\>"
syn match asmImmediate		"<\$\x\+\>"
syn match asmImmediate		"<\d\+\>"
syn match asmImmediate		">\$\x\+\>"
syn match asmImmediate		">\d\+\>"
syn match asmImmediate		"#<\$\x\+\>"
syn match asmImmediate		"#<\d\+\>"
syn match asmImmediate		"#>\$\x\+\>"
syn match asmImmediate		"#>\d\+\>"

if !exists("did_asm65_syntax_inits")
  let did_rgb_asm_syntax_inits = 1

  hi link asm6510Illegal	Debug
  hi link asm6502Mnemonics	None
  hi link asm6502Index		None
  hi link asm6502Branch		None
  hi link asmString		String
  hi link asmComment		Comment
  hi link asmMacroCall		Type
  hi link asmReferenceCall	Debug
  hi link asmPseudoop		Statement
  hi link asmLabel		Macro

  hi link asmTodo		Debug

  hi link asmImmediate		Number

  hi link hexNumber		Number
  hi link binNumber		Number
  hi link decNumber		Number

endif

let b:current_syntax = "rgbasm"
