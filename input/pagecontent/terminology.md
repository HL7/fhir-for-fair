### Making Terminologies FAIR

The FAIR principles have recently been implemented as “Ten simple rules
for making a vocabulary FAIR” by Cox et al., 2021
(<https://doi.org/10.1371/journal.pcbi.1009041>) to transform a legacy
vocabulary into a FAIR vocabulary. This can be used to provide
unambiguous annotation of data which increases interoperability and
enables data integration. The ten simple rules are applied to Simple
Knowledge Organisation System (SKOS) and Web Ontology Language (OWL)
with examples. This open source (CC BY 4.0) publication is summarized as
follows (adapted from Table 1):

Findability

  - Each vocabulary is denoted by a global, unique, persistent and
    machine resolvable identifier (GUPRI).

  - Each term is denoted by a GUPRI.

  - It is possible to search for a term or vocabulary and get a GUPRI
    for it.

  - The vocabulary is available from at least one repository recognised
    by the community.

Accessibility

  - When the term identifier is requested, a machine-readable
    representation of the term is returned using semantic web standards
    (<https://www.w3.org/standards/semanticweb/data>).

Interoperability

  - At least one representation conforms to a community standard for
    vocabularies. The vocabulary includes mapping relations to other
    vocabularies.

Reusability

  - The license for use of the vocabulary is clear, accessible, and
    denoted by a GUPRI.

  - Enough metadata at vocabulary and term levels is provided to include
    provenance and maintenance information.

  - The definitions are sufficient for a user to understand what each
    term means.

### Selection of Terminologies

There are many terminologies and ontologies available via public
repositories such as the BioPortal
([https://bioportal.bioontology.org](https://bioportal.bioontology.org/))
hosted by NBCO and Ontology Lookup Service, OLS
(<https://www.ebi.ac.uk/ols/index>) hosted by EMBL-EBI. In addition,
they are also available directly from the terminology or ontology
providers e.g. SNOMED CT, MeDRA amd LOINC. The selection of
terminologies and ontologies for a particular application can be
difficult, although this can be informed by further set of simple rules
such as Malone et al 2016
(<https://doi.org/10.1371/journal.pcbi.1004743>).

### Using Terminologies in HL7 FHIR

Many elements in HL7 FHIR have a coded value, such as "gender" in the
Patient resource or "bodySite" in the Observation resource. These codes
are part of a code system that can be defined at different places (see
the [HL7 FHIR
Terminology](https://www.hl7.org/fhir/terminologies.html)):

  - A set of fixed values from the HL7 FHIR specification (e.g. in the
    case of administrative gender this can be one out of
    four [values](https://www.hl7.org/fhir/codesystem-administrative-gender.html),
    namely "male", "female", "other", or "unknown")

  - A code included in a Request for Comments (RFC) from the Internet
    Engineering Task Force (e.g. MIME types) or HL7 specifications (e.g.
    HL7 v2)

  - A dictionary, look up table, or enumeration that is locally
    maintained and defined by an application

  - An external terminology or ontology (e.g. SNOMED CT or LOINC)

In the context of this IG, we focus mainly on external terminologies or
ontologies.

The HL7 FHIR specification describes how to select code systems in
section 4.1.2 of the Terminology page ([https://www.hl7.org/HL7
FHIR/terminologies.html\#system](https://www.hl7.org/fhir/terminologies.html#system))
and the recommendations given here are an addition to what is mentioned
on that page.

Implementing FAIR requires the use of terminologies that are themselves
FAIR-compliant. To reach an acceptable level of FAIRness, the
terminology should follow the ten simple rules for making a vocabulary
FAIR, as described by Cox et al.

A vocabulary offered through a HL7 FHIR terminology service, makes it
substantially FAIR.

First of all, a HL7 FHIR terminology service ensures that every code
system, code, value set, and concept map has an unique identifier.

Enable the provision of rich metadata.

HL7 FHIR has a representation as Turtle RDF that offers a bridge to
Semantic Web. In any case, a HL7 FHIR terminology service uses the
standard HL7 FHIR operations and data formats, making it interoperable
with other HL7 FHIR servers and clients. Finally, the terminology
service Capability Statement provides a machine-readable representation
of the functionality supported by a terminology server, helping
reusability.
