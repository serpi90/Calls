Building
forLocalCallsOnNonWorkingDaysPriced: aPrice

	^ PhoneCallPricingStrategy
		consideringCallsThatMatch: [ :call | (LocalCallClassification new isValidFor: call) and: [ (self isOnWorkingDay: call) not ] ]
		pricingAccordingTo: [ :call1 | aPrice ]