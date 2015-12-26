Accessing
localCall

	^ PhoneCall
		from: self localPhoneNumber
		to: self anotherLocalPhoneNumber
		since: self tenOClockInNightOnWednesday
		to: self fivePastTenInNightOnWednesday