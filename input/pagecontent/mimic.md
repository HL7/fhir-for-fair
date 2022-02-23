### Introduction
#### Scope

The scope of this real-world case is to implement HL7 FHIR for the MIMIC-IV-ED (MIMIC-ED)
(<https://physionet.org/content/mimic-iv-ed/1.0/>) dataset and assess the level of FAIRness before and after implementation. By doing so, this case contributes to: 1) the MIMIC-ED community by providing an HL7 FHIR model of the data and examplar implemention, and 2) the FAIR community by providing knowledge about what parts of FAIR can be addressed, in this particular case, when choosing HL7 FHIR to implement the principles. The lessons learned here could be applied to other cases where the implementation of the FAIR principles using HL7 FHIR is desirable.


#### Data

MIMIC-ED is a module of the MIMIC-IV (<https://physionet.org/content/mimiciv/0.4/>) dataset,
the latter of which was published in August 2020 and contains clinical
data on hospital stays sourced from hospital information systems.
MIMIC-ED, published in June 2021, contains emergency department (ED)
admissions at the Beth Israel Deaconess Medical Center (Boston, MA, USA)
between 2011 and 2019. At the time of writing, version 1.0 of MIMIC-ED
contains de-identified data from 448,972 ED stays. The dataset is made
available freely via PhysioNet
([https://physionet.org/](https://physionet.org/content/mimic-iv-ed/1.0/)),
a repository for medical research data, and is intended for both
research and educational purposes. PhysioNet distributes the data to its credentialed users that, after signing a
data use agreement, can download the raw data (CSV) and/or access the
data through services such as the Google Cloud Platform.

MIMIC-ED follows a star-like structure (Figure 1) around
the *edstays *table, which contains two identifiers through which the
other tables are linked (*subject\_id* referring to a patient
and *stay\_id* referring to an ED stay of a patient). The other five
tables contain information that was documented during a patient's stay
at the ED: discharge diagnoses (*diagnosis*), medication taken prior to
the ED stay (*medrecon*), medication dispensed during the ED stay
(*pyxis*), information collected at the time of triage (*triage*), and
aperiodic vital signs measured during the ED stay (*vitalsign*). A
description of each table and its elements, including background,
license, access, and citation information is provided through the
MIMIC-ED page at PhysioNet.

  - DOI: <https://doi.org/10.13026/77z6-9w59>

  - Data (ZIP file, when access is
    provided): <https://physionet.org/content/mimic-iv-ed/get-zip/1.0/>

<div><img src="mimic-1.png" style="width:30%"/></div>

**Figure 1.** *MIMIC-ED table structure. *


### Initial FAIRness assessment

The [RDA FAIR Data Maturity Indicators](https://confluence.hl7.org/x/rJw7Bg) were used to assess FAIRness. 
First, FAIRness of MIMIC-ED was assessed before the implementation of HL7 FHIR.
In other words, the FAIRness of MIMIC-ED as it is being distributed by
PhysioNet. MIMIC-ED passed most (except one) indicators for Findability
and Accessibility. The one indicator that it did not pass is the
requirement for metadata to be available when the data is no longer
available; this can assumed to be true, but has not been specified by
PhysioNet. Interoperability and Reusability were only partly implemented. MIMIC-ED does not use any FAIR-compliant
vocabularies for annotating its data semantics, nor does it comply with
a standard data model. Hence, implementing HL7 FHIR would probably
contribute to the Interoperability and Reusability aspects of FAIR in
the case of MIMIC-ED. 

**Table 1. ***FAIRness assessment of MIMIC-ED before implementing
HL7 FHIR. *

<table style="border-color: #000000; width:80 1px solid gray;">
<thead>
<tr style="border: 1px solid gray; background-color: #E5E4E2;">
<th></th>
<th><strong>Findable</strong></th>
<th><strong>Accessible</strong></th>
<th><strong>Interoperable</strong></th>
<th><strong>Reusable</strong></th>
</tr>
</thead>
<tbody>
<tr style="border: 1px solid gray; ">
<td><strong>Passed RDA indicators</strong></td>
<td>7 / 7<br />
Fully implemented</td>
<td>11 / 12<br />
Fully implemented</td>
<td>7 / 12<br />
Partly implemented</td>
<td>2 / 10<br />
Not/partly implemented</td>
</tr>
<tr style="border: 1px solid gray; ">
<td><strong>Positives</strong></td>
<td><ul>
<li><p>(Meta)data are findable through a globally unique DOI</p></li>
<li><p>Metadata includes data access instructions and license information</p></li>
<li><p>Metadata is findable through a search engine</p></li>
</ul></td>
<td><ul>
<li><p>Clear data access instructions</p></li>
<li><p>(Meta)data can be accessed manually</p></li>
<li><p>Resolvable identifiers for (meta)data</p></li>
<li><p>HTTP/HTTP GET for (meta)data access</p></li>
<li><p>Authentication and authorization through PhysioNet</p></li>
</ul></td>
<td><ul>
<li><p>Data available as CSV files</p></li>
<li><p>Metadata refers to and qualifies other data</p></li>
</ul></td>
<td><ul>
<li><p>Metadata contains license information</p></li>
<li><p>Data are expressed in compliance with a machine-<br />
understandable standard (CSV)</p></li>
</ul></td>
</tr>
<tr style="border: 1px solid gray; ">
<td><strong>Negatives</strong></td>
<td></td>
<td><ul>
<li><p>No guarantee or mention that metadata will stay available<br />
when the data is no longer available</p></li>
</ul></td>
<td><ul>
<li><p>(Meta)data do not use FAIR-compliant vocabularies<br />
for annotating data semantics</p></li>
<li><p>(Meta)data do not use a standardised format for <br />
knowledge representation</p></li>
</ul></td>
<td><ul>
<li><p>No standard or machine-understandable reuse<br />
license (PhysioNet license, free-text)</p></li>
<li><p>Metadata does not include provenance information</p></li>
<li><p>(Meta)data do not comply with a community standard<br />
(ongoing efforts to use OMOP CDM)</p></li>
</ul></td>
</tr>
</tbody>
</table>


### FHIR implementation

Using HL7 FHIR to implement the FAIR principles should improve the
machine-readability/interoperability/FAIRness of the MIMIC-ED dataset.
The following steps were performed. 

  - Model the data and metadata conforming the HL7 FHIR data model (using
    the Patient, Encounter, Condition, MedicationStatement,
    MedicationDispense, Observation, and Procedure resources)

  - Set up an HL7 FHIR facade server that can serve the (meta)data via the HL7
    FHIR REST API

  - Enable SEARCH operations that allow queries such as “retrieve all ED
    stays of patient X” or “which patients were discharged from the ED
    with diagnose Y”

<div><img src="mimic-2.png" style="width:30%"/></div>

**Figure 2.** Exemplar implementation of an HL7 FHIR facade for serving
MIMIC-ED data. *


### FAIRness assessment after implementation

FAIRness of MIMIC-ED was assessed once again after modeling the (meta)data as HL7 FHIR resources and setting up an HL7 FHIR facade server. The goal of this assessment was to help identify where the implemented solution does or does not improve FAIRness and to formulate best practices and lessons learned. Important note: the indicators RDA-I3-02M and RDA-I3-02D ((meta)data includes (qualified) references to other data) were considered to be 'not applicable' for the post assessment, as those were not implemented despite that HL7 FHIR provides the tools to satisfy these indicators.

**Table 2. ***FAIRness assessment of MIMIC-ED after implementing
HL7 FHIR. *

<table style="border-color: #000000; width:80 1px solid gray;">
<thead>
<tr style="border: 1px solid gray; background-color: #E5E4E2;">
<th></th>
<th><strong>Findable</strong></th>
<th><strong>Accessible</strong></th>
<th><strong>Interoperable</strong></th>
<th><strong>Reusable</strong></th>
</tr>
</thead>
<tbody>
<tr style="border: 1px solid gray; ">
<td><strong>Passed RDA indicators</strong></td>
<td>5 / 7<br />
Partly implemented</td>
<td>8 / 12<br />
Partly implemented</td>
<td>11 / 12<br />
Partly implemented</td>
<td>5 / 10<br />
Partly implemented</td>
</tr>
<tr style="border: 1px solid gray; ">
<td><strong>Positives</strong></td>
<td><ul>
<li><p>HL7 FHIR provides resource identifiers and captures business identifiers</p></li>
<li><p>Some metadata is already implied by resources<br/><br/>
(e.g., a Patient resource covers "who" information about patients)</p></li>
<li><p>Metadata can be captured in separate resources<br/><br/>  
(e.g., CapabilityStatement, StructureDefinition, Library) </p></li>
</ul></td>
<td><ul>
<li><p>REST API (HTTP) to access (meta)data</p></li>
<li><p>Resolvable resource identifiers</p></li>
<li><p>Support for authentication and authorization</p></li>
</ul></td>
<td><ul>
<li><p>HL7 FHIR data model</p></li>
<li><p>JSON and/or XML representation</p></li>
<li><p>Use of vocabularies and value sets</p></li>
</ul></td>
<td><ul>
<li><p>Metadata contains license information</p></li>
<li><p>Provenance information in Provenance resource as metadata</p></li>
</ul></td>
</tr>
<tr style="border: 1px solid gray; ">
<td><strong>Negatives</strong></td>
<td><ul>
<li><p>Metadata discovery needs extra attention</p></li>
</ul></td>
<td><ul>
<li><p>Metadata does not contain access information,<br/><br/>  
already assumed to have access to an HL7 FHIR server</p></li>
</ul></td>
<td><ul>
<li><p>No reference to other (meta)data in this example, but references could be added using HL7 FHIR</p></li>
</ul></td>
<td><ul>
<li><p>No standard or machine-understandable reuse<br />
license (PhysioNet license, free-text)</p></li>
</ul></td>
</tr>
</tbody>
</table>


#### Lessons learned

Overall, the used implementation of HL7 FHIR for expressing and distributing MIMIC-ED data improves the interoperability and reusability and poses some extra challenges in terms of findability and accessibility. Findability requires ample metadata that is offered in such way it can be harvested and indexed. Some of the metadata that PhysioNet [publishes](https://physionet.org/content/mimic-iv-ed/1.0/) for MIMIC-ED became redundant, as all HL7 FHIR resources are self-descriptive. For instance, when using a MedicationStatement resource it is not necessary to seperately describe that there is data about medication consumed by a patient, as this information is captured in the definition and scope of the resource. Other resource-level metadata, such as author information, provenance, license, and access information, have to be captured in separate resources such as Library. Metadata discoverability is challenging when only using HL7 FHIR, as details on how to reach an HL7 FHIR server should be published outside of that server anyway. Hence, it is recommended to keep an indexable, publicly available, page to expose such metadata. The PhysioNet repository is a good example here. Such a page would also be necessary to satisfy indicators RDA-A1-02M and RDA-A1-02D (manual access to (meta)data). In short:

  - To satisfy indicator RDA-F4-01M (metadata discoverability), using a separate public repository for certain metadata is recommended.

  - Some metadata is captured in resources used for the data (e.g., Patient or Observation) while other resources are used specifically for metadata (e.g., Library). 

  - HL7 FHIR improves interoperability by providing a (meta)data model, machine-readible representations, and REST API. Modeling MIMIC-ED using HL7 FHIR resources was relatively easy to do. 

  - HL7 FHIR does not solve the lack of a standard licence, references to other (meta)data, or provenance data. However, once present those data can be modeled and exposed with HL7 FHIR. 