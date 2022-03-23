Profile: DrinkOrder
Parent: MedicationRequest
Title: "Waiter?  Where's my drink?"
Description: "This is a base profile to order a drink from the pub"
* intent = #order (exactly)
* category = #community
* performer 1..1
* performerType = http://www.example.org/bartender#Bartender
* reason.concept = $sct#249475006
* courseOfTherapyType = http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy#acute

Instance: GimmeADrink
InstanceOf: DrinkOrder
Usage: #example
Title: "Give this man a drink"
Description: "An order for a rum and coke"
* status = #completed
* medication.reference = Reference(CubaLibre)
* performer = Reference(BenMix)
* subject = Reference(DrinkingBuddy)

Profile: DrinkDispense
Parent: MedicationDispense
Title: "Here's your drink"
Description: "The dispensing of a refreshing beverage"
* subject only Reference(Patient)
* dosageInstruction.asNeededBoolean = true
* performer 1..1
* performer.actor only Reference(Practitioner or PractitionerRole)


Instance: YourDrinkSir
InstanceOf: DrinkDispense
Usage: #example
Title: "Thank you for this beverage"
Description: "I was dying of thirst"
* status = #completed
* subject = Reference(DrinkingBuddy)
* performer.actor = Reference(BenMix)
* medication.reference = Reference(CubaLibre)
* location = Reference(TheFHIRyDragon)

