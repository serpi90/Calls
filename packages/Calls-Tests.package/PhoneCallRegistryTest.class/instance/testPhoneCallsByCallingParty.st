Test
testPhoneCallsByCallingParty

	| registry call anotherCall aPhoneNumber anotherPhoneNumber |

	aPhoneNumber := self localPhoneNumber.
	anotherPhoneNumber := self anotherLocalPhoneNumber.
	registry := self phoneCallRegistry.
	call := PhoneCall
		from: aPhoneNumber
		to: anotherPhoneNumber
		since: self tenOClockInTheMorningOnWednesday
		to: self fivePastTenInTheMorningOnWednesday.
	registry register: call.
	anotherCall := PhoneCall
		from: anotherPhoneNumber
		to: aPhoneNumber
		since: self fivePastTenInTheMorningOnWednesday
		to: self tenPastTenInTheMorningOnWednesday.
	registry register: anotherCall.
	self assert: (registry callsFrom: aPhoneNumber) size equals: 1.
	self assert: ((registry callsFrom: aPhoneNumber) includes: call)