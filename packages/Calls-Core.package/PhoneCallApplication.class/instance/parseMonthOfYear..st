teapot
parseMonthOfYear: aString

	^ MonthOfYear
		yearNumber: ((aString substrings: '-') at: 1) asNumber
		monthNumber: ((aString substrings: '-') at: 2) asNumber
		calendar: GregorianCalendar