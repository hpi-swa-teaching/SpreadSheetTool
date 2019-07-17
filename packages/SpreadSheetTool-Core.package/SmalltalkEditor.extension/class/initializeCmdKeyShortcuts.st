*SpreadSheetTool-Core-keyboard shortcut table
initializeCmdKeyShortcuts
	"Initialize the (unshifted) command-key (or alt-key) shortcut table."
	"NOTE: if you don't know what your keyboard generates, use Sensor kbdTest"
	"SmalltalkEditor initialize"
	| cmds |
	super initializeCmdKeyShortcuts.
	cmds := #($b #browseIt: $d #doIt: $h #sheetIt: $i #inspectIt: $l #cancel: $m #implementorsOfIt: $n #sendersOfIt: $o #spawnIt: $p #printIt: $q #querySymbol: $s #save: ).
	1 to: cmds size
		by: 2
		do: [ : i | cmdActions at: (cmds at: i) asciiValue + 1 put: (cmds at: i + 1)].
	"Set up type-method argument hot keys, 1-4.."
	'1234' do:
		[ : eachKeyboardChar |
		cmdActions 
			at: eachKeyboardChar asciiValue + 1
			put: #typeMethodArgument: ]