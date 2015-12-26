Signaling
errorDueToUnknownInternationalPricingFor: call

	^ self
		error:
			('Unknown price for calls from country {1} to coutnry {2}'
				format: (Array with: call callingParty countryCode with: call calledParty countryCode))