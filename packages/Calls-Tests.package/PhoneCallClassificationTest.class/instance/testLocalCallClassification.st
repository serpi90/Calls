Test
testLocalCallClassification

	| classification |

	classification := LocalCallClassification new.
	self assert: (classification isValidFor: self localCall).
	self deny: (classification isValidFor: self nationalCall).
	self deny: (classification isValidFor: self internationalCall)