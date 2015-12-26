Accessing
pricedCallsWithin: aCallClassification

	^ pricedCalls select: [ :callCost | aCallClassification isValidFor: callCost call ]