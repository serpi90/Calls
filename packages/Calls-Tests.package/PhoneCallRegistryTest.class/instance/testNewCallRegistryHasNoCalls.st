Test
testNewCallRegistryHasNoCalls

	| registry |

	registry := self phoneCallRegistry.

	self assert: registry calls isEmpty