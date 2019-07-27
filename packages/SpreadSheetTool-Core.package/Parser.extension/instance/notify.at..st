*SpreadSheetTool-Core-error handling
notify: string at: location
	"SqueakSheet: pass context here"

	cue requestor isNil
		ifTrue: [| notification |
			(encoder == self or: [encoder isNil]) ifTrue: [^ self fail  "failure setting up syntax error"].
			(notification := SyntaxErrorNotification
					inClass: encoder classEncoding
					inContext: cue context
					withCode: 
						(source contents asText
							copyReplaceFrom: location
							to: location - 1
							with: ((string , ' ->') asText allBold 
								addAttribute: TextColor red; yourself))
					doitFlag: doitFlag
					errorMessage: string
					location: location) signal.
			notification tryNewSourceIfAvailable]
		ifFalse: [cue requestor
					notify: string , ' ->'
					at: location
					in: source].
	^self fail