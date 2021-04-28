This guide has been designed following an **incremental, iterative** and
**meet-in-the -middle** approach.

In this sense authors **do not pretend to cover** in this version of the
guide **all the aspects** related to the data FAIRification (e.g.,
security and privacy) or all the possible kind of data.

The intent of this guide is to promote as possible the **reuse of
existing artefacts**, in this sense no new FHIR profiles have been
specified when covered by existing guides (e.g. genomic, lab results,
vital sign).

This guide **is not about FAIR in general**, but on how FHIR should be
used to better support the FAIR principles. The design choices will be
therefore based on how FHIR is designed: this may imply that some FAIR
expectations might not be fully accomplished. A list of possible
shortages, including those related to the FAIR digital object to FHIR
resource mapping, are summarized hereafter.

The following figure shows how the incremental, iterative and
meet-in-the -middle approach has been realized.

A set of possible domains have been identified and a set real-world
scenarios selected.

For each selected scenario (iteratively):

1)  The scenario has been specified and refined (e.g. creating several
    sub-scenarios, considering different architectures) when needed.

2)  It has been analyzed how it could be realized using the FHIR
    standard.

3)  When needed, FHIR conformance resources have been specified.

4)  Finally, it has been checked how the proposed solution fulfills the
    FAIR RDA indicators

<table>
<tbody>
<tr class="odd">
<td><img src="methodology-1.png" style="width:6.36951in;height:2.77538in" /></td>
</tr>
</tbody>
</table>

This has been done considering different possible [deployment
architectures](deployment.html), and evaluating how the adoption of FHIR
may improve the FAIRness, assessing this by using the RDA indicators.

### Mathias’ comment on the old home page

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
