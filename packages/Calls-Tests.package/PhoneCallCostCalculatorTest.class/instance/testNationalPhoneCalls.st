Test
testNationalPhoneCalls

	| calculator call |

	calculator := self phoneCallCostCalculator.
	call := PhoneCall
		from: self localPhoneNumber
		to: self sameCountryPhoneNumber
		since: self tenOClockInNightOnWednesday
		to: self fivePastTenInNightOnWednesday.
	self assert: (calculator callCostFor: call) cost equals: self twentyFiveCentsPerMinute * self fiveMinutes.

	call := PhoneCall
		from: self localPhoneNumber
		to: self anotherSameCountryPhoneNumber
		since: self tenOClockInNightOnWednesday
		to: self fivePastTenInNightOnWednesday.
	self assert: (calculator callCostFor: call) cost equals: self thirtyCentsPerMinute * self fiveMinutes