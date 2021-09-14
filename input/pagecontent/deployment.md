### Overview

This page provides a short overview of a non-exhaustive list of possible
logical deployment architectures that communities could consider
allowing the discovery and access to FAIR data by using HL7 FHIR API;
starting from a simple case where a well-known FHIR server is acting as
registry and repository for data and metadata, up to the case where
repository endpoints are not known a-priori and needs to be discovered.

This is not the only possible approach, for example hybrid FHIR/non-FHIR
solutions could be considered as well.

It is assumed that a proper privacy and security layer is realized to
assure that all the access and usage conditions specified by the data
sources are properly enforced (not shown in the pictures).

### Case 1: Well-known Registry/Repository

All data sources store FHIR resources representing data and metadata to
be shared in a well-known FHIR server. All potential clients belonging
to this community know the endpoint of this well-known FHIR server.

Client uses FHIR API to search and get FHIR resources representing data
and/or metadata.

<div>

<img src="deployment-1.png" alt="Well-known Registry/Repository "

style="width:60%;padding-bottom: 25px;padding-top: 25px" />

</div>

**Figure 1 Well-known Registry/Repository**

### Case 2: Well-known metadata registry

A set of FHIR Servers are used as Data Repository by data sources. A
well-known community FHIR server is used to publish appropriate FHIR
resources representing metadata.

All potential clients belonging to this community know the endpoint of
this well-known FHIR server.

Client uses FHIR API to search and get FHIR resources representing
metadata; data references provided by the retrieved resources are then
used to get data from the proper data repository (not known a -priori).

<div>

<img src="deployment-2.png" alt="Well-known metadata registry"

style="width:60%;padding-bottom: 25px;padding-top: 25px" />

</div>

**Figure 2 Well-known metadata registry**

### Case 3: Registries/repositories discovering.

The client doesn’t know the end point of the server where metadata and
data are stored; it queries then a well-known FHIR server to discover
the endpoint fulfilling specific search criteria. This information is
then used to search and access data and metadata as described for case 1
and 2.

<div>

<img src="deployment-3.png" alt="Registries/repositories discovering "

style="width:60%;padding-bottom: 25px;padding-top: 25px" />

</div>

**Figure 3 Registries/repositories discovering.**
