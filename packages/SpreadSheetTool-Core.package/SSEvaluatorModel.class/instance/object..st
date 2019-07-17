accessing
object: anObject

	object := anObject.
	self contents: anObject printString.
	self changed: #object; contentsChanged.