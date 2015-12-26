Accessing
internationalCallFrom: phoneNumber

	^ PhoneCall
		from: phoneNumber
		to: self otherCountryPhoneNumber
		since: self tenOClockInNightOnWednesday
		to: self fivePastTenInNightOnWednesday