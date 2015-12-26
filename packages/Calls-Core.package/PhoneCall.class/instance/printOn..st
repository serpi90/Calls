Printing
printOn: aStream

	aStream
		nextPutAll:
			('PhoneCall from: {1} to: {2} since {3} to: {4}'
				format:
					(Array
						with: callingParty
						with: calledParty
						with: timePeriod from
						with: timePeriod to))