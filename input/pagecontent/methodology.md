This guide has been designed following an **incremental, iterative** and
**meet-in-the -middle** approach.

In this sense authors **do not pretend to cover** in this version of the
guide **all the aspects** related to the data FAIRification (e.g.,
security and privacy) or all the possible kind of data.

The intent of this guide is to promote as possible the **reuse of
existing artefacts**, in this sense no new FHIR profiles have been
specified when covered by existing guides (e.g. genomic, lab results,
vital sign).

This guide **is not about FAIR in general**, but on how HL7 FHIR should
be used to better support the FAIR principles. The design choices will
be therefore based on how FHIR is designed: this may imply that some
FAIR expectations might not be fully accomplished or realized under
specific conditions.

The following figure shows how this incremental, iterative and
meet-in-the -middle approach has been realized. A set of representative
real-world study cases have selected covering different situations:
research studies, publications, sharing of health data and others. For
each selected case (iteratively):

1)  The case has been analyzed, performing a FAIRness assessment against
    the [RDA indicators](RDAMetrics.html), and identifying the main
    findings and gaps; and/or capturing the main lesson learned by the
    implementation of the [FAIR principles](FAIR.html).

2)  It has been analyzed how these cases are or could be implemented by
    using HL7 FHIR and where it provides added value.

3)  A set of guidelines for implementing FAIR principles with HL7 FHIR
    has been produced and FHIR conformance resources to represent
    subject and study level metadata have been specified.

4)  Finally, it has been checked how the proposed solution fulfills the
    FAIR principles and RDA indicators

<table>
<tbody>
<tr class="odd">
<td><img src="methodology-1.png" style="width:6.27998in;height:2.42016in" /></td>
</tr>
</tbody>
</table>
