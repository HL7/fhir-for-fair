### Introduction

The goal of this Implementation Guide is to develop best practices for
implementing the [FAIR
principles](https://doi.org/10.1038/sdata.2016.18) when HL7 FHIR
resources are used to represent the data. In doing this, two main
situations should be considered:

1.  **Native HL7 FHIR solution aiming at being FAIR.**

2.  **Non-native HL7 FHIR solution where health data is FAIRified by
    using HL7 FHIR. **This may be further classified considering (a)
    pure HL7 FHIR based solutions or (b) hybrid solutions (i.e., a
    combination of HL7 FHIR and non-FHIR solutions)

In the first case, i.e., a native HL7 FHIR solution, it is reasonable to
assume by design that the HL7 FHIR <span class="underline">resources are
"the" FAIR data objects</span>, (for a definition of a FAIR data
object see section 4.1 of the EC publication [Turning FAIR into
reality](https://ec.europa.eu/info/publications/turning-fair-reality_en) ) with
all the consequences that this assumption implies in term of data and
metadata representation.

This page summarizes some best practices for implementing the FAIR
principles for the cases where this assumption can be considered true. 

Throughout the FAIR principles referred to in this guide, the phrase
‘(meta)data’ means that the principle should be applied to both
metadata and data.

### Native HL7 FHIR solution

#### Findability

##### F1: (Meta)data are assigned a globally unique and persistent identifier

The first and arguably most important FAIR principle
is [F1](https://www.go-fair.org/fair-principles/f1-meta-data-assigned-globally-unique-persistent-identifiers/):
"(Meta)data are assigned a globally unique and persistent identifier"
(adapted from [GO-FAIR F1
principle](https://www.go-fair.org/fair-principles/f1-meta-data-assigned-globally-unique-persistent-identifiers/)).
In practice, often another property of such identifiers is added, namely
machine resolvability, to enable retrieval of metadata and data by
machines.

When medical data is exposed as HL7 FHIR Resources, then automatically,
per the base [Resource](https://www.hl7.org/fhir/resource.html) type,
the resource will have a
resource [<span class="underline">id</span>](https://www.hl7.org/fhir/resource-definitions.html#Resource.id) (named
in HL7 FHIR as the "logical" id in opposition to the business
identifiers), that "Once assigned, this value never changes": this
identifier is persistent per its specification. When combined with the
URL prefix of the HL7 FHIR server, a globally unique and also machine
resolvable identifier can be constructed (this is the so called
'location URL').

Example: are two GUPRIs (*Globally Unique, Persistent and Resolvable
Identifiers*) for synthetic Patient records from public HL7 FHIR test
servers: [<span class="underline">http://test.fhir.org/r4/Patient/10</span>](http://test.fhir.org/r4/Patient/10) and [<span class="underline">https://server.fire.ly/Patient/3591a18b-3eeb-4551-9688-22794aaf9911</span>](https://server.fire.ly/Patient/3591a18b-3eeb-4551-9688-22794aaf9911).
Both identifiers resolve to a description of the resource or the
resource itself. **However**, if the URL at which the HL7 FHIR resource
server is hosted changes, or if resources are copied to a different
server, all the identifiers thus constructed would change as well.

The page [FHIR identifiers and FAIR principles on
IDs](https://confluence.hl7.org/display/SOA/FHIR+identifiers+and+FAIR+principles+on+IDs) provides
an overview on how HL7 FHIR resources can be identified and under which
conditions these identifiers fulfill the FAIR principles on IDs: 

Since these identifiers are not mutually exclusive, it is always
desirable that - as appropriate - more identifiers (business
identifiers, canonical url) are used, so that, depending on the context
of use and the kind of resource shared, the most proper identifier is
selected. For example, it might advisable that any resource describing
metadata at the study level would be also identifiable through permanent
identifier as for example DOIs
(example <https://doi.org/10.5281/zenodo.4474373>); this will
consolidate the persistency and facilitate the search and the access of
these objects beyond HL7 FHIR. While the registration of DOIs for any
created and shared HL7 FHIR resource might be too costly. 

**Summary recommendation**: Establish adequate organizational and
technical solutions to assure that the end point where resources are
published is 'always' resolvable. Assign, as appropriate, also other
identifiers (business identifiers, canonical url). Determine based on a
cost/effectiveness evaluation what are the resources for which it is
worth to register identifiers on a public permanent registry
(e.g.  [https://doi.org/](https://doi.org/10.5281/zenodo.4474373)).
Use both reference and identifier elements in the Reference data type.
Promote the specification of HL7 FHIR profiles enforcing these choices.

##### F2: Data are described with rich metadata (a plurality of accurate and relevant attributes, defined by R1)

The rationale behind this principle is that someone should be able to
find data based on the information provided by their metadata, even
without the data’s identifier (adapted from [GO-FAIR F2
principle](https://www.go-fair.org/fair-principles/f2-data-described-rich-metadata/)).
HL7 FHIR provides different means to fulfill this scope either
considering ['intrinsic'](https://www.go-fair.org/fair-principles/f2-data-described-rich-metadata/) , as
well as
‘[contextual](https://www.go-fair.org/fair-principles/f2-data-described-rich-metadata/)’
metadata.

All HL7 FHIR Resources have
a [Meta](https://www.hl7.org/fhir/resource-definitions.html#Resource.meta) element
which includes some intrinsic resource metadata as for example
versionId, lastUpdated, source, profile, security labels and tags . They
are technical in nature and apart from profile do not really address the
context of the data provided in the resource. The Meta field is not
mandatory, but it is advised to at least populate the versionId and
lastUpdated fields. Moreover, each resource is a collection of elements
describing the data and the context in which this data has been
generated and exists (metadata) and that can be used for searches. There
are finally particular HL7 FHIR resources, as Citation, Library,
Provenance and others, that can be used to capture specific metadata
information.

The adoption of HL7 FHIR can therefore enable the documentation of
'rich' metadata, but the conformance with HL7 FHIR is not a necessarily
a sufficient condition for fulfilling this requirement.

In fact, in order to satisfy the 'richness' criterium, the use case is
important - because whether metadata is 'rich' enough would really
depend on what users would need to search on in terms of metadata fields
to find the resources.

The capability of the used resources to capture the expected information
is a pre-condition for enabling the data search via HL7 FHIR APIs, that
needs to be supported by the HL7 FHIR server used. In fact not all the
HL7 FHIR resource elements are by default searchable and  it is not
required that a HL7 FHIR server support all the 'standard' search
parameters.

Therefore, depending on the use case, implementers should identify what
are the minimal, recommended and suggested intrinsic and contextual
metadata that should be returned to describe the data and what is the
subset of these elements for which HL7 FHIR searches should be
performed.

To do that, implementers should look for specific HL7 FHIR
Implementation Guides (IG) that cover the Resource types and the use
case of interest; and/or define HL7 FHIR IGs that apply in their usage
context. These IGs should contain HL7 FHIR profiles for the used
resources and capability statements describing what a HL7 FHIR server
should offer to satisfy this findability principle in that use case.

**Summary recommendation**: Communities should define what rich metadata
are sufficient to describe the data and which should be used for HL7
FHIR searches. This should be formalized with appropriate HL7 FHIR
conformance resources in HL7 FHIR implementation guides. 

##### F3: Metadata clearly and explicitly include the identifier of the data they describe

This simple and obvious principle is of critical importance to FAIR. The
metadata and the dataset they describe are usually separate resources
(adapted from [GO-FAIR F3
principle](https://www.go-fair.org/fair-principles/f3-metadata-clearly-explicitly-include-identifier-data-describe/)).
The association between a metadata resource description and the dataset
should be made explicit by mentioning a dataset’s globally unique and
persistent identifier in the metadata.

The F3 principle can be interpreted differently depending on how
metadata information are implemented in HL7 FHIR, but it is in general
possible to satisfy this requirement. When metadata is represented by a
HL7 FHIR resource distinct from those recording data (e.g. a Citation
resource pointing to the used data) the mechanism typically used by HL7
FHIR to assure this link is through either the Reference datatype or
canonical urls. The Reference data type supports either (a) the direct
reference to the HL7 FHIR resource with absolute or relative url based
on the resource logical ID; and (b) the reference to its business
identifier. 

In the cases when metadata information are recorded in the same HL7 FHIR
resource of the data they describe, data are uniquely identified within
the resource either by their path ( e.g.
Evidence.statistic.modelCharacteristic.value) or by their identifiers
(e.g. Questionnaire.item.linkId).

All the adopted identifiers (see F1 recommendations) should always be
included in any resource record that holds data for the resource in
question. Since this is usually done in HL7 FHIR by referring other HL7
FHIR resources, both references (reference and identifier) should be
provided.

**Summary recommendation**: When applicable include in the references
both the resource and the business identifier. The metadata description
should always be semantically coherent and machine resolvable even when
the the resource data itself is no longer available, for a variety of
potential reasons.

##### F4: (Meta)data are registered or indexed in a searchable resource

Identifiers and rich metadata descriptions alone will not ensure
‘findability’ on the internet. Perfectly good data resources may go
unused simply because no one knows they exist. If the availability of a
digital resource such as a dataset, service or repository is not known,
then nobody (and no machine) can discover it (adapted from [GO-FAIR F4
principle](https://www.go-fair.org/fair-principles/f4-metadata-registered-indexed-searchable-resource/)).

In order to adhere to this F4 principle, the HL7 FHIR [search
framework](https://www.hl7.org/fhir/search.html) can be used. The extent
of data and metadata that have to be registered or indexed would however
depend on what users would need to search to find the resources.

Most HL7 FHIR servers implement one or more search parameters, so by
publishing resources into such a HL7 FHIR server may be sufficient to
fulfill the FAIR principle F4 but this might not be enough.

Therefore, it would make sense to look for specific HL7 FHIR Conformance
resources and/or Implementation Guides that describe the metadata and
data elements that shall or should be provided to a HL7 FHIR server for
the use case in question and registered or indexed by that server.

HL7 FHIR CapabilityStatement, SearchParameter, StructureDefiniton ,
possibly documented within a Implementation Guide should be used to
document this. 

**Summary recommendation**: Each community should define what are the
relevant metadata and data that have to be registered or indexed by a
HL7 FHIR server for each supported resource to fulfil this principle;
formalizing them with HL7 FHIR conformance resources and implementation
guides.

#### Accessibility

##### A1: Metadata and data are retrievable by each of their identifiers using a standardised communication protocol

FHIR is described as a 'RESTful' specification based on common industry
level use of the term REST, in this RESTful framework, transactions are
performed directly on the server resource using an HTTP
request/response.

**Summary recommendation**: This principle is covered by virtue of using
HL7 FHIR RESTful API

##### A1.1: The protocol is open, free and universally implementable

Both HL7 FHIR RESTful API and the http protocols  are open, free
and universally implementable.

There are different definitions of what an 'open standard' is, but also
considering openness of access; of the process and of the rights of
use, HL7 FHIR fulfills all of them. It is released under Creative
Commons "No Rights Reserved"
([CC0](http://creativecommons.org/publicdomain/zero/1.0/)) licence and
it is globally implemented. 

**Summary recommendation**: This principle is covered by virtue of using
HL7 FHIR RESTful API

##### A1.2: The protocol allows for an authentication and authorisation, where necessary

It often makes sense to request users to create a user account for a
repository. This allows authentication of the owner (or contributor) of
each dataset, and to potentially set user-specific rights. This can also
affect the choice of the repository that is suitable to share data and
associate metadata.

HL7 FHIR is not 'per se' a security protocol, nor does it define any
security related functionality; however it defines exchange protocols
and content models (<https://www.hl7.org/fhir/exchange-module.html>)
that can be used with various open security protocols such as** **HMAC
authentication (<https://en.wikipedia.org/wiki/HMAC>), HTTPS
(<https://en.wikipedia.org/wiki/HTTPS>) (see
e.g. <https://hl7.org/fhir/security.html#http> for Communications
Security in HL7 FHIR)

**Summary recommendation**:  Each community should declare what are the
security standards there are adopted in their context.

##### A2: Metadata should be accessible even when the data is no longer available

This principle is important because there can be many reasons why data
are no longer available whereas the associated metadata should be a
permanent record to describe the data. Future reuse of available data
requires separately identified metadata and it also crucial to enable
future reproducibility of new data for more science.

The practical application of this A2 FAIR principle to data and metadata
from the clinical sciences and specifically should consider the
following aspects.

  - Some clinical data elements may serve as metadata for other data
    elements. If all data elements have identifiers compliant with FAIR
    principle, A1 being global, unique, persistent and resolvable by
    machine (GUPRI) it should be possible to comply with this FAIR
    principle, A2.

  - Clinical data and associated metadata can be stored on multiple HL7
    FHIR servers.

  - To maintain FAIR compliance, it is critical to manage and maintain
    the persistency aspect of GUPRIs (independently on HL7 FHIR) for all
    data and metadata elements.

In the HL7 FHIR space this requirement is fulfilled as far as metadata
and data can be represented with distinct resources (see also [Metadata
and data page](metadata.html)) and the used identifiers comply with FAIR
principle, F1.

**Summary recommendations:** follow F1 recommendations.

#### Interoperability

##### I1: Metadata and data use a formal, accessible, shared, and broadly applicable language for knowledge representation

There are different ways to interpret 'language knowledge
representation', for example the capability to:

  - have a machine readable physical representation, e.g. JSON

  - represent and formalize healthcare models and data;

  - share clinical knowledge artifacts;

  - provide an expression logic

  - strive for semantic computable interoperability (i.e. semantic
    interoperability between machines)

HL7 FHIR supports XML, JSON and RDF machine readable physical
representations. It provides in general a formal (FHIR Infrastructure,
the core framework on which HL7 FHIR depend, is a Normative part of HL7
FHIR); accessible and shared (the HL7 FHIR standard is public,
accessible and usable by everyone) and broadly applicable language: HL7
FHIR is widely used in the Healthcare for covering a wide range of
domains and use cases (from genetic to administrative data for
representing healthcare related models and data). The HL7 FHIR Clinical
Reasoning module provides "resources and operations to enable the
representation, distribution, and evaluation of clinical knowledge
artifacts such as clinical decision support rules, quality measures,
public health indicators, order sets, clinical protocols, and evidence
summaries.". It enables finally the representation of logic using
languages such as HL7 FHIRPath and Clinical Quality Language (CQL).

FHIR resources can be used together with other knowledge representation
approaches, including SNOMED CT Compositional Grammar 

Thus, if we are looking to the first four aspects this principle
is covered by virtue of using HL7 FHIR resources to represent metadata
and data.

Concerning instead the last point, the compliance with HL7 FHIR, even if
it is a strong enabler, may not be sufficient for the semantic
computable interoperability. For example a vocabulary used by the sender
or an extension defined in a specific context might not be understood by
the receiver. To strive for semantic computable interoperability
communities are invited to agree on context specific HL7 FHIR
Implementation Guides, relying as possible on existing ones. 

**Summary recommendation**: Even though in general this
principle is covered by virtue of using HL7 FHIR, to strive
to semantic computable interoperability communities should agreed on
common vocabularies, profiles and other conformance resources that
applies for their context of use. 

##### I2: Metadata and data use vocabularies that follow the FAIR principles

HL7 FHIR provides a formal way to bind codeable elements with
vocabularies (intended as terminologies), but with very few exceptions,
it doesn't impose the usage of any of them.

HL7 FHIR includes terminology resources and API that may facilitate the
fulfillment of some 'technical' FAIR principles as the unique, global
persistent identification of vocabulary metadata and data (e.g. by using
the canonical URL).

To satisfy this principle HL7 FHIR implementers should make an
assessment of the FAIRness of the terminologies to be used and  enforce
the adoption of the FAIR-compliant vocabularies.

**Summary recommendation**:  HL7 FHIR implementers should select
FAIR-compliant vocabularies, preferably managed through HL7 FHIR 
terminology services.

This choice should be formalized through  community specified HL7 FHIR
Implementation Guide, including appropriate conformance and terminology
resources.

**For future consideration:** realize a catalog of FAIR-compliant
vocabularies.

##### I3: Metadata and data include qualified references to other metadata and data

A qualified reference is intended as a cross-reference that explains its
intent. 

HL7 FHIR technically supports different kinds of references among HL7
FHIR resources and also to non-FHIR objects.

This capability of HL7 FHIR doesn't guarantee however "per se" that as
many meaningful links between metadata and data resources are used to
enrich the contextual knowledge about the data (that is the goal).

Thus, if on one hand this principle is technically satisfied by HL7
FHIR, HL7 FHIR implementers should determine what are the links among
resources that are needed to provide a sufficient contextual knowledge
for the scope of their community.

**Summary recommendation**:  HL7 FHIR implementers should determine what
are the qualified references to other resources that are needed to
provide a sufficient contextual knowledge for the scope of their
community. This should be formalized through a community HL7 FHIR
Implementation Guide.

#### Reusability

##### R1: Metadata and data are richly described with a plurality of accurate and relevant attributes

This principle is related the F2, but while F2 focuses on metadata that
allows its discovery, R1 focuses on the context under which the data
were generated as well as they should been used.

General considerations made for F2 about HL7 FHIR apply also for R1, HL7
FHIR is therefore an enabling factor, but the conformance with HL7 FHIR
is not necessarily a sufficient condition for fulfilling this
requirement.

The fact data and metadata are 'richly described' depends on the context
of use; therefore, depending on the use case, implementers should
identify what are the minimal, recommended and suggested intrinsic and
contextual information that should be returned to describe the data and
make them actually USEFUL in a particular context.

To do that implementers should look for specific HL7 FHIR Implementation
Guides (IG) that cover the Resource types and the use case of interest;
and/or define HL7 FHIR IGs that apply in their usage context.

**Summary recommendation:** Communities should define which rich
metadata are sufficient to describe data to make them useful in their
context. This should be formalized with appropriate HL7 FHIR conformance
resources in HL7 FHIR implementation guides.

##### R1.1: Metadata and data are released with a clear and accessible data usage license

HL7 FHIR provides different means to specify the license and the
conditions under which data can be used. For example, a resource may
convey specific security metadata by using the security labels, enabling
policy fragments to accompany the resource data; the Citation resource
offers a copyright element to covey human readable copyright information
at different level of granularity (Citation , abstract, cited
artefacts); the Consent resource can be used to record choices which
permits or denies identified recipient(s) or recipient role(s) to
perform one or more actions within a given policy context, for specific
purposes and periods of time.

The solution to be adopted may change depending on the type of data and
the context of use.

The adoption of HL7 FHIR is not however a sufficient condition for
fulfilling this requirement, implementers should therefore define how
this requirement is supposed to be met.

**Summary recommendation:** Published HL7 FHIR resources have to include
clear references to the usage license. Communities should specify in
community HL7 FHIR implementation guide how - for each kind of data -
this is realized in their context.

##### R1.2: Metadata and data are associated with detailed provenance

This principle focuses on specific type of contextual data as where the
data came from, how they have been processed; if it has been published
before; who need to be cited and/or acknowledged....

Most of this information may be captured in HL7 FHIR by using the
Provence resource enabling the recording of data sources and of the
actions applied on them at different level of granularity.

Other kinds of resources, e.g. the Citation, could be used for capturing
instead publication related infos.

As for some other principles, HL7 FHIR can technically support the data
FAIRness, but it is not a sufficient condition for fulfilling this
requirement; that depends also on the capability of the organization to
capture and record this information.

**Summary recommendation:** Implementers are encouraged to use the
Provenance resource to improve description the data context. Communities
should specify in community HL7 FHIR implementation guide how this
requirement is realized in their context.

##### R1.3: Metadata and data meet domain-relevant community standards

HL7 FHIR is a globally recognized standard in the health domain, that
can be used to represent human and machine-readable metadata and data
information.  
It defines also formal profiling mechanisms to specify community agreed
rules.

There are several published HL7 FHIR Implementation Guides describing
how HL7 FHIR should be used for specific scopes.

Beyond this, there might be implementation independent standards (e.g.
clinical guidelines) a community wish to refer to.

Implementers are therefore suggested to look for existing HL7 FHIR
implementation guides or define new ones to cover appropriately the
community expectations.

**Summary recommendation:** Even though HL7 FHIR can be considered it
self a 'domain-relevant community standard' , implementers are strongly
suggested to identify and if needed specify appropriate  HL7 FHIR
Implementation Guides covering the community expectations in terms of
models, vocabularies and so on for their context of use.
