Instance Creation
neoJsonMapping: mapper

	mapper
		for: self
		do: [ :mapping | 
			mapping mapAccessor: #basicPayment.
			(mapping mapAccessor: #localCalls) valueSchema: #ArrayOfPhoneCallCost.
			(mapping mapAccessor: #nationalCalls) valueSchema: #ArrayOfPhoneCallCost.
			(mapping mapAccessor: #internationalCalls) valueSchema: #ArrayOfPhoneCallCost ].
	mapper for: #ArrayOfPhoneCallCost customDo: [ :mapping | mapping listOfElementSchema: PhoneCallCost ].
	mapper for: Measure customDo: [ :mapping | mapping encoder: [ :measure | measure amount ] ].
	mapper
		for: PhoneCallCost
		do: [ :mapping | 
			mapping mapProperty: #to getter: [ :callCost | callCost call calledParty printString ] setter: [ :object :value |  ].
			mapping
				mapProperty: #start
				getter: [ :callCost | ((January first , 1970) atMidnight distanceTo: callCost call startTime) convertTo: TimeUnits second ]
				setter: [ :object :value |  ].
			mapping
				mapProperty: #duration
				getter: [ :callCost | callCost call duration convertTo: TimeUnits minute ]
				setter: [ :object :value |  ].
			mapping mapAccessor: #cost ]