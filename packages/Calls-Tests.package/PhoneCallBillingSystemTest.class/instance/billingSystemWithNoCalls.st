Accessing
billingSystemWithNoCalls

	^ BillingSystem
		workingWith: self phoneCallCostCalculator
		obtainingCallsFrom: callRegistry
		consideringBasicPaymentOf: self oneHundredAndTwentyPesos