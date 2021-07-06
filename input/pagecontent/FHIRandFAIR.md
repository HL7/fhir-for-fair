HL7 FHIR provides a rich set of realization options for complex medical
data models but does not mandate a unique realization in every case. The
FAIR principles are also vague on many points to ensure broad validity.

The goal of this Implementation Guide is to develop best practices for
implementing the FAIR principles when HL7 FHIR is used. In doing this,
two main implementation cases should be considered:

1.  **Native HL7 FHIR architectures aiming at being FAIR**.

2.  **Non-native HL7 FHIR architectures supposed to be FAIRified by
    using HL7 FHIR.** This may be further classified considering (a)
    pure HL7 FHIR based solution or (b) hybrid solution (i.e., FHIR and
    non-FHIR)

In the first case, i.e., a native FHIR solution, it is reasonable to
assume that <span class="underline">by design</span>:

1.  A FAIR data object is a FHIR resource.

2.  There are no expectations on data and metadata separation, or on
    data object representing collection of data, that go beyond what the
    current FHIR resources provides. In fact, there are FHIR resources
    as Citation, Library, Provenance, or others that may play the role
    of metadata data object; but in general, a FHIR resource includes
    and refers data and metadata elements.

Design assumptions that are not guaranteed for the second case.

This page summarizes some best practices for implementing the FAIR
principles for the case of Native HL7 FHIR solutions.

A simple example would be FAIR's requirement for a unique, universally
valid and stable identifier for each FAIR data object, in this case each
individual FHIR resource instance, such as a single patient resource.
The HL7 FHIR standard provides for various identifier references, some
of which are technical and some of which are business identifiers. For
business identifiers local (e.g. a patient number assigned by an
hospital) or global identifiers (e.g. DOI) can be used; and different
technologies can be adopted (e.g. OID, URI, UUID). This guide will
describe what is the most appropriate identification approach to be
adopted to fulfill this identification requirement.

### Findability

#### F1: (Meta) data are assigned globally unique and persistent identifiers.

The first and arguably most important FAIR principles is
that [F1](https://www.go-fair.org/fair-principles/f1-meta-data-assigned-globally-unique-persistent-identifiers/):
"(Meta) data are assigned globally unique and persistent identifiers".
In practice, often another property of identifiers is added, namely
resolvability, meaning that the identifier doubles as a link to a
location which can be used to retrieve the (meta)data. 

When medical data is exposed as HL7 FHIR Resources, then automatically,
per the base [Resource](https://www.hl7.org/fhir/resource.html) type,
the resource will have a
'logical' [id](https://www.hl7.org/fhir/resource-definitions.html#Resource.id) which
serves – in a RESTful architecture - as a URL for the resource. The
description also states that "Once assigned, this value never changes",
so we can consider this identifier to be persistent per its
specification. When combined with the URL prefix for the HL7 FHIR
server, a globally unique and also resolvable identifier can be
constructed, e.g. here are two GUPRIs (globally unique and persistent
identifiers) for example Patient records from FHIR test
servers: <http://test.fhir.org/r4/Patient/10> and <https://server.fire.ly/Patient/3591a18b-3eeb-4551-9688-22794aaf9911> (see <https://server.fire.ly/Patient> for
context). Both resolve to a description of the resource, the first to a
web page describing the resource, the second leads to a direct download
of an XML document which describes this resource. However, if the URL at
which the FHIR resource server is hosted changes, or if resources are
copied to a different server, all the identifiers thus constructed would
change as well. It is therefore advisable to designate a permanent
namespace for prefixing the resources and assigning a
persistent ['business'
identifier](https://www.hl7.org/fhir/resource.html#identifiers) within
that namespace. This identifier can be saved in the resource record
using
the [Identifier](https://www.hl7.org/fhir/datatypes.html#Identifier) type,
which can hold both the namespace (using
[Identifier.system](https://www.hl7.org/fhir/datatypes-definitions.html#Identifier.system))
and the identifier itself (using
[Identifier.value](https://www.hl7.org/fhir/datatypes-definitions.html#Identifier.value)).

The URI that can be constructed using a concatenation of the system and
value fields of the identifier is the actual URI that should be used as
GUPRI for the resource, also referred to as the '[canonical
URL](https://www.hl7.org/fhir/resource.html#canonical)'.

**Summary recommendation**: use the identifier field (present in most
key resources and of
type [Identifier](https://build.fhir.org/datatypes.html#Identifier)) to
assign GUPRIs (globally unique and persistent identifiers) to any FHIR
resources to adhere to FAIR principle F1. The identifier namespace
(e.g. https://doi.org) goes into
the [Identifier.system](https://www.hl7.org/fhir/datatypes-definitions.html#Identifier.system) field,
and the actual concept identifier (e.g. 10.5281/zenodo.4474373)
into [Identifier.value](https://www.hl7.org/fhir/datatypes-definitions.html#Identifier.value).

#### F2: Data are described with rich metadata (defined by R1)

All HL7 FHIR Resources derive from the base Resource type, and therefore
have by default a set of standard metadata fields. Specifically, there
is
the [Meta](https://www.hl7.org/fhir/resource-definitions.html#Resource.meta) field
which has the versionId, lastUpdated, source and profile, security and
tags fields. So this provides a good starting point, but most of these
fields are technical in nature
(['intrinsic'](https://www.go-fair.org/fair-principles/f2-data-described-rich-metadata/) metadata)
and apart from profile do not really address the context of the data
provided in the resource. The Meta field is not mandatory, but it is
advised to at least populate the versionId and lastUpdated fields.

Moreover, each resource is a collection of elements describing the data
and the context in which this data has been generated and exists
(metadata) and that can be used for searches.

The adoption of FHIR can therefore enable the documentation of metadata
but claiming the conformance with FHIR is not a sufficient condition for
fulfilling this requirement. Whether metadata is 'rich' enough would
really depend on what users would need to search on in terms of metadata
fields to find the resources.

Therefore, it would make sense to look for specific Implementation
Guides that cover the Resource type and use case in question, and check
whether the resource indeed has the (meta)data fields needed to satisfy
this findability principle in that use case.

**Summary recommendation**: Communities should define however what is
meant with "rich" metadata, formalizing them with FHIR conformance
resources and implementation guides.

#### F3: Metadata clearly and explicitly include the identifier of the data it describes.

*\< to be revised\>*

If the recommendation under F1 is followed, the resulting identifier
should always be included in any resource record that holds data for the
resource in question. For instance, if a medication order is represented
using
a [MedicationRequest](https://www.hl7.org/fhir/medicationrequest.html) as
well as
a [MedicationStatement](https://www.hl7.org/fhir/medicationstatement.html),
both should include the same identifier (see also [resource
consistency](https://www.hl7.org/fhir/resource.html#consistency)).

**Summary recommendation**:

#### F4: Metadata and data are registered or indexed in a searchable resource

In order to adhere to this principle, the FHIR [search
framework](https://www.hl7.org/fhir/search.html)  can be used.

The extent of data and metadata that have to be registered or indexed
would however depend on what users would need to search on to find the
resources.

Most FHIR servers implement one or more search parameters, so by
publishing resources into such a FHIR server may be sufficient to
fulfill the FAIR principle F4 but this might not be enough.

Therefore, it would make sense to look for specific FHIR Conformance
resources and/or Implementation Guides that describe the metadata and
data elements that shall or should be provided to a FHIR server for the
use case in question and registered or indexed by that server.

HL7 FHIR CapabilityStatement, SearchParameter, StructureDefiniton ,
possibly documented within a Implementation Guide should be used to
document this. 

**Summary recommendation:** Communities should define what are the
metadata and data that have to be registered or indexed by a FHIR server
for each supported resource to fulfil this principle; formalizing them
with FHIR conformance resources and implementation guides.

### Accessibility

A1: Metadata and data are retrievable by each of their identifiers using
a standardised communication protocol

A1.1: The protocol is open, free and universally implementable

A1.2: The protocol allows for an authentication and authorisation, where
necessary

A2: Metadata should be accessible even when the data is no longer
available

### Interoperability

I1: Metadata and data use a formal, accessible, shared, and broadly
applicable language for knowledge representation

I2: Metadata and data use vocabularies that follow the FAIR principles

I3: Metadata and data include qualified references to other metadata and
data

### Reusability

R1: Metadata and data are richly described with a plurality of accurate
and relevant attributes

R1.1: Metadata and data are released with a clear and accessible data
usage license

R1.2: Metadata and data are associated with detailed provenance

R1.3: Metadata and data meet domain-relevant community standards
