*SpreadSheetTool-Core-keyboard shortcut table
initializeShiftCmdKeyShortcuts 
	"Initialize the shift-command-key (or control-key) shortcut table."
	"NOTE: if you don't know what your keyboard generates, use Sensor kbdTest"
	| cmds |
	super initializeShiftCmdKeyShortcuts.
	cmds := #(
		$a	argAdvance:
		$b	browseItHere:
		$d	debugIt:
		$e	methodStringsContainingIt:
		$f	displayIfFalse:
		$g	fileItIn:
		$i	exploreIt:
		$q	squeakIt:
		$n	referencesToIt:
		$s	invokePrettyPrint:
		$t	displayIfTrue:
		$v	pasteInitials:
		$w	methodNamesContainingIt:
	).
	1 to: cmds size by: 2 do: [ :i |
		shiftCmdActions at: ((cmds at: i) asciiValue + 1) put: (cmds at: i + 1).			"plain keys"
		shiftCmdActions at: ((cmds at: i) asciiValue - 32 + 1) put: (cmds at: i + 1).		"shifted keys"
		shiftCmdActions at: ((cmds at: i) asciiValue - 96 + 1) put: (cmds at: i + 1).		"ctrl keys"
	].
	"shift+cmd _ (underscore)"
	shiftCmdActions at: $_ asciiValue+1 put: #flattenSelection: