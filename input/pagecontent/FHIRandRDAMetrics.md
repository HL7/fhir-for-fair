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
<td><p>HL7 FHIR requests that a globally unique and persistent logical identifier is assigned to each Resource.</p>
<p><em>(“Each resource has an id element which contains the "logical id" of the resource assigned by the server responsible for storing it. &lt;..&gt; The logical id is unique within the space of all resources of the same type on the same server. Once assigned by the server, the id is never changed. The location of a resource instance is an absolute URI constructed from the server base address at which the instance is found &lt;..&gt;”)</em></p>
<p>Other business identifiers can be assigned as well.</p>
<p>Each element within a resource or within a profile is moreover uniquely identified by its path.</p>
<p>The granularity of a FAIR data object can vary consistently, so that its representation in FHIR can also strongly change affecting how this is identified in FHIR.</p>
<p>FAIR community recommends “minimally one machine-resolvable Persistent Identifier (PID) for each concept used in a Data Object.”</p>
<p>This more granular identification can be realized in different ways depending on the kind of concept.</p>
<p>It might be a resource itself (so the PID is the resource identifier); it might be a single element in the resource (so it is identified by the model identifier within this instance); or it can be a concept identifier, e.g., a code within a terminology.</p>
<p>Moreover, above all for subject level FAIR objects, the boundary between metadata and data is not always so sharp, since it can depend on the perspective: for example, the gestational age of a EGC measurement subject, can be a measure metadata, but depending on the usage it can be also a subject data.</p>
<p>In consideration of this, the expectation of having a single persistent and unique ID that identifies the metadata FAIR data object, distinct from that describing the data one, cannot be always satisfied in the FHIR space, except for specific contexts.</p>
<p><strong>See also:</strong></p>
<p>https://www.hl7.org/fhir/resource.html#id</p>
<p>https://www.hl7.org/fhir/managing.html</p></td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-F1-01D</td>
<td>Data is identified by a persistent identifier</td>
<td><span class="underline">Essential</span></td>
<td>A FHIR resource has a permanent, global, resolvable identifier; if the 'data' data object can be represented with a single FHIR resource, this indictor is directly fulfilled.<br />
Other more complex situations should be considered as well, in this case the implementer needs to describe how this requirement is going to be realized.</td>
<td><p>See RDA-F1-01M.</p>
<p>In consideration of this, the way a single persistent and unique ID is used to identify the data FAIR data object may depend on the data design.</p></td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-F1-02M</td>
<td>Metadata is identified by a globally unique identifier</td>
<td>Essential</td>
<td>if RDA-F1-01M is true, this is true</td>
<td>See RDA-F1-01M.</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-F1-02D</td>
<td>Data is identified by a globally unique identifier</td>
<td>Essential</td>
<td>if RDA-F1-01D is true, this is true</td>
<td>See RDA-F1-01D.</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-F2-01M</td>
<td>Rich metadata is provided to allow discovery</td>
<td>Essential</td>
<td><p>HL7 FHIR supports the provisioning of metadata and the enforcement of their adoption.</p>
<p>Communities should define however what is meant with "rich" metadata possibly formalizing them by using FHIR profiles and implementation guides.</p></td>
<td><p>Each resource is a collection of elements describing the data and the context in which this data has been generated and exists (metadata).</p>
<p>Metadata information can be recorded in FHIR in through different means,:</p>
<ol type="a">
<li><p>by a distinct resource acting as metadata object (e.g. Citation; Library)</p></li>
<li><p>by elements of the resource including data;</p></li>
<li><p>through other HL7 FHIR resources (e.g. Encounter; ResearchStudy; Practitioner) referred by the resource including data;</p></li>
<li><p>more in general by a set of linked resources (e.g. Provenance; Consent).</p></li>
</ol>
<p>The adoption of FHIR can enable the documentation of metadata but claiming the conformance with FHIR is not a sufficient <span class="underline">condition</span> for fulfilling this requirement.<br />
Communities should declare with is meant with "rich" metadata.<br />
In a FHIR based implementation FHIR profiles and Implementation Guide should be used to formalize them.</p></td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-F3-01M</td>
<td>Metadata includes the identifier for the data</td>
<td>Essential</td>
<td>This is in general true, the way this is satisfied depends on how metadata and data are represented in HL7 FHIR. (See also RDA-F1-01M)<br />
FHIR provides several mechanisms to refer other FHIR resources documenting data; implementers should declare how this is realized; possibly through community FHIR profiles and Implementation Guides.</td>
<td><p>In dependence on how the FAIR metadata are realized in FHIR (see e.g., RDA-F1-01M); different solutions can be adopted to refer the data objects.</p>
<p>This can be done referencing the target FHIR resource, per business identifier or per url.<br />
Implementers should use appropriate FHIR conformance resources to declare how this is done.</p></td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-F4-01M</td>
<td>Metadata is offered in such a way that it can be harvested and indexed</td>
<td>Essential</td>
<td>The way this is satisfied depends on how FAIR metadata and data objects are represented in HL7 FHIR.</td>
<td><p>FHIR provides FHIR metadata datatypes and resource interfaces.<br />
FHIR resources allow the documentation of the data context.<br />
FHIR resources can be indexed and filtered by a set of data elements.</p>
<p>See also RDA-F2-01M and RDA-F3-01M</p></td>
</tr>
</tbody>
</table>

### Accessible

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
<td>RDA-A1-01M</td>
<td>Metadata contains information to enable the user to get access to the data</td>
<td>Important</td>
<td><p>If RDA-F3-01M is true, this is true.</p>
<p>This is in general true, since depending on how metadata and data FAIR objects are represented in FHIR different means are provided by this standard to enable the access to the referred data.</p>
<p>Communities can enforce this requirement by using community FHIR profiles and Implementation Guides.</p></td>
<td><p>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects.</p>
<p>In the FHIR REST paradigm <em>“the location of a resource instance is an absolute URI constructed from the server base address at which the instance is found, the resource type and the Logical ID, such as http://test.HL7 FHIR.org/rest/Patient/123 (where 123 is the Logical Id of a Patient resource). When the location is an HTTP address, this address can generally be used to retrieve or manipulate the resource.”</em></p>
<p>Depending on the FAIR data design, different FHIR mechanisms can be used to refer the FAIR data, e.g. by using direct or reverse references to other FHIR resources, or referring data business identifiers. FHIR also provides mechanisms to enable the access to non-FHIR data.</p>
<p><strong>See also:</strong></p>
<p><a href="http://hl7.org/fhir/2021Mar/references.html#Reference">http://hl7.org/fhir/2021Mar/references.html#Reference</a></p>
<p>http://hl7.org/fhir/2021Mar/metadatatypes.html#RelatedArtifact</p></td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-A1-02M</td>
<td>Metadata can be accessed manually (i.e. with human intervention)</td>
<td>Essential</td>
<td>This is not related to the FHIR standard, but on the capabilities offered by the system/platform implementing the services.</td>
<td>Concerning the ability to identify FAIR metadata as distinct and identifiable FHIR resource(s), please refer to item RDA-F1-01M</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-A1-02D</td>
<td>Data can be accessed manually (i.e. with human intervention)</td>
<td>Essential</td>
<td>See RDA-A1-02M</td>
<td>See RDA-A1-02M</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-A1-03M</td>
<td>Metadata identifier resolves to a metadata record</td>
<td>Essential</td>
<td><p>If RDA-F1-01M is true, this is true</p>
<p>This is in general true, since depending on how metadata and data FAIR objects are represented in FHIR different means are provided by this standard to enable the access to the referred metadata.</p>
<p>Communities can enforce this requirement by using community FHIR profiles and Implementation Guides.</p></td>
<td>For the situations where metadata are represented with data in a single or a set of linked resources the implementer should describe how this requirement is going to be realized.</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-A1-03D</td>
<td>Data identifier resolves to a digital object</td>
<td>Essential</td>
<td><p>If RDA-F1-01D is true, this is true.</p>
<p>This is in general true, since depending on how metadata and data FAIR objects are represented in FHIR different means are provided by this standard to enable the access to the referred data.</p>
<p>Communities can enforce this requirement by using community FHIR profiles and Implementation Guides.</p></td>
<td>The way a single persistent and unique ID is used to identify the data FAIR data object may depend on the data design.<br />
For the other situations the implementer should describe how this requirement is going to be realized.</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-A1-04M</td>
<td>Metadata is accessed through standardised protocol</td>
<td>Essential</td>
<td>FHIR specifies standardized mechanisms to access FHIR resources</td>
<td>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-A1-04D</td>
<td>Data is accessible through standardised protocol</td>
<td>Essential</td>
<td>FHIR specifies standardized mechanisms to access FHIR resources</td>
<td>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-A1-05D</td>
<td>Data can be accessed automatically (i.e. by a computer program)</td>
<td>Important</td>
<td>FHIR specifies standardized mechanisms to automatically access FHIR resources (e.g. FHIR API)</td>
<td>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-A1.1-01M</td>
<td>Metadata is accessible through a free access protocol</td>
<td>Essential</td>
<td>FHIR specifies free access mechanisms to access FHIR resources</td>
<td>HL7 FHIR specifications are published under Creative Commons "No Rights Reserved" (CC0 ).<br />
Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-A1.1-01D</td>
<td>Data is accessible through a free access protocol</td>
<td>Important</td>
<td>FHIR specifies free access mechanisms to access FHIR resources</td>
<td>HL7 FHIR specifications are published under Creative Commons "No Rights Reserved" (CC0 ).<br />
Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-A1.2-01D</td>
<td>Data is accessible through an access protocol that supports authentication and authorisation</td>
<td>Useful</td>
<td>FHIR is not a security protocol, nor does it define any security related functionality. However, FHIR does define exchange protocols and content models that need to be used with various security protocols defined elsewhere.</td>
<td>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-A2-01M</td>
<td>Metadata is guaranteed to remain available after data is no longer available</td>
<td>Essential</td>
<td><p>If RDA-F1-01M is true, this is true.</p>
<p>In general, this is true excepting for the case when metadata are recorded in the same FHIR resource documenting data.</p>
<p>Community can enforce the adoption of suitable FAIR data object design choices to enforce this requirement, by specifying community FHIR profiles and implementation guides.</p></td>
<td>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects</td>
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
<td><p>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects</p>
<p>HL7 FHIR provides a “formal, accessible, shared, and broadly applicable” way to represent (health) information and more specifically Knowledge Artifacts (“a structured, computable, and shareable representation of clinical knowledge.”)</p>
<p>This includes:</p>
<p><strong>Metadata:</strong> Information about the knowledge artifact such as lifecycle status, publisher, documentation, and supporting evidence; and <strong>Expression Logic:</strong> Expressions used to represent reasoning such as whether or not some criteria is satisfied, or calculation of new values from existing ones.”</p></td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-I1-01D</td>
<td>Data uses knowledge representation expressed in standardised format</td>
<td>Important</td>
<td>FHIR provides support for standardized knowledge representation</td>
<td>See RDA-I1-01M</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-I1-02M</td>
<td>Metadata uses machine-understandable knowledge representation</td>
<td>Important</td>
<td>See RDA-I1-01M</td>
<td>See RDA-I1-01M</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-I1-02D</td>
<td>Data uses machine-understandable knowledge representation</td>
<td>Important</td>
<td>See RDA-I1-01M</td>
<td>See RDA-I1-01M</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-I2-01M</td>
<td>Metadata uses FAIR-compliant vocabularies</td>
<td>Important</td>
<td>HL7 FHIR provides a formal way to bind codeable elements with vocabularies.<br />
<br />
Communities can enforce the adoption of FAIR-compliant vocabularies by using community speciifed FHIR profiles and Implementation Guide.</td>
<td>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects<br />
<br />
HL7 FHIR provides a formal way to bind codeable elements with specified vocabularies.<br />
The fact that these vocabularies fulfill the FAIR principles goes beyond the scope of HL7 FHIR.</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-I2-01D</td>
<td>Data uses FAIR-compliant vocabularies</td>
<td>Useful</td>
<td>See RDA-I2-01M</td>
<td>See RDA-I2-01M</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-I3-01M</td>
<td>Metadata includes references to other metadata</td>
<td>Important</td>
<td>FHIR supports different kinds of references among FHIR resources and also to non-FHIR objects</td>
<td><p>By using the cross-references mechanisms, it is possible to provide links with data and metadata, qualifying in some cases also the kind of relationship.</p>
<p>The realization of this requirement may depend on the data and metadata FHIR design approach.</p></td>
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
<td><p>FHIR provides different means to specify the license and the conditions under which data can be reused.</p>
<p>The adoption of FHIR is not however a sufficient condition for fulfilling this requirement.</p>
<p>Implementers may define community profiles and implementation guide to enforce this requirement.</p></td>
<td><p>The realization of this requirement may depend on the data and metadata FHIR design approach. (See also RDA-F1-01M and RDA-F1-01D)</p>
<p>HL7 FHIR provides different means to specify the license and the conditions under which data can be reused, including a Consent resource.</p>
<p>The fulfillment of this requirement depends however by the capability of the organization to capture and record this kind of information.</p></td>
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
<p>The adoption of FHIR is not however a sufficient condition for fulfilling this requirement.</p>
<p>Implementers may adopt community or cross-community profiles and implementation guide to enforce this requirement.</p></td>
<td><p>The realization of this requirement may depend on the data and metadata FHIR design approach. (see also RDA-F1-01M and RDA-F1-01D)</p>
<p>HL7 FHIR defines a Provenance resource that may be used to specify meta(data) provenance information at different level of granularity.</p>
<p>The fulfillment of this requirements depends however by the capability of the organization to capture and record this information.</p></td>
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
<td><p>The realization of this requirement may depend on the data and metadata FHIR design approach. (see also RDA-F1-01M and RDA-F1-01D)</p>
<p>HL7 FHIR is a globally recognized standard in the health domain.</p></td>
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
