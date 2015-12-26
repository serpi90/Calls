Accessing
= anObject

	^ (anObject isMemberOf: self class)
		and: [ 
			anObject countryCode = countryCode
				and: [ anObject areaCode = areaCode and: [ anObject subscriberNumber = subscriberNumber ] ] ]