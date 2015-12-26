Initialization
current

	Current isNil
		ifTrue: [ self initializeCurrent ].
	^ Current