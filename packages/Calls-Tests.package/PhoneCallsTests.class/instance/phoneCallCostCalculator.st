Accessing
phoneCallCostCalculator
| builder |
builder := PhoneCallPricingStrategyBuilder new.
	^ PhoneCallCostCalculator
		using:
			(Array
				with: ( builder forLocalCallsOnWorkingHoursPriced: self twentyCentsPerMinute)
				with: (builder forLocalCallsOnNonWorkingHoursPriced: self tenCentsPerMinute)
				with: (builder forLocalCallsOnNonWorkingDaysPriced: self tenCentsPerMinute)
				with: (builder forNationalCallsConsidering: self sameCountryPricingList)
				with: (builder forInternationalCallsConsidering: self otherCountryPricingList))