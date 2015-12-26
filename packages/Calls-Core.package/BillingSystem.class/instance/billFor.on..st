Evaluating
billFor: aPhoneNumber on: aMonthOfYear

	| callsToConsider pricedCalls |

	callsToConsider := (callRegistry callsFrom: aPhoneNumber)
		select: [ :call | call startTime date monthOfYear = aMonthOfYear ].
	pricedCalls := callsToConsider collect: [ :call | calculator callCostFor: call ].
	^Bill withBasicPayment: price detailing: pricedCalls