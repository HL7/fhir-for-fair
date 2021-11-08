### Overview

#### Introduction:

The Immunology Database and Analysis Portal (ImmPort)
( <https://www.immport.org/home>) repository aims to be a trustworthy
data resources as an essential component of the research enterprise
focusing on immunological research.  ImmPort offers support to the
community by providing resources including secure, reliable, and
scalable computing systems and infrastructure to operate the data
repository; long term archival and data preservation; integration and
curation of disparate data sets and data types in specific domains and
across clinical, laboratory and computational areas; data sharing, data
management, and dissemination following the FAIR Data Principles -
Findability, Accessibility, Interoperability and Reusability;
development of and adherence to standards and best practices for data
collection, presentation and exchange; and training in deposition and
use of data and tools. To achieve its mandate of FAIR data sharing,
ImmPort transforms the shared data into a more user-friendly resource to
enable reuse of the data to gain new insights and findings to advance
immunology research. To date, ImmPort has shared 482 studies
encompassing various data types and organisms. Further, ImmPort
repository has participant level data from 145 clinical trials that are
openly available for reuse
(<https://immport.org/shared/search?filters=clinical_trial:Y>).

#### Clinical trial datasets for use:

  - Use case 1: Dataset with clinical data elements: 
    
      - [SDY1544](https://www.dev.immport.org/shared/study/SDY1544) -
        LEA29Y (Belatacept) Emory Edmonton Protocol (LEEP) (CIT-04) and
        Extended Follow Up after Islet Transplantation in Type 1
        Diabetes (CIT-08)
    
      - There is no associated publication
    
      - Dataset has demographic and clinical information.

  - Use case 2: Dataset with clinical and mechanistic data elements: 
    
      - [SDY998](https://www.immport.org/shared/study/SDY998) - AMP
        Rheumatoid Arthritis Phase 1
    
      - Dataset has demographic and clinical information along with
        mechanistic study files.
    
      - Associated publications:
        
        1.  Methods for high-dimensional analysis of cells dissociated
            from cryopreserved synovial tissue, Arthritis research &
            therapy, 2018, 20(1), 139,
            PMID: [29996944](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=pubmed&dopt=Abstract&list_uids=29996944)
        
        2.  Defining inflammatory cell states in rheumatoid arthritis
            joint synovial tissues by integrating single-cell
            transcriptomics and mass cytometry, Nature Immunology, 2019,
            20(7), 928-942,
            PMID: [31061532](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=pubmed&dopt=Abstract&list_uids=31061532)
        
        3.  HBEGF+ macrophages in rheumatoid arthritis induce fibroblast
            invasiveness, Science translational medicine, 2019, 11,
            491, [31068444](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=pubmed&dopt=Abstract&list_uids=31068444)
        
        4.  PD-1hiCXCR5- T peripheral helper cells promote B cell
            responses in lupus via MAF and IL-21, JCI insight, 2019, 4,
            20, [31536480](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=pubmed&dopt=Abstract&list_uids=31536480)

Machine readable data is available via ImmPort
API: <https://docs.immport.org/#API/DataQueryAPI/dataqueryapi/>

#### Scenario:

  - Retrieve study metadata and associated data via API or from website

  - All Immport studies are searchable using study metadata API

  - Assess FAIRness of the metadata/data using the RDA FAIR data
    maturity Indicators

  - Convert metadata/data into FHIR standard

  - Assess FAIRness of the metadata/data again using the RDA FAIR data
    maturity Indicators

  - Analyze changes to FAIRness (if any)

### Initial Assessment of FAIRness using the RDA FAIR Maturity Indicators

To understand the FAIRness of this resource prior to the implementation
of FHIR, we mapped the RDA FAIR indicators to the ImmPort resource at
the study level using two datasets defined above.

Dataset SDY1544 is a clinical trial study with no associated study files
and no mechanistic data, and dataset SDY998 is a clinical research study
with associated study files and mechanistic data such as RNAseq, CyTOF
(mass cytometry) and flow cytometry.  In summary, ImmPort as a resource
is relatively FAIR and, as such, satisfied most of the indicators for
the findability (7/7) and accessibility (11/11).  For interoperability
and reusability, the studies satisfied 7/12 and 7/10 indicators,
respectively.

<table>
<thead>
<tr class="header">
<th>Dataset</th>
<th>Findable</th>
<th>Accessible</th>
<th>Interoperable</th>
<th>Reusable</th>
<th>Comments</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>SDY1544</td>
<td>7/7</td>
<td>11/11</td>
<td>11/12</td>
<td>7/10</td>
<td></td>
</tr>
<tr class="even">
<td>SDY998</td>
<td>7/7</td>
<td>11/11</td>
<td>11/12</td>
<td>7/10</td>
<td></td>
</tr>
</tbody>
</table>

### Mapping of ImmPort metadata into FHIR resources

In an effort outside of this implementation guide, ImmPort has planned
to improve its interoperability by mapping the FHIR resources to the
ImmPort data model.  In addition, ImmPort clinical data will also be
transformed and disseminated in the FHIR format.  After the FHIR
implementation and data transformation, it is expected that ImmPort will
see an improvement in the interoperability and reusability category,
which is consistent to the assessments from other scenarios in this
implementation guide.

### References

FAIR Data Maturity Model Working Group (2020). FAIR Data Maturity Model:
specification and guidelines. Research Data Alliance. DOI:
10.15497/RDA00050
