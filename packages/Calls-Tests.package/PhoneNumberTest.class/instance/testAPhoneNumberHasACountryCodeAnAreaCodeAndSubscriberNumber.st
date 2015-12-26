Test
testAPhoneNumberHasACountryCodeAnAreaCodeAndSubscriberNumber

	"https://en.wikipedia.org/wiki/Telephone_numbering_plan#Structure"

	| phoneNumber |

	phoneNumber := PhoneNumber withCountryCode: 54 areaCode: 011 subscriberNumber: 43490200.

	self
		assert: phoneNumber countryCode equals: 54;
		assert: phoneNumber areaCode equals: 011;
		assert: phoneNumber subscriberNumber equals: 43490200;
		assert: phoneNumber printString equals: '+54 (11) 4349-0200'