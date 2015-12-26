teapot
parsePhoneFrom: aString

	| stream countryCode areaCode subscriberNumber |

	stream := aString readStream.
	countryCode := ((stream upTo: $() select: [ :c | c isDigit ]) asNumber.
	areaCode := ((stream upTo: $)) select: [ :c | c isDigit ]) asNumber.
	subscriberNumber := (stream upToEnd select: [ :c | c isDigit ]) asNumber.
	^ PhoneNumber withCountryCode: countryCode areaCode: areaCode subscriberNumber: subscriberNumber