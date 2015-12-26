Test
testLocalPhoneCallsOnNonWorkingDays

	| calculator call |

	calculator := self phoneCallCostCalculator.
	call := PhoneCall
		from: self localPhoneNumber
		to: self anotherLocalPhoneNumber
		since: self tenOClockInTheNightOnSunday
		to: self fivePastTenInTheNightOnSunday.
	self assert: (calculator callCostFor: call) cost equals: self tenCentsPerMinute * self fiveMinutes