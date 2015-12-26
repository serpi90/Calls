Building
forInternationalCallsConsidering: aPriceList

	^ PhoneCallPricingStrategy
		consideringCallsThatMatch: [ :call | InternationalCallClassification new isValidFor: call ]
		pricingAccordingTo: [ :call | 
			aPriceList
				at: call callingParty countryCode -> call calledParty countryCode
				ifAbsent: [ self errorDueToUnknownInternationalPricingFor: call ] ]