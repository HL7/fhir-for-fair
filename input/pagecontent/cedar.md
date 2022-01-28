### Short Description

The Agency for Healthcare Research and Quality (AHRQ) Center for Evidence and Practice Improvement (CEPI) supports the dissemination and implementation of patient centered outcomes research (PCOR) resources. The goals are to generate new knowledge, synthesize evidence, translate science on what works in health and health care delivery, and catalyze practice improvement.   

AHRQ launched the CEPI Evidence Discovery and Retrieval ([CEDAR](https://digital.ahrq.gov/ahrq-funded-projects/cepi-evidence-discovery-and-retrieval-cedar-project)) project with the CMS Alliance to Modernize Healthcare (Health FFRDC), operated by The MITRE Corporation. CEDAR facilitates the dissemination and discovery of PCOR findings from CEPI repositories in alignment with the FAIR Guiding Principles using standards-based application programming interface (API). The CEDAR API allows a diverse set of applications or systems to access the data that CEDAR aggregates from multiple CEPI source repositories. An initial step in CEDAR development was to assess CEPI repository adherence to the [FAIR Guiding Principles](https://www.go-fair.org/fair-principles) as described by the facets of findable, accessible, interoperable, and reusable. This step helped to better identify the needs of CEPI users, facilitate the discovery of CEPI PCOR resources, and improve FAIRness.  

The CEDAR team developed the C-FAIR Tool to evaluate the FAIRness of the CEPI repositories, and subsequently, the FAIRness of the CEDAR API. The Health FFRDC conducted an [environmental scan](https://digital.ahrq.gov/sites/default/files/docs/citation/cedar-environmental-scan.pdf) in 2020, which reviewed current FAIR measurement tools, including the Research Data Alliance’s (RDA) current [FAIR assessment tools](https://www.rd-alliance.org/group/fair-data-maturity-model-wg/outcomes/results-analysis-existing-fair-assessment-tools), and their applicability to measuring the FAIRness of the CEPI repositories.[4] RDA is an initiative launched in 2013 for the purpose of improving and enabling the open sharing and reuse of research data. From 2019-2020 the [RDA FAIR Data Maturity Working Group](https://www.rd-alliance.org/) identified and analyzed twelve publicly-available FAIR measurement tools in an effort create its own set of FAIR specifications and guidelines. 

The team reviewed each of the tools in RDA’s FAIR tool assessment for potential use to evaluate FAIRness of the CEPI repositories and each tool’s ability to inform and measure improvements in FAIRness that could result from the development of CEDAR. 

The CEDAR team then created the C-FAIR Tool which adapted the FAIR Guiding Principles and incorporated aspects of existing FAIR assessment tools to measure and score the FAIRness of the CEPI repositories.


### Summary of Main Findings and Gaps Identified by FAIRness Assessment

CEPI repositories were evaluated and scored using the adapted criteria and scoring system developed as part of the C-FAIR Tool. AHRQ’s repositories that support the United States Preventive Services Task Force (USPSTF), Effective Health Care Program (EHC), Evidence-based Practice Center (EPC) Program, CDS Connect, and National Guideline Clearinghouse (NGC) were included in the assessment. The results of this assessment established the baseline FAIRness of the CEPI repositories. Assessments will be performed on a regular basis as CEDAR aims to improve the FAIRness of the CEPI repositories. 

The CEDAR project used the RDA’s foundational analysis as a starting point in evaluating each tool for use in assessing the FAIRness of the CEPI repositories. In its review of the twelve tools, the CEDAR project identified four gaps: assessment of an entire repository, metadata, scoring, and domain specificity. These gaps are described below with information about how the CEDAR team used the gap to create CEPI repository-relevant criteria for inclusion in the C-FAIR Tool:  

- Assessment of an entire repository. Most existing tools assess the FAIRness of data artifacts themselves. The CEDAR team adapted tool criteria and the FAIR Guiding Principles to enable measurement of the FAIRness of an entire CEPI repository as a collection of digital objects. As CEPI repository stewards curate digital objects consistently within each individual repository, including how metadata properties are valued, the CEDAR team determined it would be valuable to assess FAIRness of a repository as a collection of digital objects instead of the digital objects themselves to provide a holistic view of a repository’s FAIRness. 

- Metadata. The team developed criteria focused on the metadata of the digital objects and not the data specifically. This adaptation of earlier FAIRness measurement tools recognizes that health information takes many forms, including structured data sets, screening or treatment guidelines in PDF or other formats, evidence reports, and clinical decision support tools. All artifacts within each CEPI repository follow the same metadata model. 
  
- Scoring. To determine whether CEDAR has increased the findability of the contents of the CEPI repositories, the team developed scoring criteria that emphasize the findability component within the FAIR Guiding Principles. Therefore, the scoring mechanism within the C-FAIR Tool has five criteria associated with the findability facet, while accessible, interoperable, and reusable have three. 
  
- Domain specificity. No single existing measurement tool aligned completely with the needs of the CEPI repositories as many tools are domain-specific, (e.g., domain focused recommendations for quality improvement of geospatial data). The C-FAIR Tool developed by the MITRE team attempted to therefore create criteria that can apply to a wide range of domains.  

In the context of the CEDAR project, repository assessment using the C-FAIR Tool provides an opportunity to address any observable gaps in FAIRness. The C-FAIR Tool provides definitions so the data stewards or repository owners can improve FAIRness through repository-level improvements or modifications. 


### Using HL7 FHIR to Support the FAIR Principles.

During the development of the C-FAIR Tool, the CEDAR team leveraged work from the FHIR4FAIR Work Group that was underway during the January 2021 HL7 Connectathon. Specifically, the CEDAR team modified the C-FAIR Tool criteria to reflect insights that were made to the RDA FAIR Indicators. This RDA FAIR Indicator exercise mapped which indicators related to FHIR Resources. After reviewing the FHIR4FAIR Work Group’s mapping, CEDAR C-FAIR Tool leveraged this mapping, as the CEDAR API uses the Citation Resource. 

The CEDAR API uses the FHIR Citation Resource to represent and share information about indexed artifacts from the CEPI repositories. The C-FAIR Tool criteria were also created to incorporate aspects of the Citation Resource. For example, C-FAIR Tool criterion F2.1 lists metadata elements that are included as data elements in the Citation Resource. The scope of the Citation Resource aligns well with the mission of improving FAIRness, which is why we aligned the CEDAR API and C-FAIR Tool to the Citation Resource.


### Acknowledgement

This technical data was produced for the U.S. Government under Contract Number 75FCMC18D0047, Task Order 75Q80120F80008 and is subject to Federal Acquisition Regulation Clause 52.227-17, Rights in Data-General.

No other use other than that granted to the U.S. Government, or to those acting on behalf of the U.S. Government under that Clause is authorized without the express written permission of The MITRE Corporation. 

For further information, please contact The MITRE Corporation, Contracts Management Office, 7515 Colshire Drive, McLean, VA 22102-7539, (703) 983-3000. © 2021 The MITRE Corporation.  

Approved for Public Release, case no. 22-0134

©2022 The MITRE Corporation. All Rights Reserved.
