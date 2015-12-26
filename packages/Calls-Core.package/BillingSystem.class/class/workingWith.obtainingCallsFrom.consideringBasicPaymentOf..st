Instance Creation
workingWith: aPhoneCallCostCalculator obtainingCallsFrom: aPhoneCallRegistry consideringBasicPaymentOf: anAmount

	^ self new
		initializeWorkingWith: aPhoneCallCostCalculator
		obtainingCallsFrom: aPhoneCallRegistry
		consideringBasicPaymentOf: anAmount