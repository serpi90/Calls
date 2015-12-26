Test
testInternationalCallClassification

	| classification |

	classification := InternationalCallClassification new.
	self deny: (classification isValidFor: self localCall).
	self deny: (classification isValidFor: self nationalCall).
	self assert: (classification isValidFor: self internationalCall)