running
testEditIssueAssignee
	| assigneeInput newAssignee |
	newAssignee := 'test-user-new'.
	self repoList changeModelSelection: 1.
	self issueList changeModelSelection: 1.
	assigneeInput := self subject findByName: 'assigneeInput'.
	assigneeInput 
		setText: newAssignee;
		acceptTextInModel.
	self assert: newAssignee equals: assigneeInput text string.
	self issueList 
		changeModelSelection: 2;
		changeModelSelection: 1.
	self assert: newAssignee equals: assigneeInput text string