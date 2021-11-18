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

NFDI4Health is strongly committed to the ideas of FAIR data management. 

However, as personal and particularly sensitive data, health data are
subject to special protection regulations. They may only be made
available to third parties with the patient's consent or after
de-identification. Furthermore, accompanying study materials such as
protocols, descriptions of data catalogs or data entry forms are in part
considered intellectual property and are only published in an incomplete
manner.

In the context of the Sars-Cov-2 pandemic, as in many consortia, a
special intitiative was created to support research. The [NFDI4Health
Task Force COVID-19](https://www.nfdi4health.de/en/task-force-covid-19/)
is developing, among other things, a hub of clinical and epidemiological
studies in Germany related to Covid-19: the [**COVID-19 Study
Portal**](https://covid19.studyhub.nfdi4health.de/).

### Technical background

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

### Example application

Typical research studies such as
[SHIP-COVID](https://covid19.studyhub.nfdi4health.de/resource/20181)
have a complex structure and can be characterized by a variety of
attributes. One problem here is the low consensus on the meaning and
value list options of individual attributes. Especially generic
attributes such as study type, study focus, primary objective, or target
population are understood differently in clinical trials than in
epidemiological cohorts. Individual parameters such as phase, arm, or
investigational drug are specific to individual research areas.

A [custom metadata schema](https://pubmed.ncbi.nlm.nih.gov/34042687/)
with approximately 100 attributes was designed for the Covid-19 study
portal. There are still ambiguities in the practical use by external
users.

### Options for utilizing FHIR4FAIR

The NFDI4Health Taskforce has been working on the possibility of using
the HL7-FHIR standard while respecting the concepts of FAIR from the
very beginning. Unfortunately, the spread of FHIR in clinical research
is currently (as of 2020/2021) still manageable. Currently, a mapping of
the metadata schema to FHIR is being developed and evaluated. It can
already be foreseen that the inherent support of
[metadata](https://confluence.hl7.org/display/SOA/Metadata+and+data),
[identifiers](https://confluence.hl7.org/display/SOA/FHIR+identifiers+and+FAIR+principles+on+IDs)
and
[terminologies](https://build.fhir.org/ig/HL7/fhir-for-fair/terminology.html)
will be of great help. Later applications will eventually be natively
based on FHIR.

### Acknowledgement

NFDI4Health is funded by the [German Research
Foundation](https://www.dfg.de/en/) (DFG), project number 451265285.
