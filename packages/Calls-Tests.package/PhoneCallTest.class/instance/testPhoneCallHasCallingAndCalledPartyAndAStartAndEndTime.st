Test
testPhoneCallHasCallingAndCalledPartyAndAStartAndEndTime

	"A telephone call is a connection over a telephone network between the calling party and the called party.
	https://en.wikipedia.org/wiki/Telephone_call"

	| call callingParty calledParty |

	callingParty := self localPhoneNumber.
	calledParty := self anotherLocalPhoneNumber.

	call := PhoneCall
		from: callingParty
		to: calledParty
		since: self tenOClockInTheMorningOnWednesday
		to: self fivePastTenInTheMorningOnWednesday.

	self
		assert: call callingParty equals: callingParty;
		assert: call calledParty equals: calledParty;
		assert: call startTime equals: self tenOClockInTheMorningOnWednesday;
		assert: call endTime equals: self fivePastTenInTheMorningOnWednesday;
		assert: call duration equals: self fiveMinutes