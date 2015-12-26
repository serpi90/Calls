Test
testLocalPhoneCallsOnWorkingDaysFrom8amTo8pm

	| calculator call |

	calculator := self phoneCallCostCalculator.
	call := PhoneCall
		from: self localPhoneNumber
		to: self anotherLocalPhoneNumber
		since: self tenOClockInTheMorningOnWednesday
		to: self fivePastTenInTheMorningOnWednesday.
	self assert: (calculator callCostFor: call) cost equals: self twentyCentsPerMinute * self fiveMinutes