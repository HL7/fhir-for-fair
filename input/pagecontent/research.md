### Rationale

The purpose of this page is to present an application scenario
illustrating the need for FAIR FHIR resources and demonstrating the
benefits of their existence to the field of medical research studies.

### Background

Clinical and epidemiological research has a wealth of health-related
data from both cohort studies and surveillance programs (healthy
individuals) and clinical trials and registries (patients), which
feature deep phenotyping of study participants using interventional
therapies, medical observations, surveys, or molecular genetic profiles.
These prospective data collections are typically of high quality. Their
analyses lead to the development and validation of therapeutic, as well
as preventive and quality assurance measures for single individuals or
specific populations.

### What is the problem and why does it need to be addressed in HL7 FHIR?

Data from medical research studies continue to be shared on a limited
basis, even though this would have potential benefits for science and
society. Reasons for this include fear of loss of intellectual property
or regulatory concerns, but also technical barriers to research
publication, data collection instruments, and the underlying datasets
themselves. In practice, many of the data are not sufficiently
standardized, which makes both their publication and their
interpretation or reproducibility difficult. A variety of existing
approaches has led to the current lack of a de facto standard.

### What should be achieved?

FHIR provides a sophisticated information model together with a modern
technological framework. Although development is currently ongoing, the
broad applicability and widespread support in the community is evident.
FAIR Data principles aim to make better use of existing digital
assets. Although medical research studies are accompanied by a large
number of regulated documents and data, these are generally neither
findable nor accessible. They rarely follow coordinated interoperable
specifications, which affects reproducibility and reusability.

### What steps are needed to achieve the goals?

#### Support for Findability

  - Interventional clinical trials are often registered in national or
    international registries.
    
      - entries are often not current.
    
      - observational trials and epidemiological studies are rarely
        registered

  - There is a WHO Core Data Set, but it is not really machine-readable.
    
      - lots of text fields
    
      - unclear description what to describe in certain fields

  - Example: \<title\>
    
      - primary title and/or secondary tilte
    
      - short title and/or long title
    
      - scientific title and/or public title
    
      - title in English and/or other languages

  - Goal: Improve findability by mapping existing attributes from WHO
    Core Data Set and other standard bodies to FHIR ResearchStudy and
    other artifacts

#### Support for Accessibility

  - Rather than doing a search by text strings, we should improve
    accessibility with regards to providing some kind of specification
    how registries should "offer" data
    
      - It's intended like FHIR Terminology providing basic operations

#### Support for Interoperability

  - Many of the attributes in FHIR ResearchStudy are not broadly
    supported by use in the community.

  - Generic attributes such as category, type or class can be used in a
    misleading way

#### Support for Reusability
