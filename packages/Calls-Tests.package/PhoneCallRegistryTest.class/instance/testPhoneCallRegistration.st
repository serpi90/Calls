Test
testPhoneCallRegistration

	| registry call anotherCall |

	registry := self phoneCallRegistry.
	call := PhoneCall
		from: self localPhoneNumber
		to: self anotherLocalPhoneNumber
		since: self tenOClockInTheMorningOnWednesday
		to: self fivePastTenInTheMorningOnWednesday.
	registry register: call.
	anotherCall := PhoneCall
		from: self anotherLocalPhoneNumber
		to: self localPhoneNumber
		since: self fivePastTenInTheMorningOnWednesday
		to: self tenPastTenInTheMorningOnWednesday.
	registry register: anotherCall.
	self assert: registry calls size equals: 2.
	self assert: (registry calls includes: call).
	self assert: (registry calls includes: anotherCall)