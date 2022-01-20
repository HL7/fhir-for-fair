This page integrates the [HL7 FHIR and FAIR principles](FAIR.html) page
providing an overview of the relationship between the FAIR Data Maturity
Model described in the [RDA Indicators](RDAMetrics.html) page and the
HL7 FHIR standard, independently on the implementation approach adopted
(Native Vs non-Native FHIR architectures, see [HL7 FHIR and FAIR
principles](FHIRandFAIR.html) for more details).

### Findable

<table style="border-color: #000000; width:80 1px solid gray;">
<thead>
<tr style="border: 1px solid gray; background-color: #E5E4E2;">
<th><strong>INDICTOR_ID</strong></th>
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
<td><p>HL7 FHIR provides different means to assign persistent identifiers to FHIR resources. See <a href="FHIRidentifiers.html">FHIR identifiers and FAIR principles on IDs</a> for more details. </p>
<p>The page <a href="metadata.html">Metadata and data</a> describes some of the challenges in implementing distinct data and metadata by using HL7 FHIR.</p>
<p>Depending on the usage context and on the kind of metadata to deal with, implementers may choose different means , including a partial fulfillment of the requirement or the adoption of hybrid solutions (FHIR and non-FHIR).</p></td>
<td><p>Given that FHIR provides means to uniquely identify resources, the key point of this requirement is a clear identification of what a metadata is (see also the page <a href="metadata.html">Metadata and data</a> ).</p>
<p>If there are no doubts that metadata are the “data about data”, more complex is to turn this definition in the reality, with a clear distinction between data and metadata. In fact, what is “data” and what is “metadata” is a matter of perspective: based on the context, the same information can be in fact considered as part of the data or of the metadata. </p>
<p>In consideration of this, the expectation of having a single persistent and unique ID that identifies the metadata FAIR data object, distinct from that describing the data one, cannot be always satisfied in the FHIR space, except for specific contexts.</p>
<p>A pragmatic approach is therefore suggested in the evaluation of this requirement, determining case by case, and in dependence of the type of data (study level or subject level data), what are the actual information to label as metadata, that should and can be distinguished by the associated data.</p>
<p>Other information, that could be considered as well as metadata might be recorded in the same object containing the data and used to search them.</p></td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-F1-01D</td>
<td>Data is identified by a persistent identifier</td>
<td><span class="underline">Essential</span></td>
<td><p>See RDA-F1-01M for the general considerations on the identification of the FHIR resources.</p>
<p>If the organization assures the persistency of the FHIR identifiers, this indicator is automatically fulfilled when data is represented by a single FHIR resource.</p>
<p>This doesn't exclude more complex situations that need to be analyzed case by case.</p></td>
<td><p>See RDA-F1-01M.<br />
<br />
In consideration of this, the way a single persistent and unique ID is used to identify the data FAIR data object may depend on the data design.</p>
<p>This requirement is fulfilled when data is represented by FHIR resources.</p></td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-F1-02M</td>
<td>Metadata is identified by a globally unique identifier</td>
<td>Essential</td>
<td>See RDA-F1-01M</td>
<td>See RDA-F1-01M.</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-F1-02D</td>
<td>Data is identified by a globally unique identifier</td>
<td>Essential</td>
<td>See RDA-F1-01D</td>
<td>See RDA-F1-01D.</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-F2-01M</td>
<td>Rich metadata is provided to allow discovery</td>
<td>Essential</td>
<td><p>HL7 FHIR provides means to record metadata information and to enable the search of data based on them. Moreover through FHIR profiling can enforce their adoption by implementers.</p>
<p>Communities should define what is meant with "rich" metadata for the use cases they need to cover and possibly formalize them by using FHIR profiles and implementation guides.</p></td>
<td><p>The rationale behind this principle is that someone should be able to find data based on the information provided by their metadata, even without the data’s identifier (adapted from GO-FAIR F2 principle). </p>
<p>Whether metadata is 'rich' enough would therefore really depend on what users would need to search on in terms of metadata fields to find the resources. This 'richness' criterium is then use case dependent. </p>
<p>Please refer to <a href="metadata.html">Metadata and data</a>  about a more general discussion about issues in implementing metadata in FHIR.<br />
<br />
The adoption of FHIR can enable the documentation of metadata but claiming the conformance with FHIR is not a sufficient <span class="underline">condition</span> for fulfilling this requirement.</p>
<p>Communities should define what is meant with "rich" metadata for the use cases they need to cover; indicating what are the information that have to be recorded, possibly formalized as FHIR profiles; and the kind of searches that servers should support, possibly formalized as FHIR Capability Statement.</p></td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-F3-01M</td>
<td>Metadata includes the identifier for the data</td>
<td>Essential</td>
<td>This is in general true, the way this is satisfied depends on how metadata and data are represented in HL7 FHIR. (See also RDA-F1-01M) FHIR provides several mechanisms to refer other FHIR resources documenting data; implementers should declare how this is realized; possibly through community FHIR profiles and Implementation Guides.</td>
<td>In dependence on how the FAIR metadata are realized in FHIR (see e.g., RDA-F1-01M); different solutions can be adopted to refer the data objects.<br />
<br />
This can be done referencing the target FHIR resource, per business identifier or per url. Implementers should use appropriate FHIR conformance resources to declare how this is done.</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-F4-01M</td>
<td>Metadata is offered in such a way that it can be harvested and indexed</td>
<td>Essential</td>
<td><p>The way this is satisfied depends on how FAIR metadata and data objects are represented in HL7 FHIR.</p>
<p>In order to adhere to this requirement, the FHIR <a href="https://www.hl7.org/fhir/search.html">search framework</a> can be used. The extent of data and metadata that have to be registered or indexed would however depend on what users would need to search to find the resources.</p>
<p>Each community should define what are the relevant metadata and data that have to be registered or indexed by a FHIR server for each supported resource to fulfil this principle; formalizing them with FHIR conformance resources and implementation guides.</p></td>
<td><p>Identifiers and rich metadata descriptions alone will not ensure ‘findability’ on the internet. Perfectly good data resources may go unused simply because no one knows they exist. If the availability of a digital resource such as a dataset, service or repository is not known, then nobody (and no machine) can discover it (adapted from GO-FAIR F4 principle).</p>
<p>FHIR provides FHIR metadata datatypes and resource interfaces. FHIR resources allow the documentation of the data context. The architectures adopted should ensure that the FHIR server hosting the data set has strong searching capabilities.</p>
<p>Implementers should look for specific FHIR Conformance resources and/or Implementation Guides that describe the metadata and data elements that shall or should be provided to a FHIR server for the use case in question and registered or indexed by that server. HL7 FHIR CapabilityStatement, SearchParameter, StructureDefiniton , possibly documented within a Implementation Guide should be used to document this. </p>
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
<td>If RDA-F3-01M is true, this is true.<br />
<br />
This is in general true, since depending on how metadata and data FAIR objects are represented in FHIR, different means are provided by this standard to enable the access to the referred data.<br />
<br />
Communities should agree what are the relevant metadata information enabling the access of data in their context and formalize and enforce their usage by specifying appropriate FHIR profiles and Implementation Guides.</td>
<td><p>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects.<br />
<br />
In the FHIR REST paradigm _"the location of a resource instance is an absolute URI constructed from the server base address at which the instance is found, the resource type and the Logical ID, such as</p>
<p>http://example.org/fhir/Patient/123 (where 123 is the Logical Id of a Patient resource). When the location is an HTTP address, this address can generally be used to retrieve or manipulate the resource."_</p>
<p>Depending on the FAIR data design, different FHIR mechanisms can be used to refer the FAIR data, e.g. by using direct or reverse references to other FHIR resources, or referring data business identifiers. FHIR also provides mechanisms to enable the access to non-FHIR data.</p>
<p>The solution architecture should ensure that the metadata FHIR resource includes a reference to the actual data or information on how to access it directly or indirectly.</p></td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-A1-02M</td>
<td>Metadata can be accessed manually (i.e. with human intervention)</td>
<td>Essential</td>
<td><p>This is not related to the FHIR standard, but on the capabilities offered by the system/platform implementing the services.</p>
<p>The metadata FHIR resources should provide information on how to access the data, if a manual access is foreseen.</p></td>
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
<td>If RDA-F1-01M is true, this is true<br />
<br />
This is in general true, since depending on how metadata and data FAIR objects are represented in FHIR different means are provided by this standard to enable the access to the referred metadata.<br />
<br />
Communities can enforce this requirement by using community FHIR profiles and Implementation Guides.</td>
<td>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects.</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-A1-03D</td>
<td>Data identifier resolves to a digital object</td>
<td>Essential</td>
<td>If RDA-F1-01D is true, this is true.<br />
<br />
This is in general true, since depending on how metadata and data FAIR objects are represented in FHIR different means are provided by this standard to enable the access to the referred data.<br />
<br />
Communities can enforce this requirement by using community FHIR profiles and Implementation Guides.</td>
<td>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects.</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-A1-04M</td>
<td>Metadata is accessed through standardised protocol</td>
<td>Essential</td>
<td>FHIR specifies standardized mechanisms to access FHIR resources</td>
<td><p>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects</p>
<p>This requirement is typically fulfilled if the metadata object is expressed in HL7 FHIR and available in a FHIR server.</p></td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-A1-04D</td>
<td>Data is accessible through standardised protocol</td>
<td>Essential</td>
<td>FHIR specifies standardized mechanisms to access FHIR resources</td>
<td><p>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects</p>
<p>This requirement is typically fulfilled if the data object is expressed in HL7 FHIR and available in a FHIR server.</p></td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-A1-05D</td>
<td>Data can be accessed automatically (i.e. by a computer program)</td>
<td>Important</td>
<td>FHIR specifies standardized mechanisms to automatically access FHIR resources (e.g. FHIR API)</td>
<td><p>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects</p>
<p>This is fulfilled by the existence of the data in a FHIR server.</p></td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-A1.1-01M</td>
<td>Metadata is accessible through a free access protocol</td>
<td>Essential</td>
<td>FHIR specifies free access mechanisms to access FHIR resources</td>
<td>HL7 FHIR specifications are published under Creative Commons "No Rights Reserved" (CC0 ).Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-A1.1-01D</td>
<td>Data is accessible through a free access protocol</td>
<td>Important</td>
<td>FHIR specifies free access mechanisms to access FHIR resources</td>
<td>HL7 FHIR specifications are published under Creative Commons "No Rights Reserved" (CC0 ).Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-A1.2-01D</td>
<td>Data is accessible through an access protocol that supports authentication and authorisation</td>
<td>Useful</td>
<td><p>FHIR is not a security protocol, nor does it define any security related functionality.</p>
<p>However, FHIR does define exchange protocols and content models that need to be used with various security protocols defined elsewhere.</p></td>
<td>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-A2-01M</td>
<td>Metadata is guaranteed to remain available after data is no longer available</td>
<td>Essential</td>
<td><p>FHIR provides mean to fulfils this requirements, excepting for the metadata information that are recorded in the same FHIR resource documenting the data.</p>
<p>The fulfillment of this requirement is not however determined by the technical capabilities of FHIR, but it depends also on architectural and organizational choices.<br />
<br />
Community can enforce the adoption of suitable FAIR data object design choices to enforce this requirement, by specifying community FHIR profiles and implementation guides.</p></td>
<td><p>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects</p>
<p>This principle is important because there can be many reasons why data are no longer available whereas the associated metadata should be a permanent record to describe the data. Future reuse of available data requires separately identified metadata and it also crucial to enable future reproducibility of new data for more science. The practical application of this A2 FAIR principle to data and metadata from the clinical sciences and specifically, supported by the HL7 FHIR standards should consider the following recommendations.</p>
<ul>
<li><p>Some clinical data elements may serve as metadata for other data elements. If all data elements have identifiers are compliant with FAIR principle, A1 being global, unique, persistent and resolvable by machine (GUPRI) it should be possible to comply with this FAIR principle, A2.</p></li>
<li><p>Clinical data and associated metadata can be stored on multiple FHIR servers. This will present no issues if compliant with the FAIR principles of F1 and A2.</p></li>
<li><p>To maintain FAIR compliance it is critical to manage and maintain the persistency aspect of GUPRIs (independently on FHIR) for all data and metadata elements.</p></li>
</ul></td>
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
<td><p>FHIR provides support for standardized knowledge representation</p>
<p>The RDA-I1 (01M, O1D,  O2M, O2D) indicators are in general covered by virtue of using HL7 FHIR, however, to strive to semantic computable interoperability, communities should agreed on common vocabularies, profiles and other conformance resources that applies for their context of use.  </p></td>
<td><p>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects</p>
<p>There are different ways to interpret 'knowledge representation expressed in standardised format', for example the capability to:</p>
<ul>
<li><p>have a machine readable physical representation, e.g. JSON</p></li>
<li><p>represent and formalize healthcare models and data;</p></li>
<li><p>share clinical knowledge artifacts;</p></li>
<li><p>provide an expression logic</p></li>
<li><p>strive for semantic computable interoperability (i.e. semantic interoperability between machines)</p></li>
</ul>
<p>HL7 FHIR supports XML, JSON and RDF machine readable physical representations. It provides in general a formal (FHIR Infrastructure, the core framework on which FHIR depend, is a Normative part of FHIR); accessible and shared (the HL7 FHIR standard is public, accessible and usable by everyone) and broadly applicable language: HL7 FHIR is widely used in the Healthcare for covering a wide range of domains and use cases (from genetic to administrative data for representing healthcare related models and data). The FHIR Clinical Reasoning module provides "resources and operations to enable the representation, distribution, and evaluation of clinical knowledge artifacts such as clinical decision support rules, quality measures, public health indicators, order sets, clinical protocols, and evidence summaries.". It enables finally the representation of logic using languages such as FHIRPath and Clinical Quality Language (CQL).</p>
<p>FHIR resources can be used together with other knowledge representation approaches, including SNOMED CT Compositional Grammar </p>
<p>Thus, if we are looking to the first four aspects this principle is covered by virtue of using HL7 FHIR resources to represent metadata and data.</p>
<p>Concerning instead the last point, the compliance with FHIR, even if it is a strong enabler, may not be sufficient for the semantic computable interoperability. For example a vocabulary used by the sender or an extension defined in a specific context might not be understood by the receiver. To strive for semantic computable interoperability communities are invited to agree on context specific FHIR Implementation Guides, relying as possible on existing ones. </p></td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-I1-01D</td>
<td>Data uses knowledge representation expressed in standardised format</td>
<td>Important</td>
<td>See RDA-I1-01M</td>
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
<td><p>HL7 FHIR provides a formal way to bind codeable elements with vocabularies (intended as terminologies), but with very few exceptions, it doesn't impose the usage of any of them.</p>
<p>Communities should select FAIR-compliant vocabularies, preferably managed through FHIR  terminology services.</p>
<p>This choice should be formalized  through  community specified FHIR Implementation Guide, including appropriate conformance and terminology resources.</p></td>
<td><p>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects HL7</p>
<p>HL7 FHIR provides a formal way to bind codeable elements with vocabularies (intended as terminologies), but with very few exceptions, it doesn't impose the usage of any of them.</p>
<p>HL7 FHIR includes terminology resources and API that may facilitate the fulfillment of some 'technical' FAIR principles as the unique, global persistent identification of vocabulary metadata and data (e.g. by using the canonical URL).</p>
<p>To satisfy this principle FHIR implementers should make an assessment of the FAIRness of the terminologies to be used and  enforce the adoption of the FAIR-compliant vocabularies.</p></td>
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
<td><p>FHIR supports different kinds of (qualified) references among FHIR resources and also to non-FHIR objects.</p>
<p>Communities should determine what are the (qualified) references to other resources that are needed to provide a sufficient contextual knowledge for the scope of their community. This should be formalized  through a community FHIR Implementation Guide.</p></td>
<td><p>A qualified reference is intended as a cross-reference that explains its intent. </p>
<p>HL7 FHIR technically supports different kinds of (qualified) references among FHIR resources and also to non-FHIR objects.</p>
<p>This capability of HL7 FHIR doesn't guarantee however "per se" that as many meaningful links between metadata and data resources are used to enrich the contextual knowledge about the data (that is the goal).</p>
<p>Thus, if on one hand this principle is technically satisfied by HL7 FHIR, FHIR implementers should determine what are the links among resources that are needed to provide a sufficient contextual knowledge for the scope of their community.</p>
<p>The realization of this requirement may depend on the data and metadata design approach (e.g. hybrid approaches with some metadata represented using non-FHIR technologies) .</p></td>
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
<td>See RDA-I3-01M</td>
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
<th><strong>Interpretation for HL7 FHIR Data</strong></th>
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
<p>Communities should define which rich metadata are sufficient to describe data to make them useful in their context. This should be formalized with appropriate FHIR conformance resources in FHIR implementation guides.</p></td>
<td><p>This requirement is related to the F2, but while F2 focuses on metadata that allows its discovery, R1 focuses on the context under which the data were generated as well as they should been used.</p>
<p>General considerations made for F2 about FHIR apply also for R1, FHIR is therefore an enabling factor, but the conformance with FHIR is not necessarily a sufficient condition for fulfilling this requirement.</p>
<p>The fact data and metadata are 'richly described' depends on the context of use; therefore, depending on the use case, implementers should identify what are the minimal, recommended and suggested intrinsic and contextual information that should be returned to describe the data and make them actually USEFUL in a particular context.</p>
<p>FHIR implementers should look for specific FHIR Implementation Guides (IG) that cover the Resource types and the use case of interest; and/or define FHIR IGs that apply in their usage context.</p>
<p>The realization of this requirement may depend however on the data and metadata design approach (e.g. hybrid approaches with some metadata represented using non-FHIR technologies).</p></td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-R1.1-01M</td>
<td>Metadata includes information about the license under which the data can be reused</td>
<td>Essential</td>
<td><p>FHIR provides different means to specify the license and the conditions under which data can be reused.<br />
The adoption of FHIR is not however a sufficient condition for fulfilling this requirement.</p>
<p>Published FHIR resources have to include clear references to the usage license.<br />
<br />
Communities should specify in appropriate FHIR implementation guides  - for each kind of data - how this is realized in their context.</p></td>
<td><p>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects HL7</p>
<p>HL7 FHIR provides different means to specify the license and the conditions under which data can be used. For example, a resource may convey specific security metadata by using the security labels, enabling policy fragments to accompany the resource data; the Citation resource offers a copyright element to covey human readable copyright information at different level of granularity (Citation , abstract, cited artefacts); the Consent resource can be used to record choices which permits or denies identified recipient(s) or recipient role(s) to perform one or more actions within a given policy context, for specific purposes and periods of time.</p>
<p>The solution to be adopted may change depending on the type of data and the context of use.</p>
<p>The adoption of FHIR is not however a sufficient condition for fulfilling this requirement, implementers should therefore define how this requirement is supposed to be met.</p>
<p>The fulfillment of this requirement depends moreover on the capability of the organization to capture and record this kind of information.</p></td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-R1.1-02M</td>
<td>Metadata refers to a standard reuse license</td>
<td>Important</td>
<td>See RDA-R1.1-01M</td>
<td>See RDA-R1.1-01M.</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-R1.1-03M</td>
<td>Metadata refers to a machine-understandable reuse license</td>
<td>Important</td>
<td>See RDA-R1.1-01M</td>
<td>See RDA-R1.1-01M.</td>
</tr>
<tr style="border: 1px solid gray; ">
<td>RDA-R1.2-01M</td>
<td>Metadata includes provenance information according to community-specific standards</td>
<td>Important</td>
<td>HL7 FHIR offers a Provence resource enabling the recording of information sources and of the actions applied to them. Other resources, as the Citation, could be used for capturing instead publication related infos.<br />
<br />
The adoption of FHIR is not however a sufficient condition for fulfilling this requirement.<br />
<br />
Communities are encouraged to use the Provenance resource to improve description the data context. They should moreover specify in FHIR implementation guide how this requirement is realized in their context.</td>
<td><p>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects HL7.</p>
<p>This principle focuses on specific type of contextual data as where the data came from, how they have been processed; if it has been published before; who need to be cited and/or acknowledged....</p>
<p>Most of this information may be captured in HL7 FHIR by using the Provence resource enabling the recording of data sources and of the actions applied on them at different level of granularity.</p>
<p>Other kinds of resources, e.g. the Citation, could be used for capturing instead publication related infos.</p>
<p>As for some other principles, HL7 FHIR can technically support the data FAIRness, but it is not a sufficient condition for fulfilling this requirement; that depends also on the capability of the organization to capture and record this information.</p></td>
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
<td><p>FHIR is a standard that can be used to represent human and machine-readable metadata and data information.<br />
It defines formal profiling mechanisms to specify community agreed rules.</p>
<p>Even though HL7 FHIR can be considered it self a 'domain-relevant community standard' , implementers are strongly suggested to identify, and if needed specify, appropriate  FHIR Implementation Guides covering the community expectations in terms of models, vocabularies and other objects for their context of use.</p></td>
<td><p>Please refer to RDA-F1-01M and RDA-F1-01D for the discussion on distinct and identifiable metadata and data FAIR objects HL7.</p>
<p>HL7 FHIR is a globally recognized standard in the health domain, that can be used to represent human and machine-readable metadata and data information.<br />
It defines also formal profiling mechanisms to specify community agreed rules.</p>
<p>There are several published FHIR Implementation Guides describing how FHIR should be used for specific scopes.</p>
<p>Beyond this, there might be implementation independent standards (e.g. clinical guidelines) a community wish to refer to.</p>
<p>Implementers are therefore suggested to look for existing FHIR implementation guides or define new ones to cover appropriately the community expectations.</p></td>
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
