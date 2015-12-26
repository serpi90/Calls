teapot
parseDateTimeFrom: timestamp

	| smalltalkDate date time |

	smalltalkDate := DateAndTime fromUnixTime: timestamp asNumber / 1000.
	date := FixedDate
		yearNumber: smalltalkDate year
		monthNumber: smalltalkDate month
		dayNumber: smalltalkDate dayOfMonth
		calendar: GregorianCalendar.
	time := TimeOfDay hours: smalltalkDate hours minutes: smalltalkDate minutes seconds: smalltalkDate seconds.
	^ date at: time