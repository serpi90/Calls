Test
testBillingWithTwoLocalCallsAndANationalCall

	| billingSystem phoneNumber bill |

	billingSystem := self billingSystemWithNoCalls.
	phoneNumber := self localPhoneNumber.
	callRegistry
		register: (self localCallFrom: phoneNumber);
		register: (self anotherLocalCallFrom: phoneNumber);
		register: (self nationalCallFrom: phoneNumber).
	bill := billingSystem billFor: phoneNumber on: self myBirthday monthOfYear.
	self
		assert: bill totalAmount
		equals: self oneHundredAndTwentyPesos + (self twentyCentsPerMinute * self fiveMinutes * 2) + (self twentyFiveCentsPerMinute  * self fiveMinutes )