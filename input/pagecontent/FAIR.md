The FAIR guiding principles for scientific data management and
stewardship are a set of guidelines from the field of research data
management (Wilkinson et al
2016 [doi.org/10.1038/sdata.2016.18](https://doi.org/10.1038/sdata.2016.18)).
They are universal in scope and some of the principles will need to be
refined for a particular community, such as medical informatics. The
FAIR principles are not a standard, which means they have many forms of
implementation. The primary purpose of FAIR principles is to make the
digital assets of data and related metadata more usable and reusable for
humans and machines, at scale. To this end, the fifteen FAIR principles,
listed below, are grouped into the four higher principles of
Findability, Accessibility, Interoperability and Reusability (FAIR)
which apply to data and metadata. Each FAIR principle has a number of
metrics or maturity indicators which are used to assess the FAIRness of
data and metadata to seek improvements, which will be described in a
future section of this implementation guide.

Why is it important to implement best practise in data management
through FAIR? Many research and clinical  healthcare projects collect,
integrate and analyse data with great effort and cost, but such
expensive data are often used for only a few analyses over a short
period, even though they would be useful for a much wider range of
scenarios over a much longer period. If data and relevant metadata are
not managed, only minimal value is realised and furthermore, they can
lose credibility. Since research and clinical healthcare data are often
supported by public funds, society has a right to expect the greatest
and widest possible usage. Likewise, shareholders of private enterprise
expect their investments in science-based research and development to be
exploited and protected fully through best practise in FAIR data
management and data governance.

### Findability

F1: Metadata and data are assigned globally unique, persistent and
machine resolvable identifiers (GUPRI)

F2: Data are described with rich metadata (defined by R1)

F3: Metadata clearly and explicitly include the identifier of the data
it describes

F4: Metadata and data are registered or indexed in a searchable resource

### Accessibility

A1: Metadata and data are retrievable by each of their identifiers using
a standardised communication protocol

> A1.1: The protocol is open, free and universally implementable
> 
> A1.2: The protocol allows for an authentication and authorisation,
> where necessary

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

> R1.1: Metadata and data are released with a clear and accessible data
> usage license
> 
> R1.2: Metadata and data are associated with detailed provenance
> 
> R1.3: Metadata and data meet domain-relevant community standards
