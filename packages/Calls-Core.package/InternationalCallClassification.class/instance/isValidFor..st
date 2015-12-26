Testing
isValidFor: aPhoneCall

	^aPhoneCall callingParty countryCode ~= aPhoneCall calledParty countryCode