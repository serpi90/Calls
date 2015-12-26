Querying
callsFrom: aPhoneNumber

	^calls select: [ :call | call callingParty = aPhoneNumber  ]