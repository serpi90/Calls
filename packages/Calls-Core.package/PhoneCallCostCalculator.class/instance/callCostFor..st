Evaluating
callCostFor: aPhoneCall

	| pricingStrategy |

	pricingStrategy := strategies
		detect: [ :strategy | strategy appliesTo: aPhoneCall ]
		ifNone: [ self error: ('Unknown pricing strategy for {1}' format: (Array with: aPhoneCall))].

	^ PhoneCallCost of: aPhoneCall considering: (pricingStrategy priceFor: aPhoneCall)