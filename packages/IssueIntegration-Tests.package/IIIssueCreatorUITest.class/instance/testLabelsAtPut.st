running
testLabelsAtPut
	| labelList |
	labelList := self subject findByName: 'labelList'.
	self subject model labelsAt: 1 put: true.
	self assert: true equals: (labelList listSelectionAt: 1)

	
	