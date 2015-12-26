Test
testNationalCallClassification

	| classification |

	classification := NationalCallClassification new.
	self deny: (classification isValidFor: self localCall).
	self assert: (classification isValidFor: self nationalCall).
	self deny: (classification isValidFor: self internationalCall)