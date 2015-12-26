Building
forLocalCallsOnWorkingHoursPriced: aPrice

	^ PhoneCallPricingStrategy
		consideringCallsThatMatch: [ :call | (LocalCallClassification new isValidFor: call) and: [ (self isOnWorkingDay: call) and: [ self isOnWorkingHours: call ] ] ]
		pricingAccordingTo: [ :call1 | aPrice ]