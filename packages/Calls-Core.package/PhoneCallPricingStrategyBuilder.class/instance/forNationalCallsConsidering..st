Building
forNationalCallsConsidering: aPriceList

	^ PhoneCallPricingStrategy
		consideringCallsThatMatch: [ :call | NationalCallClassification new isValidFor: call ]
		pricingAccordingTo: [ :call | 
			aPriceList
				at: call callingParty areaCode -> call calledParty areaCode
				ifAbsent: [ self errorDueToUnknownNationalPricingFor: call ] ]