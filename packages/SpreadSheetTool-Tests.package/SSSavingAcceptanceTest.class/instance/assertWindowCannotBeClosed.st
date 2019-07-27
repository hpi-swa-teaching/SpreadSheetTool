assertions
assertWindowCannotBeClosed

	self
		should: [self subject delete]
			notify: 'changes'
			thenAnswer: false;
		assertWindowNotDeleted: self subject.