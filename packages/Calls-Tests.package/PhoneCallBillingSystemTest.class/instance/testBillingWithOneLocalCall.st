Test
testBillingWithOneLocalCall

	| billingSystem phoneNumber bill |

	billingSystem := self billingSystemWithNoCalls.
	phoneNumber := self localPhoneNumber.
	callRegistry
		register:
			(PhoneCall
				from: phoneNumber
				to: self anotherLocalPhoneNumber
				since: self tenOClockInTheMorningOnWednesday
				to: self fivePastTenInTheMorningOnWednesday).
	bill := billingSystem billFor: phoneNumber on: self myBirthday monthOfYear.
	self assert: bill totalAmount equals: self oneHundredAndTwentyPesos + (self twentyCentsPerMinute * self fiveMinutes)