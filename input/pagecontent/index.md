### Happy Hour 

Happiness is the best medicine, so HappyHour is the best treatment!

HappyHour has the full flow, using Medication resources and the Invoice/ChargeItem resources showing just how FHIR can be used for proper management of a drinking establishment.  By using these resources, we show that not only in FHIR interoperability needed for Healthcare, it's also excellent for social, community supports.

When dealing with the bar/pub workflows, we realized that working with Substances to create Medications was core to the supportive role of the Practioner... er... Bartender.  
This workflow shows the role that a Bartender has within the Care domain.  This role cannot be stressed enough in our modern day society.

Here is a basic treatement flow:
<figure>
{% include drinking.svg %}
<figcaption>Sequenced drinking</figcaption>
</figure>

A state diagram for a standard Happy Hour interaction tends to follow this pattern.

<figure>
{% include statediagram.svg %}
<figcaption>State of Inebriation</figcaption>
</figure>

Alternate flows may use Beer or Wine as standalone Medications without the need for backing Substances, but that is out of scope for this IG. And remember, if you're not someone who imbibes, there's always a [Hot Beverage](http://www.fhir.org/guides/hotbeverage) waiting for you.