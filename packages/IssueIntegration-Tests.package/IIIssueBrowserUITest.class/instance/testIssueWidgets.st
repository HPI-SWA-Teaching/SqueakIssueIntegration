running
testIssueWidgets
	| issueTitle |
	issueTitle := self subject findByName: 'titleInput'.
	self assert: issueTitle text isEmpty.
	self repoList changeModelSelection: 1.
	self assert: 3 equals: self issueList getList size.

	self issueList changeModelSelection: 3.
	self assert: 'New Method Issue' equals: issueTitle text string.
	self issueList changeModelSelection: 1.
	self assert: 'Test From Test [Collection]' equals: issueTitle text string