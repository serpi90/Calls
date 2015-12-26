as yet unclassified
intializeModel

	| builder calculator |

	builder := PhoneCallPricingStrategyBuilder new.
	calculator := PhoneCallCostCalculator
		using:
			(Array
				with: (builder forLocalCallsOnWorkingHoursPriced: self twentyCentsPerMinute)
				with: (builder forLocalCallsOnNonWorkingHoursPriced: self tenCentsPerMinute)
				with: (builder forLocalCallsOnNonWorkingDaysPriced: self tenCentsPerMinute)
				with: (builder forNationalCallsConsidering: self sameCountryPricingList)
				with: (builder forInternationalCallsConsidering: self otherCountryPricingList)).

	registry := PhoneCallRegistry new.
	billingSystem := BillingSystem
		workingWith: calculator
		obtainingCallsFrom: registry
		consideringBasicPaymentOf: self oneHundredAndTwentyPesos