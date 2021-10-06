### Making Terminologies FAIR

The FAIR principles have recently been applied to a vocabulary by Cox et
al 2021 (<https://doi.org/10.1371/journal.pcbi.1009041>). This is
summaried as follows (adapted from Table 1):

Findability

  - Each vocabulary is denoted by a global, unique, persistent and
    machine resolvable identifier (GUPRI)

  - Each term is denoted by a GUPRI

  - It is possible to search for a term or vocabulary and get a GUPRI
    for it

  - The vocabulary is available from at least one repository recognised
    by the community

Accessibility

  - When the vocabulary or tem identifier is de-referenced, a machine or
    human readable representation is returned as returned, as requested

Interoperability

  - At least one representation conforms to a community standard for
    vocabularies. The vocabulary includes mapping relations to other
    vocabularies.

Reusability

  - The license for use of the vocabulary is clear, accessible and
    denoted by a GUPRI

  - Enough metadata at vocabulary and term levels is provided to include
    provenance and maintenance information

  - The definitions are sufficient for a user to understand what each
    term mean

Based on this summary of criteria for a FAIR vocabulary, Cox et al
propose a set of ten simple rules (or steps of a workflow process) to
transform a legacy vocabulary into a FAIR vocabulary. This can be used
to provide unambiguous annotation of data which increases
interoperability and enables data integration. The ten simple rules are
described by these authors in detail and applied to Simple Knowledge
Organisation System (SKOS) and Web Ontology Language (OWL) with
examples.

### Selection of Terminologies

There are many terminologies and ontologies available via public
repositories such as the NBCO BioPortal
([https://bioportal.bioontology.org](https://bioportal.bioontology.org/))
and Ontology Lookup Service, OLS (<https://www.ebi.ac.uk/ols/index>). In
addition, they are also available directly from the terminology or
ontology providers e.g. SNOMED CT, MeDRA amd LOINC. Selection of
terminologies and ontologies can be difficult which can be informed by
simple rules such as Malone et al 2016
(<https://doi.org/10.1371/journal.pcbi.1004743>).

### Using Terminologies in FHIR

Many elements in FHIR have a coded value, such as "gender" in the
Patient resource or "bodySite" in the Observation resource. These codes
are part of a code system that can be defined at different places
(see [FHIR Terminology](https://www.hl7.org/fhir/terminologies.html)):

  - A set of fixed values from the FHIR specification (e.g. in the case
    of administrative gender this can be one out of
    four [values](https://www.hl7.org/fhir/codesystem-administrative-gender.html),
    namely "male", "female", "other", or "unknown")

  - A code from included in a Request for Comments (RFC) from the
    Internet Engineering Task Force (e.g. MIME types)

  - An HL7 specification (e.g. HL7 v2)

  - A dictionary, look up table, or enumeration that is locally
    maintained and defined by an application

  - An external terminology or ontology (e.g. SNOMED CT or LOINC)

In the context of this IG, we focus on the external terminologies or
ontologies. Implementing FAIR requires the use of terminologies (now
referred to as code systems to follow the FHIR terminology) that are
themselves FAIR-compliant. To assure FAIRness, the code system should,
whenever defining a Code Pair in FHIR, follow the ten rules as described
above. The FHIR specification describes how to select code systems in
section 4.1.2 of the Terminology page
(<https://www.hl7.org/fhir/terminologies.html#system>) and the
recommendations given here are an addition to what is mentioned on that
page.
