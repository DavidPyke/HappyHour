Profile: MixedDrink
Parent: Medication
Id: HappyHourMixedDrink
Title: "The Best Medicine available in a Pub"
Description: """The is a profile of Medication for those who self-medicate

Tea totallers can drink a Hot Beverage"""
* code 1..1 
* code = $sct#53527002 (exactly)
* totalVolume 1..1
* ingredient 2..* 
    

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

