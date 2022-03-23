Profile: MixedDrink
Parent: Medication
Id: HappyHourMixedDrink
Title: "The Best Medicine available in a Pub"
Description: """The is a profile of Medication for those who self-medicate

Tea totallers can drink a [Hot Beverage](http://www.fhir.org/guides/hotbeverage)"""

* code = $sct#608772009 (exactly)
* ingredient 2..* 

Instance: CubaLibre
InstanceOf: MixedDrink
Usage: #example
Title: "The Drink that Won the Revolution"
Description: "It's a Rum and Coke, calling it anything else doesn't change what's in it."

* ingredient[0].item.reference = Reference(Rum)
* ingredient[1].item.reference = Reference(Cola)


Instance: Scotch
InstanceOf: Substance
Title: "Our Finest Islay Single Malt"
Description: "Best sipped neat but ice or water is allowed"
* identifier.system  = "http://www.example.org/bar/drinks"
* identifier.value = "Scotch Whiskey"
* category = $sct#53527002
* instance = false
* status = #active
* code.concept = $sct#229920002
* description = "The Macallan 18 Year Old"
* quantity = 40 '%'

Instance: Rum
InstanceOf: Substance
Title: "Best Drink in the Islands"
Description: "Many different colours, all one drink"
* identifier.system = "http://www.example.org/bar/drinks"
* identifier.value = "Rum"
* category = $sct#53527002
* instance = false
* status = #active
* code.concept = $sct#226054000
* description = "Havana Club 7 Años"
* quantity = 40 '%'

Instance: CanadianWhiskey
InstanceOf: Substance
Title: "Rye Whiskey from the People that know it best"
Description: "Canadian Club is the best known, but not always the best."
* identifier.system = "http://www.example.org/bar/drinks"
* identifier.value = "Rye"
* category = $sct#53527002
* instance = false
* status = #active
* code.concept = $sct#228983009 // Rye isn't in SNOMED... that needs fixing
* description = "Alberta Premium Cask Strength"
* quantity = 65 '%'

