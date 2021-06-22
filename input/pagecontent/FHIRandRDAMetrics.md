### Overview

This page provides a short description on how FHIR may support the
implementation of the RDA indicators.

### Findable

<table>
<thead>
<tr class="header">
<th><strong>INDICATOR_ID</strong></th>
<th><strong>INDICATORS</strong></th>
<th><strong>PRIORITY</strong></th>
<th><strong>Interpretation for HL7 FHIR</strong></th>
<th><strong>Related FHIR Resources</strong></th>
<th><strong>Notes</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>RDA-F1-01M</td>
<td>Metadata is identified by a persistent identifier</td>
<td>Essential</td>
<td>A FHIR resource has a permanent, global, resolvable identifier; if the metadata data object can be represented with a single FHIR resource, this indictor is directly fulfilled.<br />
Other more complex situations should be considered as well, in this case the implementer need to describe how this requirement is going to be realized.</td>
<td><a href="https://www.hl7.org/fhir/managing.html"><span class="underline">https://www.hl7.org/fhir/resource.html#id<br />
https://www.hl7.org/fhir/managing.html</span></a></td>
<td>The granularity of a FAIR data object can vary consistently, so that its representation in FHIR resources can also change from being a single coded element into a resource up to a set of linked FHIR resources.<br />
<br />
Moreover, in particular for subject level FAIR objects, the boundary between metadata and data is not always so sharp, since this distinction can depend on the perspective: for example, the gestational age of a EGC measurement subject, can be a a measure metadata, but also a subject data.<br />
<br />
In consideration of this, the expectation of having a single persistent and unique ID that identifies the metadata FAIR data object, distinct from the data one, cannot be always satisfied in the FHIR space, except for specific contexts.</td>
</tr>
<tr class="even">
<td>RDA-F1-01D</td>
<td>Data is identified by a persistent identifier</td>
<td>Essential</td>
<td>A FHIR resource has a permanent, global, resolvable identifier; if the 'data' data object can be represented with a single FHIR resource, this indictor is directly fulfilled.<br />
Other more complex situations should be considered as well, in this case the implementer need to describe how this requirement is going to be realized.</td>
<td></td>
<td>The granularity of a FAIR data object can vary consistently, so that its representation in FHIR resources can also change from being a single coded element into a resource up to a set of linked FHIR resources.<br />
<br />
FHIR provides mechanisms to uniquely identify also single information (e.g a single element) that are part of a resource.<br />
<br />
In consideration of this, the way a single persistent and unique ID is used to identify the data FAIR data object may depend on the data design.</td>
</tr>
<tr class="odd">
<td>RDA-F1-02M</td>
<td>Metadata is identified by a globally unique identifier</td>
<td>Essential</td>
<td>if RDA-F1-01M is true this is true</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>RDA-F1-02D</td>
<td>Data is identified by a globally unique identifier</td>
<td>Essential</td>
<td>if RDA-F1-01D is true this is true</td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>RDA-F2-01M</td>
<td>Rich metadata is provided to allow discovery</td>
<td>Essential</td>
<td>HL7 FHIR support the provisioning of metadata and the enforcement of their adoption.<br />
Communities have to define however what is meant with "rich" metadata formalizing possibly them as FHIR profiles</td>
<td></td>
<td>The adoption of FHIR can enable the documentation of metadata but claiming the conformance with FHIR is not a sufficient condition for fulfilling this requirement.<br />
Communities shall declare with is meant with "rich" metadata.<br />
In a FHIR based implementation FHIR profiles and Implementation Guide should be used to formalize them.</td>
</tr>
<tr class="even">
<td>RDA-F3-01M</td>
<td>Metadata includes the identifier for the data</td>
<td>Essential</td>
<td>This is in general true, the way this is satisfied depends on how metadata and data are represented in HL7 FHIR. (see also RDA-F1-01M)<br />
FHIR provides several mechanisms to refer other FHIR resources documenting data; implementers should declare how this is realized; possibly through community FHIR profiles and Implementation Guides.</td>
<td></td>
<td>In dependence on FAIR metadata data objects are realized in FHIR (see e.g. RDA-F1-01M); different solutions can be adopted in FHIR to refer data objects. This can be done referencing the target FHIR resource, per business identifier or per url.<br />
Implementers should use appropriate FHIR conformance resources to declare how this is done.</td>
</tr>
</tbody>
</table>
