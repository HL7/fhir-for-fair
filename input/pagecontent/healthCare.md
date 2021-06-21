### Overview

*Short introduction describing what we are talking about including also
references to the current resources*

This IG aims to provide guidance on how HL7 FHIR can be used for
supporting FAIR implementation and assessment in the case of different
kind of health data. One of these kind of health data, could be the
healthcare data, i.e., data used to deliver patients' healthcare. For
instance, real data from Electronic Health Records. 

### Objectives

This real word scenario aims to describe how HL7 FHIR can be used to
support the FAIR principles in the case of healthcare data, including
data from: patients, encounters, conditions, drugs, laboratory tests,
etc.

### Using HL7 FHIR

*Description of how  FHIR can be used to better support FAIR principles
/ How can include our recommendations on where and when to use FHIR
standards for FAIR Implementation*

This subsection covers how use HL7 FHIR to better support the FAIR
principles in the case of healthcare data. In a healthcare scenario,
several concepts could be identified; so, to limit the scope, the
following set of concepts is going to be included in this first version
of the IG:

  - Data related to patients: pseudoanonimized identifier, gender, age,
    information from address (country, etc.).

  - Information from encounters of these patients: identifier, start and
    end date, type of encounter (planned vs unplanned), ICD
    codifications (identifier, position, code), drugs prescription at
    discharge (identifier, code).

  - Specific observations, like as: smoking status, institutionalized
    status, mortality status, domiciliary oxygen prescribed, result of
    the modified Medical Research Council (mMRC) Dyspnea Scale.

  - Results of laboratory tests: identifier, code, quantity, unit, date.

To cover these previous concepts could be identified in the healthcare
data, the following set of HL7 FHIR Resources (and specific fields from
these Resources) are proposed:

  - [Patient](https://www.hl7.org/fhir/patient.html): identifier.value,
    gender, address, birthDate.

  - [Encounter](https://www.hl7.org/fhir/encounter.html):
    identifier.value, subject, period.start, period.end, type.

  - [Condition](https://www.hl7.org/fhir/condition.html):
    identifier.value, encounter, subject, category, onset.dateTime,
    code.

  - [MedicationStatement](https://www.hl7.org/fhir/medicationstatement.html):
    identifier.value, context, subject, medication.CodeableConcept,
    effective.dateTime.

  - [Observation](https://www.hl7.org/fhir/observation.html):
    identifier.value, encounter, subject, code, value.CodeableConcept,
    value.Quantity.value, value.Quantity.unit, value.Quantity.code,
    method, effective.dateTime.

And, to fulfill all FAIR principles requirements, and the mandatory
fields in HL7 FHIR, the following additional fields from these 5
Resources are proposed to be used:

  - Patient: id, identifier.system.

  - Encounter: id, identifier.system, status, class.

  - Condition: id, identifier.system.

  - MedicationStatement: id, identifier.system, status.

  - Observation: id, identifier.system, status, value.Quantity.system.

In addition, some HL7 FHIR Resources (and specific fields from these
Resources) are proposed to use to cover metadata information:

  - [Bundle](https://www.hl7.org/fhir/bundle.html) (to model all kind of
    Resources): type, total, link.relation, link,url, entry.resource.

  - [Provenance](https://www.hl7.org/fhir/provenance.html): target.reference, recorded, agent.who.display, signature.type.system,  signature.type.code,  signature.type.display, signature.when, signature.who.reference,
    extension.url, extension.valueInteger.

  - [DocumentManifest](https://www.hl7.org/fhir/documentmanifest.html): status, created, author.reference, content.reference, related.identifier.value, related.ref.display, related.ref.type.

  - [CapabilityStatement](https://www.hl7.org/fhir/capabilitystatement.html): url, version, name, status, experimental, date, publisher, contact.telecom, description, kind, software.name, fhirVersion,
    format, rest

### Practical Uses

In the 'Healthcare datasets' subpages, you could find the following
practical uses of the real word scenario regarding Healthcare:

1.  FAIR4Health project

2.  [FHIR based integrated data
    center](https://confluence.hl7.org/display/SOA/FHIR+based+integrated+data+center+Germany?src=contextnavpagetreemode)

3.  [Personal Genetic
    Locker](https://confluence.hl7.org/display/SOA/Personal+Genetic+Locker)
