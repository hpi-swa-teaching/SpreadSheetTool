accessing
object: anObject

	object := anObject.
	super contents: anObject printString.
	self contentsChanged