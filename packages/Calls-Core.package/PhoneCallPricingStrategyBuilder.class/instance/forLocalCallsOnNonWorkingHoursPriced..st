Building
forLocalCallsOnNonWorkingHoursPriced: aPrice

	^ PhoneCallPricingStrategy
		consideringCallsThatMatch: [ :call | 
			(LocalCallClassification new isValidFor: call)
				and: [ (self isOnWorkingDay: call) and: [ (self isOnWorkingHours: call) not ] ] ]
		pricingAccordingTo: [ :call1 | aPrice ]