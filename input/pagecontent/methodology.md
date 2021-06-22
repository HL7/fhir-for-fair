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
<td><img src="methodology-1.png" style="width:6.50963in;height:2.50866in" /></td>
</tr>
</tbody>
</table>

This has been done considering different possible [deployment
architectures](deployment.html), and evaluating how the adoption of FHIR
may improve the FAIRness, assessing this by using the RDA indicators.
