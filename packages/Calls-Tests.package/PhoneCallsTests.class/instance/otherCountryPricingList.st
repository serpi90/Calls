Accessing
otherCountryPricingList

	^ Dictionary new
		at: self localPhoneNumber countryCode -> self otherCountryPhoneNumber countryCode put: self thirtyCentsPerMinute;
		at: self localPhoneNumber countryCode -> self anotherOtherCountryPhoneNumber countryCode
			put: self fortyCentsPerMinute;
		yourself