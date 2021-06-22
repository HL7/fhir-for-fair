This page provides an overview of the relationship between the FAIR Data
Maturity Model described in the [RDA Indicators](RDAMetrics.html) page
and the HL7 FHIR standard.

### Findable

<table style="border-color: #000000; width:80 1px solid gray;">
<thead>
<tr style="border: 1px solid gray; background-color: #E5E4E2;">
<th><strong>INDICATOR_ID</strong></th>
<th><strong>INDICATORS</strong></th>
<th><strong>PRIORITY</strong></th>
<th><strong>Interpretation for HL7 FHIR Data</strong></th>
<th><strong>Notes</strong></th>
</tr>
</thead>
<tbody>
<tr style="border: 1px solid gray; ">
<td>RDA-F1-01M</td>
<td>Metadata is identified by a persistent identifier</td>
<td>Essential</td>
<td>A FHIR resource has a permanent, global, resolvable identifier; if the metadata data object can be represented with a single FHIR resource, this indictor is directly fulfilled.<br />
Other more complex situations should be considered as well, in this case the implementer need to describe how this requirement is going to be realized.</td>
<td>The granularity of a FAIR data object can vary consistently, so that its representation in FHIR resources can also change from being a single coded element into a resource up to a set of linked FHIR resources.<br />
<br />
Moreover, in particular for subject level FAIR objects, the boundary between metadata and data is not always so sharp, since this distinction can depend on the perspective: for example, the gestational age of a EGC measurement subject, can be a a measure metadata, but also a subject data.<br />
<br />
In consideration of this, the expectation of having a single persistent and unique ID that identifies the metadata FAIR data object, distinct from the data one, cannot be always satisfied in the FHIR space, except for specific contexts.<br />
<br />
<strong>Related FHIR Resources:<br />
</strong>https://www.hl7.org/fhir/resource.html#id<br />
https://www.hl7.org/fhir/managing.html</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-F1-01D</td>
<td>Data is identified by a persistent identifier</td>
<td><span class="underline">Essential</span></td>
<td>A FHIR resource has a permanent, global, resolvable identifier; if the 'data' data object can be represented with a single FHIR resource, this indictor is directly fulfilled.<br />
Other more complex situations should be considered as well, in this case the implementer need to describe how this requirement is going to be realized.</td>
<td>The granularity of a FAIR data object can vary consistently, so that its representation in FHIR resources can also change from being a single coded element into a resource up to a set of linked FHIR resources.<br />
<br />
FHIR provides mechanisms to uniquely identify also single information (e.g a single element) that are part of a resource.<br />
<br />
In consideration of this, the way a single persistent and unique ID is used to identify the data FAIR data object may depend on the data design.</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-F1-02M</td>
<td>Metadata is identified by a globally unique identifier</td>
<td>Essential</td>
<td>if RDA-F1-01M is true, this is true</td>
<td></td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-F1-02D</td>
<td>Data is identified by a globally unique identifier</td>
<td>Essential</td>
<td>if RDA-F1-01D is true, this is true</td>
<td></td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-F2-01M</td>
<td>Rich metadata is provided to allow discovery</td>
<td>Essential</td>
<td>HL7 FHIR support the provisioning of metadata and the enforcement of their adoption.<br />
Communities have to define however what is meant with "rich" metadata formalizing possibly them as FHIR profiles</td>
<td>The adoption of FHIR can enable the documentation of metadata but claiming the conformance with FHIR is not a sufficient condition for fulfilling this requirement.<br />
Communities shall declare with is meant with "rich" metadata.<br />
In a FHIR based implementation FHIR profiles and Implementation Guide should be used to formalize them.</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-F3-01M</td>
<td>Metadata includes the identifier for the data</td>
<td>Essential</td>
<td>This is in general true, the way this is satisfied depends on how metadata and data are represented in HL7 FHIR. (see also RDA-F1-01M)<br />
FHIR provides several mechanisms to refer other FHIR resources documenting data; implementers should declare how this is realized; possibly through community FHIR profiles and Implementation Guides.</td>
<td>In dependence on FAIR metadata data objects are realized in FHIR (see e.g. RDA-F1-01M); different solutions can be adopted in FHIR to refer data objects. This can be done referencing the target FHIR resource, per business identifier or per url.<br />
Implementers should use appropriate FHIR conformance resources to declare how this is done.</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-F4-01M</td>
<td>Metadata is offered in such a way that it can be harvested and indexed</td>
<td>Essential</td>
<td>The way this is satisfied depends on how FAIR metadata and data objects are represented in HL7 FHIR. (see also RDA-F1-01M)<br />
FHIR provides FHIR metadata datatypes and resource interfaces.<br />
FHIR resources allow the documentation of the data context.<br />
FHIR resources can be indexed and filtered by a set of data elements.</td>
<td></td>
</tr>
</tbody>
</table>

### Accessible

<table style="border-color: #000000; width:80 1px solid gray;">
<thead>
<tr style="border: 1px solid gray; background-color: #E5E4E2;">
<th><strong>PRINCIPLE</strong></th>
<th><strong>INDICATOR_ID</strong></th>
<th><strong>INDICATORS</strong></th>
<th><strong>PRIORITY</strong></th>
<th><strong>Interpretation for HL7 FHIR Data</strong></th>
<th><strong>Notes</strong></th>
</tr>
</thead>
<tbody>
<tr style="border: 1px solid gray; ">
<td>A1</td>
<td>RDA-A1-01M</td>
<td>Metadata contains information to enable the user to get access to the data</td>
<td>Important</td>
<td>If RDA-F3-01M is true, this is true.</td>
<td>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects.<br />
In the FHIR REST architecture the resource identifier can be used to access them; FHIR resource also provides mechanisms to enable the access to non-FHIR data</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>A1</td>
<td>RDA-A1-02M</td>
<td>Metadata can be accessed manually (i.e. with human intervention)</td>
<td>Essential</td>
<td>This is not related to the FHIR standard, but on the capabilities offered by the system/platform implementing the services.</td>
<td>Concerning the ability to identify FAIR metadata as distinct and identifiable FHIR resource(s), please refer to item RDA-F1-01M</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>A1</td>
<td>RDA-A1-02D</td>
<td>Data can be accessed manually (i.e. with human intervention)</td>
<td>Essential</td>
<td>This is not related to the FHIR standard, but on the capabilities offered by the system/platform implementing the services.</td>
<td>Concerning the ability to identify FAIR data as distinct and identifiable FHIR resource(s), please refer to item RDA-F1-01D</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>A1</td>
<td>RDA-A1-03M</td>
<td>Metadata identifier resolves to a metadata record</td>
<td>Essential</td>
<td>If RDA-F1-01M is true, this is true</td>
<td>For the situations where metadata are represented with data in a single or a set of linked resources the implementer should describe how this requirement is going to be realized.</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>A1</td>
<td>RDA-A1-03D</td>
<td>Data identifier resolves to a digital object</td>
<td>Essential</td>
<td>If RDA-F1-01D is true, this is true</td>
<td>The way a single persistent and unique ID is used to identify the data FAIR data object may depend on the data design.<br />
For the other situations the implementer should describe how this requirement is going to be realized.</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>A1</td>
<td>RDA-A1-04M</td>
<td>Metadata is accessed through standardised protocol</td>
<td>Essential</td>
<td>FHIR specifies standardized mechanisms to access FHIR resources</td>
<td>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>A1</td>
<td>RDA-A1-04D</td>
<td>Data is accessible through standardised protocol</td>
<td>Essential</td>
<td>FHIR specifies standardized mechanisms to access FHIR resources</td>
<td>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>A1</td>
<td>RDA-A1-05D</td>
<td>Data can be accessed automatically (i.e. by a computer program)</td>
<td>Important</td>
<td>FHIR specifies standardized mechanisms to automatically access FHIR resources (e.g. FHIR API)</td>
<td>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>A1.1</td>
<td>RDA-A1.1-01M</td>
<td>Metadata is accessible through a free access protocol</td>
<td>Essential</td>
<td>FHIR specifies free access mechanisms to access FHIR resources</td>
<td>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>A1.1</td>
<td>RDA-A1.1-01D</td>
<td>Data is accessible through a free access protocol</td>
<td>Important</td>
<td>FHIR specifies free access mechanisms to access FHIR resources</td>
<td>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>A1.2</td>
<td>RDA-A1.2-01D</td>
<td>Data is accessible through an access protocol that supports authentication and authorisation</td>
<td>Useful</td>
<td>FHIR is not a security protocol, nor does it define any security related functionality. However, FHIR does define exchange protocols and content models that need to be used with various security protocols defined elsewhere.</td>
<td>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>A2</td>
<td>RDA-A2-01M</td>
<td>Metadata is guaranteed to remain available after data is no longer available</td>
<td>Essential</td>
<td>If RDA-F1-01M is true, this is true</td>
<td>For the situations where metadata are represented with data in a single or a set of linked resources the implementer should describe how this requirement is going to be addressed.</td>
</tr>
</tbody>
</table>

### Interoperable

<table style="border-color: #000000; width:80 1px solid gray;">
<thead>
<tr style="border: 1px solid gray; background-color: #E5E4E2;">
<th><strong>INDICATOR_ID</strong></th>
<th><strong>INDICATORS</strong></th>
<th><strong>PRIORITY</strong></th>
<th><strong>Interpretation for HL7 FHIR Data</strong></th>
<th><strong>Notes</strong></th>
</tr>
</thead>
<tbody>
<tr style="border: 1px solid gray; ">
<td>RDA-I1-01M</td>
<td>Metadata uses knowledge representation expressed in standardised format</td>
<td>Important</td>
<td>FHIR provides support for standardized knowledge representation</td>
<td>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-I1-01D</td>
<td>Data uses knowledge representation expressed in standardised format</td>
<td>Important</td>
<td>FHIR provides support for standardized knowledge representation</td>
<td>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-I1-02M</td>
<td>Metadata uses machine-understandable knowledge representation</td>
<td>Important</td>
<td>FHIR provides support for machine-understandable standardized knowledge representation</td>
<td>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-I1-02D</td>
<td>Data uses machine-understandable knowledge representation</td>
<td>Important</td>
<td>FHIR provides support for machine-understandable standardized knowledge representation</td>
<td>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-I2-01M</td>
<td>Metadata uses FAIR-compliant vocabularies</td>
<td>Important</td>
<td><p>FHIR provides standardized mechanisms to bind codeable elements to vocabularies.</p>
<p>Communities can enforce the adoption of specific FAIR-compliant vocabularies by using FHIR profiles and Implementation Guide.</p></td>
<td>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-I2-01D</td>
<td>Data uses FAIR-compliant vocabularies</td>
<td>Useful</td>
<td><p>FHIR provides standardized mechanisms to bind codeable elements to vocabularies.</p>
<p>Communities can enforce the adoption of specific FAIR-compliant vocabularies by using FHIR profiles and Implementation Guide.</p></td>
<td>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-I3-01M</td>
<td>Metadata includes references to other metadata</td>
<td>Important</td>
<td>FHIR supports different kinds of references among FHIR resources and also to non-FHIR objects</td>
<td>By using the cross-references mechanisms, it is possible to provide links with data and metadata, qualifying in some cases also the kind of relationship. The realization of this requirement may depend on the data and metadata FHIR design approach.</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-I3-01D</td>
<td>Data includes references to other data</td>
<td>Useful</td>
<td>See RDA-I3-01M</td>
<td>See RDA-I3-01M</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-I3-02M</td>
<td>Metadata includes references to other data</td>
<td>Useful</td>
<td>See RDA-I3-01M</td>
<td>See RDA-I3-01M</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-I3-02D</td>
<td>Data includes qualified references to other data</td>
<td>Useful</td>
<td>See RDA-I3-01M</td>
<td>See RDA-I3-01M</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-I3-03M</td>
<td>Metadata includes qualified references to other metadata</td>
<td>Important</td>
<td>See RDA-I3-01M</td>
<td>See RDA-I3-01M</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-I3-04M</td>
<td>Metadata include qualified references to other data</td>
<td>Useful</td>
<td><span class="underline">See RDA-I3-01M</span></td>
<td>See RDA-I3-01M</td>
</tr>
</tbody>
</table>

### Reusable

<table style="border-color: #000000; width:80 1px solid gray;">
<thead>
<tr style="border: 1px solid gray; background-color: #E5E4E2;">
<th><strong>INDICATOR_ID</strong></th>
<th><strong>INDICATORS</strong></th>
<th><strong>PRIORITY</strong></th>
<th><strong>Interpretation for HL7 FHIR Data</strong></th>
<th><strong>Notes</strong></th>
</tr>
</thead>
<tbody>
<tr style="border: 1px solid gray; ">
<td>RDA-R1-01M</td>
<td>Plurality of accurate and relevant attributes are provided to allow reuse</td>
<td>Essential</td>
<td><p>Each HL7 FHIR resource includes a rich set of attributes describing most relevant data and metadata.</p>
<p>A formal extension mechanism is also specified by that standard to cover additional requirements.</p>
<p>Implementers may define community profiles and implementation guide to enforce this requirement.</p></td>
<td></td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-R1.1-01M</td>
<td>Metadata includes information about the licence under which the data can be reused</td>
<td>Essential</td>
<td>FHIR provides means to specify the license that applies to a set of resources. Implementers may define community profiles and implementation guide to enforce this requirement.</td>
<td>The realization of this requirement may depend on the data and metadata FHIR design approach. (see also RDA-F1-01M and RDA-F1-01D)</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-R1.1-02M</td>
<td>Metadata refers to a standard reuse licence</td>
<td>Important</td>
<td>See RDA-R1.1-01M</td>
<td>See RDA-R1.1-01M.</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-R1.1-03M</td>
<td>Metadata refers to a machine-understandable reuse licence</td>
<td>Important</td>
<td>See RDA-R1.1-01M</td>
<td>See RDA-R1.1-01M.</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-R1.2-01M</td>
<td>Metadata includes provenance information according to community-specific standards</td>
<td>Important</td>
<td><p>FHIR includes a Provence resource enabling the recording of information sources and of the actions applied to them.</p>
<p>Implementers may adopt community or cross-community profiles and implementation guide to enforce this requirement.</p></td>
<td>The realization of this requirement may depend on the data and metadata FHIR design approach. (see also RDA-F1-01M and RDA-F1-01D)</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-R1.2-02M</td>
<td>Metadata includes provenance information according to a cross-community language</td>
<td>Useful</td>
<td>See RDA-R1.2-01M</td>
<td>See RDA-R1.2-01M</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-R1.3-01M</td>
<td>Metadata complies with a community standard</td>
<td>Essential</td>
<td><p>FHIR is a standard that can be used to represent human and machine-readable metadata and data information.</p>
<p>It defines formal profiling mechanisms to specify community agreed rules.</p></td>
<td>The realization of this requirement may depend on the data and metadata FHIR design approach. (see also RDA-F1-01M and RDA-F1-01D)</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-R1.3-01D</td>
<td>Data complies with a community standard</td>
<td>Essential</td>
<td>See RDA-R1.3-01M</td>
<td>See RDA-R1.3-01M</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-R1.3-02M</td>
<td>Metadata is expressed in compliance with a machine-understandable community standard</td>
<td>Essential</td>
<td>See RDA-R1.3-01M</td>
<td>See RDA-R1.3-01M</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-R1.3-02D</td>
<td>Data is expressed in compliance with a machine-understandable community standard</td>
<td>Important</td>
<td>See RDA-R1.3-01M</td>
<td>See RDA-R1.3-01M</td>
</tr>
</tbody>
</table>
