testing data
someString

	^ 'self assert: [(#(''C++'' Java ''C#'' Smalltalk) collect: #flavor) isSorted]'