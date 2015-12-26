Test
testBillDiscriminatesNationalCalls

	| billingSystem phoneNumber bill |

	billingSystem := self billingSystemWithNoCalls.
	phoneNumber := self localPhoneNumber.
	callRegistry
		register: (self localCallFrom: phoneNumber);
		register: (self anotherLocalCallFrom: phoneNumber);
		register: (self nationalCallFrom: phoneNumber);
		register: (self internationalCallFrom: phoneNumber).

	bill := billingSystem billFor: phoneNumber on: self myBirthday monthOfYear.
	self assert: bill nationalCallAmount equals: self twentyFiveCentsPerMinute * self fiveMinutes