Test
testBillingWhenNoCalls

	| billingSystem phoneNumber bill |

	billingSystem := self billingSystemWithNoCalls.
	phoneNumber := self localPhoneNumber.
	bill := billingSystem billFor: phoneNumber on: self myBirthday monthOfYear.
	self assert: bill totalAmount equals: self oneHundredAndTwentyPesos