initialize-release
update: what with: something

	(#(object "contents") includes: what) ifTrue: [
		^ self setter ifNotNil: [(self executeMethod: setter) value: something]].
	
	^ super update: what with: something