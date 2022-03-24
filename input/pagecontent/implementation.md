### Implementation 

Everyone wants to open their own pub, here's how you drink... er... do it.

First and foremost, you need a bar.  This bar could be called [The FHIRy Dragon](Location-TheFHIRyDragon.html) but that's up to you.

Second, you need a Bartender.  I've heard good things about [Ben Mix](Practitioner-BenMix.html) reach out to him.

After that, the flow works itself.  You have your [Drinking Buddy](Patient-DrinkingBuddy.html) acting as the Drink Order Initiator, and Drink Consumer.  The Bartender is acting as Drink Order Receiver, Drink Creator and Drink Dispenser.

Transactions include:

|Actor|Transaction|
|---|---|
|Drink Order Initiator|Create Drink Order|
| Drink Order Initiator | Transmit Drink Order |
| Drink Order Receiver | Consume Drink Order|
| Drink Creator | Create Drink Object |
| Drink Dispenser | Dispense Drink Object | 
| Drink Consumer | Drink Drink Object |
{:.grid}

In addition, the billing workflow is simple and uses the same roles in different Actor configurations.

These transactions include:

|Actor|Transaction|
|---|---|
| Invoice Creator | Create Invoice
| Invoice Dispenser | Dispense Invoice|
| Invoice Receiver | Receive Invoice|
| Invoice Receiver | Remark on Invoice Quantity |
| Invoice Receiver | Pay Invoice |
{:.grid}

Actors and Transactions regarding violent and/or obnoxious behaviour are out of scope for this Guide.