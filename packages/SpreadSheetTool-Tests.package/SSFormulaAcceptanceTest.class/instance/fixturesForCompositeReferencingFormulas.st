testing data
fixturesForCompositeReferencingFormulas

	^ {
		{ '^ self leftBy: 2 aboveBy: 2'. 3 @ 3. 1 @ 1 }.
		{ '^ self leftBy: 2 aboveBy: -2'. 3 @ 3. 5 @ 1 }.
		{ '^ self leftBy: -2 aboveBy: 2'. 3 @ 3. 1 @ 5 }.
		{ '^ self leftBy: -2 aboveBy: -2'. 3 @ 3. 5 @ 5 }.

		{ '^ self leftBy: 2 belowBy: 2'. 3 @ 3. 5 @ 1 }.
		{ '^ self leftBy: 2 belowBy: -2'. 3 @ 3. 1 @ 1 }.
		{ '^ self leftBy: -2 belowBy: 2'. 3 @ 3. 5 @ 5 }.
		{ '^ self leftBy: -2 belowBy: -2'. 3 @ 3. 1 @ 5 }.

		{ '^ self rightBy: 2 aboveBy: 2'. 3 @ 3. 1 @ 5 }.
		{ '^ self rightBy: 2 aboveBy: -2'. 3 @ 3. 5 @ 5 }.
		{ '^ self rightBy: -2 aboveBy: 2'. 3 @ 3. 1 @ 1 }.
		{ '^ self rightBy: -2 aboveBy: -2'. 3 @ 3. 5 @ 1 }.

		{ '^ self rightBy: 2 belowBy: 2'. 3 @ 3. 5 @ 5 }.
		{ '^ self rightBy: 2 belowBy: -2'. 3 @ 3. 1 @ 5 }.
		{ '^ self rightBy: -2 belowBy: 2'. 3 @ 3. 5 @ 1 }.
		{ '^ self rightBy: -2 belowBy: -2'. 3 @ 3. 1 @ 1 }.
		
		{ '^ self aboveBy: 2 leftBy: 2'. 3 @ 3. 1 @ 1 }.
		{ '^ self aboveBy: -2 leftBy: 2'. 3 @ 3. 5 @ 1 }.
		{ '^ self aboveBy: 2 leftBy: -2'. 3 @ 3. 1 @ 5 }.
		{ '^ self aboveBy: -2 leftBy: -2'. 3 @ 3. 5 @ 5 }.

		{ '^ self belowBy: 2 leftBy: 2'. 3 @ 3. 5 @ 1 }.
		{ '^ self belowBy: -2 leftBy: 2'. 3 @ 3. 1 @ 1 }.
		{ '^ self belowBy: 2 leftBy: -2'. 3 @ 3. 5 @ 5 }.
		{ '^ self belowBy: -2 leftBy: -2'. 3 @ 3. 1 @ 5 }.

		{ '^ self aboveBy: 2 rightBy: 2'. 3 @ 3. 1 @ 5 }.
		{ '^ self aboveBy: -2 rightBy: 2'. 3 @ 3. 5 @ 5 }.
		{ '^ self  aboveBy: 2 rightBy: -2'. 3 @ 3. 1 @ 1 }.
		{ '^ self  aboveBy: -2 rightBy: -2'. 3 @ 3. 5 @ 1 }.

		{ '^ self  belowBy: 2 rightBy: 2'. 3 @ 3. 5 @ 5 }.
		{ '^ self  belowBy: -2 rightBy: 2'. 3 @ 3. 1 @ 5 }.
		{ '^ self  belowBy: 2 rightBy: -2'. 3 @ 3. 5 @ 1 }.
		{ '^ self  belowBy: -2 rightBy: -2'. 3 @ 3. 1 @ 1 }.
	}