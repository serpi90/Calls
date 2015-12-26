Accessing
localCallFrom: phoneNumber

	^ PhoneCall
		from: phoneNumber
		to: self anotherLocalPhoneNumber
		since: self tenOClockInTheMorningOnWednesday
		to: self fivePastTenInTheMorningOnWednesday