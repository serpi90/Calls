Accessing
sameCountryPricingList

	^ Dictionary new
		at: self localPhoneNumber areaCode -> self sameCountryPhoneNumber areaCode put: self twentyFiveCentsPerMinute;
		at: self localPhoneNumber areaCode -> self anotherSameCountryPhoneNumber areaCode put: self thirtyCentsPerMinute;
		yourself