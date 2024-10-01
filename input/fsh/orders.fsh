Profile: DrinkOrder
Parent: MedicationRequest
Title: "Waiter?  Where's my drink?"
Description: "This is a base profile to order a drink from the pub"
* intent = #order (exactly)
* category = http://terminology.hl7.org/CodeSystem/medicationrequest-admin-location#community
* performer 1..1
* performerType = http://www.example.org/bartender#Bartender
* reason.concept = $sct#249475006
* requester only Reference(Patient)
* courseOfTherapyType = http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy#acute

Instance: GimmeADrink
InstanceOf: DrinkOrder
Usage: #example
Title: "Give this man a drink"
Description: "An order for a rum and coke"
* status = #completed
* medication.reference = Reference(CubaLibre)
* performer = Reference(BenMix)
* requester = Reference(DrinkingBuddy)
* subject = Reference(DrinkingBuddy)

Profile: DrinkDispense
Parent: MedicationDispense
Title: "Here's your drink"
Description: "The dispensing of a refreshing beverage"
* subject only Reference(Patient)
* dosageInstruction.asNeeded = true
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

Profile: YourBill
Parent: Invoice
Title: "Time to Pay Up"
Description: "That's not an amount, that's a serial numer"
* subject only Reference(Patient)
* participant.actor only Reference(Practitioner)


Instance: MyBill
InstanceOf: YourBill
Usage: #example
Title: "How much you have to pay for tomorrow's hangover"
Description: "Better have room on your credit card..."
* subject = Reference(DrinkingBuddy)
* status = #issued
* lineItem[0]
  * chargeItemReference = Reference(CubaLibreCharge)
  * priceComponent
    * type = #base
    * amount.value = 10.00
    * amount.currency = #EUR
* lineItem[+]
  * chargeItemReference = Reference(CubaLibreCharge)
  * priceComponent
    * type = #base
    * amount.value = 10.00
    * amount.currency = #EUR
* lineItem[+]
  * chargeItemReference = Reference(CubaLibreCharge)
  * priceComponent
    * type = #base
    * amount.value = 10.00
    * amount.currency = #EUR
* lineItem[+]
  * chargeItemReference = Reference(CubaLibreCharge)
  * priceComponent
    * type = #base
    * amount.value = 10.00
    * amount.currency = #EUR
* lineItem[+]
  * chargeItemReference = Reference(CubaLibreCharge)
  * priceComponent
    * type = #base
    * amount.value = 10.00
    * amount.currency = #EUR
* lineItem[+]
  * chargeItemReference = Reference(CubaLibreCharge)
  * priceComponent
    * type = #base
    * amount.value = 10.00
    * amount.currency = #EUR
* totalGross
  * value = 60.00
  * currency = #EUR

Instance: CubaLibreCharge
InstanceOf: ChargeItem
Usage: #example
Title: "A Single Drink"
Description: "Simple description of an item on the bill"
* status = #billable
* code = http://terminology.hl7.org/CodeSystem/chargeitem-billingcodes#1320
* performer.actor = Reference(BenMix)
* subject = Reference(DrinkingBuddy)
