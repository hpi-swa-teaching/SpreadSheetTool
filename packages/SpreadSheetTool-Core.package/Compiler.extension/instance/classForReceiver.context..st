*SpreadSheetTool-Core-compatibility-private
classForReceiver: receiver context: contextOrNil
	"Answer the class to compile in for a receiver and aContext.
	 If aContext is non-nil use its receiver's class (if we use the context's
	 methodClass we may exclude instance variables of the receiver).
	 Access the class of the receiver via the mirror primitive to avoid issues with proxies."

	^thisContext objectClass: (contextOrNil ifNil: [receiver] ifNotNil: [contextOrNil receiver])