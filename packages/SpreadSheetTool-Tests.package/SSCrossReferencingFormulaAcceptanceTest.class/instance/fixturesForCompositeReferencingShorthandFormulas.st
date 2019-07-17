testing data
fixturesForCompositeReferencingShorthandFormulas

	^ {
		{ '^ self leftAbove'. 3 @ 3. 2 @ 2 }.
		{ '^ self aboveLeft'. 3 @ 3. 2 @ 2 }.
		{ '^ self leftBelow'. 3 @ 3. 2 @ 4 }.
		{ '^ self belowLeft'. 3 @ 3. 2 @ 4 }.
		{ '^ self rightAbove'. 3 @ 3. 4 @ 2 }.
		{ '^ self aboveRight'. 3 @ 3. 4 @ 2 }.
		{ '^ self rightBelow'. 3 @ 3. 4 @ 4 }.
		{ '^ self belowRight'. 3 @ 3. 4 @ 4 }.
	}