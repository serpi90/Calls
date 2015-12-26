Initialization
initializeUnits

	peso := BaseUnit nameForOne: 'Peso' nameForMany: 'Pesos' sign: '$'.
	cent := ProportionalDerivedUnit baseUnit: peso conversionFactor: 1 / 100 named: 'Centavo'