### WARNING

This is just a very preliminary draft

This page should describe how we’d like to approach the problem in this
guide

This guide has been developed taking account the complexity of trying to
represent issues related ot the considering a set of design assumptions
and principles summarized hereafter:

### Known Issues

#### FAIR digital object to FHIR resource mapping

The concept of FAIR digital object is quite wide and can vary either in
term of granularity: it can be a single atomic information (e.g. a coded
diagnosis) up to a collection of data (e.g. a data set); either in term
of type of data represented (e.g. a signal, an image, a condition, a
medication and so on..).

This makes not straightforward the mapping between FAIR data objects and
the FHIR resources (see figure below).

<table>
<tbody>
<tr class="odd">
<td><img src="methodology-1.png" style="width:4.61429in;height:2.06242in" /></td>
</tr>
</tbody>
</table>

Similar considerations can be done for the metadata, where, depending on
what the metadata is, metadata elements can be represented within the
same resource documenting the data or by a set of linked resources.

<table>
<tbody>
<tr class="odd">
<td><img src="methodology-2.png" style="width:3.88571in;height:2.14757in" /></td>
</tr>
</tbody>
</table>

#### FAIR digital object: data vs metadata

In addition to the issue reported above, depending on what a "FAIR
object" is the boundary between data and metadata may change. That means
that based on the context, the same information can be considered as
part of the data or of the metadata. This makes even more complex the
mapping to the FHIR resources.

The figure below shows how information that were part of the metadata in
the previous example are now part of the data; and how metadata and data
elements are represented in the same FHIR resource.

<table>
<tbody>
<tr class="odd">
<td><img src="methodology-3.png" style="width:4.18163in;height:2.39734in" /></td>
</tr>
</tbody>
</table>

#### FAIR digital object: metadata identification

In consideration of the previous arguments, the expectation of having a
persistent and unique ID that identifies the metadata FAIR data object,
distinct from the data FHIR data object, cannot be always satisfied in
the FHIR space, with the exception of specific contexts.

***\<\< add others \>\>***

### Approach

1.  Do not pretend to cover everything.

2.  Let’s accept this and identify a minimal set of objectives for our
    1st version (that we can revise)

3.  Proceed Iterative / Incremental

4.  Maximize reuse, most topics are covered by existing WG activities
    and guides, we should try to refer other guides when possible (e.g.
    genomic, lab results, vital sign )

5.  Focused on FHIR, the guide is not about FAIR in general, this guide
    should be designed based on how FHIR is designed.

6.  out of scope for this version technical specifications for the
    security and privacy layer

<table>
<tbody>
<tr class="odd">
<td><img src="methodology-4.png" style="width:5.76149in;height:2.23392in" /></td>
</tr>
</tbody>
</table>

### Mathias’ comment

select one of them as reference case and focus on that kind of object

identify a minimal set of information that are relevant in real life for
the components of that FAIR object.

proceed incrementally starting from few essential information, in order
to excursive also the development process (i.e. not to try to cover
everything from the beginning)

a) FAIRification of FHIR resources in general, but with a focus on
data-holding entities like observations.

b) FAIRification of FHIR datasets (resource connection still unclear),
but with the intention of describing compounds of related data instances
like a database that can be queried or a snapshot used in a publication.

c) FAIRification of Research projects such as studies, cohorts,
registers, survelliance, quality assurance.

d) Other research data management entities such as publications,
researchers, projects.

e) I could image the usefulness of describing services, making them FAIR
and promote use. That would go inline with the SOA group intentions.
