Accessing
nationalCallFrom: phoneNumber

	^ PhoneCall
		from: phoneNumber
		to: self sameCountryPhoneNumber
		since: self fivePastTenInTheMorningOnWednesday
		to: self tenPastTenInTheMorningOnWednesday