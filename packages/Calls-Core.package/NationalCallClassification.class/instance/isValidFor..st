Testing
isValidFor: aPhoneCall

	^ aPhoneCall callingParty countryCode = aPhoneCall calledParty countryCode
		and: [ aPhoneCall callingParty areaCode ~= aPhoneCall calledParty areaCode ]