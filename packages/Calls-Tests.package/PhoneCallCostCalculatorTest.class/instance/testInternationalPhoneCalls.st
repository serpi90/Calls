Test
testInternationalPhoneCalls

	| calculator call |

	calculator := self phoneCallCostCalculator.
	call := PhoneCall
		from: self localPhoneNumber
		to: self otherCountryPhoneNumber
		since: self tenOClockInNightOnWednesday
		to: self fivePastTenInNightOnWednesday.
	self assert: (calculator callCostFor: call) cost equals: self thirtyCentsPerMinute * self fiveMinutes.

	call := PhoneCall
		from: self localPhoneNumber
		to: self anotherOtherCountryPhoneNumber
		since: self tenOClockInNightOnWednesday
		to: self fivePastTenInNightOnWednesday.
	self assert: (calculator callCostFor: call) cost equals: self fortyCentsPerMinute * self fiveMinutes