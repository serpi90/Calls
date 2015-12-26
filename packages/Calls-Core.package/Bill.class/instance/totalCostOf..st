Accessing
totalCostOf: calls

	^ calls inject: 0 into: [ :total :callCost | total + callCost cost ]