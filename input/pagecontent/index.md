### Scope

This guide aims to provide guidance on how HL7 FHIR can be used for supporting **FAIR health data** implementation and assessment to enable a cooperative usage of the HL7 FHIR and FAIR paradigms. Other kinds of health-related artefacts, such as clinical guidelines, algorithms, software, models are out of scope.

### What does FAIR mean?

**FAIR** stands for **F**indable, **A**ccessible, **I**nteroperable and **R**eusable

<table>
<tbody>
<tr class="odd">
<td><p><img src="index-1.png" style="width:2.98265in;height:1.01225in" alt="FAIR data - Wikipedia" /></p>
<p>Figure 1 – FAIR [SangyaPundir / <a href="https://creativecommons.org/licenses/by-sa/4.0">CC BY-SA</a>]</p></td>
</tr>
</tbody>
</table>

The [FAIR principles](https://www.go-fair.org/fair-principles) - **a minimal set of community-agreed guiding principles and practices** - were first introduced by Wilkinson et al (2016) in their seminal paper ([doi.org/10.1038/sdata.2016.18](http://doi.org/10.1038/sdata.2016.18)).

The authors intent was to provide guidelines to improve the **Findability**, **Accessibility**, **Interoperability**, and **Reuse** (FAIR) of scientific data. Since their first introduction in 2016, FAIR principles were well received in international community and rapidly adopted by researchers.

The FAIR principles put specific emphasis on improving the ability of machines to automatically find and make use of the  research (and other) data, as well as to support its reuse by the human researches. Therefore, acting as a guideline for those wishing to gain much greater value from the future reuse of their scientific data and relevant metadata.

We provide more detailed [**introduction to the FAIR data principles**](FAIR.html) as well as the [**relationship to the HL7 FHIR standard**](FHIRandFAIR.html) in later sections of this IG. 

There are [**existing concepts for operationalization and indicator for assessment of FAIRness** ](RDAMetrics.html), for example Research Data Alliance or EOSC recommendations. We discuss their implications in a special section [**HL7 FHIR and RDA Indicators**](FHIRandRDAMetrics.html).

### What this project is aiming to?

The FAIRness for FHIR project, this Implementation Guide is part of, is intended to be the result of an active collaboration between the RDA and HL7 communities.

This project has as main goals to:

  - Facilitate the **collaboration** between the **FAIR** and the **FHIR** **communities**

  - Enable a **cooperative usage** of the **FHIR** standard and **FAIR** principles.

  - Support the **assessment and implementation of FAIR health data** by using HL7 FHIR

### Which kind of problems FAIR and this guide is trying to address?

 <br />
 
 - Allow researchers to **make available** under specified conditions of use set of data, derived from a data source, that have been collected and consolidated for a specific purpose.
<br />

<div> 
 <img src="index-2.png" style="width:40%" />
</div>

<br />

- Allow researchers and data scientists to **look for and access** previously collected data sets to answer specific questions

 <br />
 
<div> 
 <img src="index-3.png" style="width:40%" />
</div>

### Audience

The audience for this Implementation Guide includes:

 - **Researchers** : People who generate, process or use research health data
 - **Health Data Providers** : Healthcare providers that populate clinical data warehouses; Clinical study groups, operators of registries or epidemiological cohorts, surveillance or Public Health
 - **Technical Implementers** : Vendors of EHR systems, data repositories or EDC systems
 - **Government agencies** : Funding institutions that want to ensure the sustainable usability of their projects; Legislators issuing guidelines for the use of personal data (GDPR,Data Governance Act); Regulatory bodies providing best practice guidelines.
 - **Public** : Citizens who want to use their data for their own purposes or donate  data for research purposes


### Structure of this guide

This guide has been structured in the following  parts:

1. A _Backgroud_ section describing the contenxt of this work , including the [**methodology**](methodology.html) followed. This section summarizes also the [ FAIR data principles](FAIR.html), the [RDA indicators for assessment of FAIRness](RDAMetrics.html); and some general considerations about data and metadata, and Globally Unique, Persistent and Resolvable Identifiers.
1. A _Real World Cases_ section describing a set of real world cases used as case study for this guide.
1. A _Recommendations_ section, the core part of this guide, including:
	1.  [General recommendations](recommendations.html)
	2.	Best practices for native HL7 FHIR architectures aiming at being FAIR [](FHIRandFAIR.html)
	3.	An overview of the relationship between the FAIR Data Maturity Model described in the RDA Indicators and HL7 FHIR. [](FHIRandRDAMetrics.html)
1. A set of [HL7 FHIR conformance resources and examples](artifacts.html).



### Ballot Status

This Implementation Guide will be balloted as STU with the intention to go normative in subsequent ballot cycles.


### Authors and Contributors

| Role  | Name | Organization |
| --- | --- | --- | --- |
| **Primary Editor** | Giorgio Cangioli | HL7 Europe | 
| **Author** | Alicia Martinez-Garcia | Andalusian Health Service |
| **Author** | Kees van Bochove | The Hyve | 
| **Author** | Ian Harrow | Pistoia Alliance | 
| **Author** | Philip van Damme  |  |
| **Author** | Matthias Löb | IMISE University of Leipzig |
| **Contributor** | Catherine Chronaki | HL7 Europe |
| **Contributor** | Anupama Gururaj | NIH/NIAID |
| **Contributor** | Olga Vovk | Samvit Solutions |
| **Contributor** | Steve Tsang | NIH/NIAID |
| **Contributor** | Edward Eikman|  |
| **Contributor** | Belinda Seto| NIH |

