interaction
requestConfiguration: aClass onCancel: aBlock

	^ (self newFor: aClass) requestConfiguration ifNil: aBlock