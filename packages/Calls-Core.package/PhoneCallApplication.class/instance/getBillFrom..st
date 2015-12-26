teapot
getBillFrom: req

	| bill |

	Transcript show: 'Bill'.
	bill := billingSystem
		billFor: (self parsePhoneFrom: (req at: #from))
		on: (self parseMonthOfYear: (req at: #monthOfYear)).

	^ NeoJSONWriter toString: bill