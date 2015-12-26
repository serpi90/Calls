Accessing
nationalCall

	^ PhoneCall
		from: self localPhoneNumber
		to: self sameCountryPhoneNumber
		since: self tenOClockInNightOnWednesday
		to: self fivePastTenInNightOnWednesday