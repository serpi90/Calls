Accessing
anotherLocalCallFrom: phoneNumber

	^ PhoneCall
		from: phoneNumber
		to: self anotherLocalPhoneNumber
		since: self fivePastTenInTheMorningOnWednesday
		to: self tenPastTenInTheMorningOnWednesday