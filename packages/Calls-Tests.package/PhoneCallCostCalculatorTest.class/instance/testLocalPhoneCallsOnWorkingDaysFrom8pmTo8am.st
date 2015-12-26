Test
testLocalPhoneCallsOnWorkingDaysFrom8pmTo8am

	| calculator call |

	calculator := self phoneCallCostCalculator.
	call := PhoneCall
		from: self localPhoneNumber
		to: self anotherLocalPhoneNumber
		since: self tenOClockInNightOnWednesday
		to: self fivePastTenInNightOnWednesday.
	self assert: (calculator callCostFor: call) cost equals: self tenCentsPerMinute * self fiveMinutes