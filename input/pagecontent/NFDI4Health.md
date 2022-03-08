### Overview

[NFDI4Health](https://www.nfdi4health.de/en/) stands for "National
Research Data Infrastructure for Personal Health Data in Germany". It is
part of a network of 30 [NFDI
consortia](https://www.nfdi.de/consortia/?lang=en) covering different
scientific disciplines like chemistry or cultural heritage. All NFDIs
got a five-year grant (2020-2025) from the German Federal Ministry of
Education and Research (BMBF). The main goal is **to build a networked
infrastructure and connect existing datasets**.

NFDI4Health provides a broad coverage of biomedical data-driven projects
like:

  - epidemiological cohorts
  - clinical trials
  - public health surveys
  - administrative databases

NFDI4Health is strongly committed to the ideas of FAIR data management. However, as personal and particularly sensitive data, health data are
subject to special protection regulations. They may only be made
available to third parties with the patient's consent or after
de-identification. Furthermore, accompanying study materials such as
protocols, descriptions of data catalogs or data entry forms are in part
considered intellectual property and are only published in an incomplete
manner.

### NFDI4Health Study Portal

In the context of the Sars-Cov-2 pandemic, as in many consortia, a
special intitiative was created to support research. The [NFDI4Health
Task Force COVID-19](https://www.nfdi4health.de/en/task-force-covid-19/)
is developing, among other things, a hub of clinical and epidemiological
studies in Germany related to COVID-19: the [**COVID-19 Study
Portal**](https://covid19.studyhub.nfdi4health.de/).

#### Technical background

The study portal consists of three main parts:

1.  The [central serach hub](https://covid19.studyhub.nfdi4health.de/)
    serving as a study registry. The search hub is an in-house
    development.
2.  The [asset repository](https://csh.nfdi4health.de/) for maintaing
    all study-related digital resources like documents or datasets. The
    asset repository is based on the
    [FAIRDOM-<span class="underline">SEEK</span>](https://fair-dom.org/instance.html)
    research data management system.
3.  The [study catalogue
    browser](https://studycataloguebrowser.ship-med.uni-greifswald.de/)
    giving insight to the case report forms, instruments or assessments
    used. It is based on
    [Opal](https://www.obiba.org/pages/products/opal/) and
    [Mica](https://www.obiba.org/pages/products/mica/).

#### Example application

Typical research studies such as
[SHIP-COVID](https://covid19.studyhub.nfdi4health.de/resource/20181)
have a complex structure and can be characterized by a variety of
attributes. One problem here is the low consensus on the meaning and
value list options of individual attributes. Especially generic
attributes such as study type, study focus, primary objective, or target
population are understood differently in clinical trials than in
epidemiological cohorts. Individual parameters such as phase, arm, or
investigational drug are specific to individual research areas.

### Study Portal Metadata Schema

A custom **metadata schema (MDS)** with 86 attributes ([in version 1.0](https://github.com/nfdi4health/metadataschema)) was designed for the COVID-19 study
portal gathering COVID-19 health research such as studies, questionnaires and documents.

#### FAIRness assessment

The NFDI4Health Taskforce has been committed to FAIR concepts from the beginning. While discoverability and accessibility were primarily addressed as part of the redevelopment or customization of the web applications described above, interoperability of data was low. Therefore, the possibility of applying the HL7 FHIR standard to improve FAIRness was explored with regards to:

- I1. (Meta)data use a formal, accessible, shared, and broadly applicable language for knowledge representation: HL7 FHIR is modern format specifically designed for the exchange of healhtcare data. FHIR has an open specification, is freely usable and can be processed in an automated manner using a larger selection of widely available tools due to its serialization as XML, JSON, and RDF.
- I2. (Meta)data use vocabularies that follow FAIR principles: FHIR requires on the one hand the explicit designation of vocabularies, from which codes originate, by specifying code systems. Furthermore, FHIR supports the use of consented value sets from international standards, e.g. HL7, IHE or CDISC, through the mechanism of 'binding strength' to sets of codes/concepts.
- I3. (Meta)data include qualified references to other (meta)data: FHIR offers various possibilities for the use of identifiers depending on the use case and the technical requirements as described in [FHIR identifiers and FAIR principles](https://build.fhir.org/ig/HL7/fhir-for-fair/FHIRidentifiers.html).

#### Utilizing of HL7 FHIR

To elevate data FAIRness, we aim to adopt the HL7 FHIR and therefore an initial mapping to HL7 FHIR was performed. The MDS items were each mapped to the FHIR resources 
-	[ResearchStudy](https://www.hl7.org/fhir/researchstudy.html)
-	[Questionnaire](https://www.hl7.org/fhir/questionnaire.html)
-	[DocumentReference](https://www.hl7.org/fhir/documentreference.html) 

We used HL7 FHIR Version Release 4 (v4.0.1) as mapping target. First results showed that 58% of mapped items were available in FHIR as standard resources. The results are published as a paper on [PubMed](https://pubmed.ncbi.nlm.nih.gov/34042687/) and archieved on [FAIRDOMHub](https://fairdomhub.org/data_files/4210?version=2).

A new version of the MDS was released which is currently mapped to FHIR and subsequently FHIR profiles will be built with needed extensions for this use case.

#### Lessons learned

Unfortunately, the adoption of FHIR in clinical research is still low. Most of the problems encountered in mapping the MDS are not due to HL7 FHIR. They are due to unclear meaning or highly divergent usage of many of the characteristics of medical research projects in the community itself. That makes a mapping to community-consented and thus accepted and widely used definitions and value sets difficult. The current status of the FHIR specification with regards to clinical research is largely influenced by clinical trials and not by cohorts, registers, public health surveys and administrative databases.

### Acknowledgement

NFDI4Health is funded by the [German Research
Foundation](https://www.dfg.de/en/) (DFG), project number 451265285.
