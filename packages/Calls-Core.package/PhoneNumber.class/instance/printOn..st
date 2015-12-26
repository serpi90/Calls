Printing
printOn: aStream

	aStream
		nextPut: $+;
		print: countryCode;
		space;
		nextPut: $(;
		print: areaCode;
		nextPut: $);
		space.
	subscriberNumber printString size > 4
		ifTrue: [ 
			aStream
				nextPutAll: (subscriberNumber printString allButLast: 4);
				nextPut: $- ].
	aStream nextPutAll: (subscriberNumber printString last: 4)