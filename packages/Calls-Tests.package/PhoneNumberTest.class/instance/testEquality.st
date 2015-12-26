Test
testEquality

	| phoneNumber similarPhoneNumber |

	phoneNumber := PhoneNumber withCountryCode: 54 areaCode: 011 subscriberNumber: 43490200.
	similarPhoneNumber := PhoneNumber withCountryCode: 54 areaCode: 011 subscriberNumber: 43490200.

	self assert: phoneNumber equals: similarPhoneNumber