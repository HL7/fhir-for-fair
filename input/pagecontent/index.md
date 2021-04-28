### Scope

This guide aims to provide guidance on how HL7 FHIR can be used for
supporting **FAIR health data** implementation and assessment. Other
kinds of health-related artefacts, as clinical guidelines, algorithms,
software, models are out of scope.

### What does FAIR mean?

**FAIR** stands for **F**indable, **A**ccessible, **I**nteroperable and
**R**eusable

<table>
<tbody>
<tr class="odd">
<td><p><img src="home-1.png" style="width:2.98265in;height:1.01225in" alt="FAIR data - Wikipedia" /></p>
<p>Figure 1 – FAIR [SangyaPundir / <a href="https://creativecommons.org/licenses/by-sa/4.0">CC BY-SA</a>]</p></td>
</tr>
</tbody>
</table>

The [FAIR principles](https://www.go-fair.org/fair-principles) - **a
minimal set of community-agreed guiding principles and practices**
- were first introduced by Wilkinson et al (2016) in their seminal
paper
([doi.org/10.1038/sdata.2016.18](http://doi.org/10.1038/sdata.2016.18)).
The authors intent was to provide guidelines to improve
the **Findability**, **Accessibility**, **Interoperability**,
and **Reuse** (FAIR) of scientific data. Since their first introduction
in 2016, FAIR principles were well received in international community
and rapidly adopted by researchers.

The FAIR principles put specific emphasis on improving the ability of
machines to automatically find and make use of the  research (and other)
data, as well as to support its reuse by the human researches. 

Therefore, acting as a guideline for those wishing to gain much greater
value from the future reuse of their scientific data and relevant
metadata.

We provide more detailed [**introduction to the FAIR data
principles**](FAIR.html) as well as the [**relationship to the HL7 FHIR
standard**](FHIRandFAIR.html) in later sections of this IG.

There are [**existing concepts for operationalization and indicator for
assessment of
FAIRness**](https://confluence.hl7.org/pages/viewpage.action?pageId=104570028),
for example Research Data Alliance or EOSC recommendations.

We discuss their implications in a special section [**HL7 FHIR and RDA
Indicators**](FHIRandRDAMetrics.html).

### What this project is aiming to?

The FAIRness for FHIR project, this Implementation Guide is part of, is
intended to be the result of an active collaboration between the RDA and
HL7 communities.

This project has as main goals to:

  - Facilitate the **collaboration** between the **FAIR** and the
    **FHIR** **communities**

  - Enable a **cooperative usage** of the **FHIR** standard and **FAIR**
    principles.

  - Support the **assessment and implementation of FAIR health data** by
    using HL7 FHIR

### Which kind of problems FAIR and this guide is trying to address?

<table>
<thead>
<tr class="header">
<th><img src="home-2.png" style="width:3.81613in;height:1.7551in" /></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Allow researchers to make available under specified conditions of use set of data, derived from a data source, that have been collected and consolidated for a specific purpose.</td>
</tr>
<tr class="even">
<td><img src="home-3.png" style="width:4.37755in;height:2.05676in" /></td>
</tr>
<tr class="odd">
<td>Allow researchers and data scientists to look for and access previously collected data sets to answer specific questions</td>
</tr>
</tbody>
</table>

### Structure of this guide

To achieve the defined goals this guide has been structured in two main
parts:

1)  An informative guidance providing general guidelines on the
    cooperative usage of FHIR and FAIR, specifically best practices for
    satisfying the FAIR principles when publishing FHIR resources.

2)  A set of FHIR conformance resources and examples that provide, for
    selected case(s), practical examples of how FAIR principles can be
    realized and assessed by using HL7 FHIR.

The [**methodology**](methodology.html) page describes the approach
followed for realizing this guide.

### Audience

The audience for this Implementation Guide includes:

**Researchers**

  - People who generate, process or use research health data

**Health Data Providers**

  - Healthcare providers that populate clinical data warehouses

  - Clinical study groups, operators of registries or epidemiological
    cohorts, surveillance or Public Health

**Technical Implementers**

  - Vendors of EHR systems

  - Vendors of data repositories

  - Vendors of EDC systems

**Government agencies**

  - Funding institutions that want to ensure the sustainable usability
    of their projects.

  - Legislators issuing guidelines for the use of personal data (GDPR,
    Data Governance Act)

  - Regulatory bodies providing best practice guidelines.

**Public**

  - Citizens who want to use their data for their own purposes or donate
    data for research purposes

### Authors and Contributors

<table>
<thead>
<tr class="header">
<th>Roles</th>
<th>Name</th>
<th>Organization</th>
<th>Contact</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td>Giorgio Cangioli</td>
<td>HL7 Europe</td>
<td>giorgio.cangioli_at_hl7europe.org</td>
</tr>
<tr class="even">
<td></td>
<td>Kees van Bochove</td>
<td>The Hyve</td>
<td><a href="https://orcid.org/0000-0002-8589-060">https://orcid.org/0000-0002-8589-060</a></td>
</tr>
<tr class="odd">
<td></td>
<td>Matthias Löbe</td>
<td>IMISE University of Leipzig</td>
<td>m@lö.be</td>
</tr>
<tr class="even">
<td></td>
<td>Ian Harrow</td>
<td>Pistoia Alliance</td>
<td><a href="http://orcid.org/0000-0003-0109-0522">http://orcid.org/0000-0003-0109-0522</a></td>
</tr>
<tr class="odd">
<td></td>
<td>Olga Vovk</td>
<td>Samvit Solutions</td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td>Alicia Martinez-Garcia </td>
<td>Andalusian Health Service</td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td>Catherine Chronaki</td>
<td>HL7 Europe</td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td>Brian S. Alper</td>
<td>Computable Publishing</td>
<td></td>
</tr>
</tbody>
</table>
