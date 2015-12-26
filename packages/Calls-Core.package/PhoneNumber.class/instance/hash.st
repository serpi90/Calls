Accessing
hash

	^ (countryCode hash bitXor: areaCode hash) bitXor: subscriberNumber hash