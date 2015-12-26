Accessing
internationalCall

	^ PhoneCall
		from: self localPhoneNumber
		to: self otherCountryPhoneNumber
		since: self tenOClockInNightOnWednesday
		to: self fivePastTenInNightOnWednesday