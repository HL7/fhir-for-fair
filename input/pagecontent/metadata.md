The concept of FAIR digital object is quite wide and can vary in term of
granularity and type of data that should be represented. (For a
definition of a FAIR data object see section 4.1 of the EC publication
Turning FAIR into reality and Wittenburg, P., Strawn, G., Mons, B. et
al.: Digital objects as drivers towards convergence in data
infrastructures 2019 - Full Text). It may be a single unit such as a
coded diagnosis or a collection of machine actionable data (data set).
It may represent a waveform, an image, a condition, other types of data
or a combination of them.

This implies that their representation with HL7 FHIR resources and
elements may range from a sinlge element to a set of linked resources.
(see Figure 1).

Similar considerations can be done also for the metadata, metadata can
be in fact represented by elements belonging to the same resource
documenting the data and by a set of other linked resources.

<div><img src="metadata-1.png" style="width:55%"/></div>

**Figure** **1 – FAIR Digital Object representation**

<div><img src="metadata-2.png" style="width:55%"/></div>

**Figure** **2 – Mapping FAIR data and metadata**

The critical point is however the **actual logical distinction between
metadata and data** (both are FAIR DO); with metadata playing a key role
for making data findable, accessible, interoperable and reusable.  
Metadata are in fact usually described as the "data about data", but in
practice what is "data" and what is "metadata" is a matter of
perspective: based on the context, the same information can be in fact
considered as part of the data or of the metadata.

This makes even more complex the mapping of the FAIR DO to the FHIR
resources.

<div><img src="metadata-3.png" style="width:55%"/></div>

**Figure** **3 – Mapping FAIR data and metadata**

In consideration of the previous arguments, the realization of the
requirement for a metadata FAIR data object, distinct from the data FAIR
data object, and identified by a persistent and unique ID need to be
pragmatically evaluated, above all for FHIR implementations.

This means that depending on the context of use and on the granularity
of data, distinct and identifiable FHIR resources can be used to record
a selected set of metadata elements; but this might not be true for all
the information that could be considered metadata.

Let's consider for example the following levels:

1.  **Study Level**: specific to a study, publication, or usage context
    (collection of subject level data).

2.  **Subject Level**: specific to a single subject (patient).

<div><img src="metadata-4.png" style="width:55%"/></div>

**Figure** **4 - Example of levels of data objects granularity**

If for the study level we can assume data are represented by the subject
level objects, distinct from the metadata describing the "study" (see
figure below) ; this might be not so true for the subject level.

<div><img src="metadata-5.png" style="width:55%"/></div>

**Figure** **5 – Metadata and data for a data collection.**

HL7 FHIR provides several candidates resources to represent metadata for
collection of data (e.g., Bundle, Lists..) and the choice of the
resource to be used strongly depend on the usage
context. **Library,** **Citation** and **ResearchStudy**, seem to be
the most promising resources to better support the “rich metadata” FAIR
requirement; however not all of them are available in HL7 FHIR R4.
Furthermore, since most of them have a low [FHIR maturity
level](https://www.hl7.org/fhir/versions.html#maturity), they are
subject to possible non-negligible changes, including the way the
linkage between metadata (i.e. the resource itself) and data (i.e. the
referred resources) is realized.

The kinds of data objects that the metadata may refer to can be:

1.  Non-FHIR objects

2.  FHIR and non-FHIR objects

3.  FHIR-only objects

Depending on the “metadata” resource, the FHIR version chosen and the
type of object to point to, different solutions can be adopted. For
example, the current Library resource covers this requirement through
the content element (Attachment datatype), in this case the link to data
is recorded by using an uri (this may or may not be enough for referring
FHIR resources). Citation (looking at the FHIR R5 specs) provides
instead more flexible and comprehensive solutions through the
citedArtifact.relatedTo.target\[x\] element; providing different means
(uri, resource references, business identifiers) to handle these
references.

It’s worth to mention that FHIR specifies a dedicated resources
(Provenance) to record Provenance information typically part of the
“metadata”.

As described above, at the subject level, the boundary between metadata
and data is not always so sharp. In the example below derived from the
[Ninfea](https://confluence.hl7.org/display/SOA/NInFEA) real world case
is shown for example how the gestational week or the mother height and
weight, might be considered metadata for the signals, but also patient
level data.

<div><img src="metadata-6.png" style="width:55%"/></div>

**Figure** **6 – Metadata and data at the subject level.**

This guide will not therefore attempt to **prescribe any tight
separation of metadata/data at the subject level** when FAIR is
implemented by using HL7 FHIR.

There are HL7 FHIR resources (e.g. EvidenceReport, Bundle\[collection\],
Composition, List; DocumentManifest) that can be potentially used to
record some subject level metadata information as a distinct FHIR
resource instance. Nevertheless, typically metadata information is
recorded by a set of linked FHIR resources. For example, a Condition
instance documenting a specific problem (the data), may use
the *subject*, the *encounter* and the *evidence* references to
Patient, Encounter and Observation FHIR instances to document the
patient, encounter and other information used as evidence to describe
the context of this problem (the metadata).

In case of *non-FHIR data objects* or mixed cases (*FHIR and non-FHIR
objects*) implementers should evaluate the feasibility and the
cost/benefit of transforming these objects (completely or partially) in
FHIR instances; and/or creating FHIR resources (e.g., DocumentManifest)
to document some metadata information.
