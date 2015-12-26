teapot
registerCallFrom: req

	| call parameters |

	Transcript show: 'Call'.
	self halt.
	parameters := NeoJSONReader fromString: req content.
	call := PhoneCall
		from: (self parsePhoneFrom: (req at: #from))
		to: (self parsePhoneFrom: (parameters at: 'to'))
		since: (self parseDateTimeFrom: (parameters at: 'startTime'))
		to: (self parseDateTimeFrom: (parameters at: 'endTime')).
	registry register: call