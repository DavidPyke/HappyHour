### Happy Hour 

Happiness is the best medicine, so HappyHour is the best treatment!

HappyHour has the full flow, using Medication resources and the Invoice/ChargeItem resources showing just how FHIR can be used for proper management of a drinking establishment.  By using these resources, we show that not only in FHIR interoperability needed for Healthcare, it's also excellent for social, community supports.

When dealing with the bar/pub workflows, we realized that working with Substances to create Medications was core to the supportive role of the Practioner... er... Bartender.

Remember, if you're not someone who imbibes, there's always [Hot Beverage](http://www.fhir.org/guides/hotbeverage).

Here is a basic treatement flow:
<figure>
{% include drinking.svg %}
<figcaption>Sequenced drinking</figcaption>
</figure>

This workflow shows the role that a Bartender has within the Care domain.  This role cannot be stressed enough in our modern day society.

Alternate flows may use Beer or Wine as standalone Medications without the need for backing Substances, but that is out of scope for this IG.

A state diagram for Happy Hour tends to follow this pattern.

<figure>
{% include statediagram.svg %}
<figcaption>State of Inebriation</figcaption>
</figure>
