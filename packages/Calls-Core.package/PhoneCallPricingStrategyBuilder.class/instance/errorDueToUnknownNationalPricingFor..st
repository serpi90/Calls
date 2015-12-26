Signaling
errorDueToUnknownNationalPricingFor: call

	^ self
		error:
			('Unknown price for calls from area {1} to area {2} in country {3}'
				format: (Array with: call callingParty areaCode with: call calledParty areaCode with: call callingParty countryCode))