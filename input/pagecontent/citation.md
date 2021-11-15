The R5 release of FHIR introduces the Citation Resource which is
structured to support FAIR principles. When the Citation Resource is
applied to knowledge artifacts (including FHIR Resources), the Citation
is a distinct digital object containing the metadata about the cited
artifact.

The Citation Resource contains a *citedArtifact* element to clearly
distinguish data about the cited artifact (metadata of the cited
artifact) from data about the citation (metadata of the Citation).

### Metadata of the cited artifact

The *citedArtifact* element contains the following elements:

1)  An *identifier* element can include any number of identifiers,
    including a persistent unique identifier for the cited artifact.

2)  A *relatedIdentifier* element can include any number of identifiers
    and can be used in situations where it is important to provide an
    identifier for a related concept that is not the cited artifact
    itself. For example, a PubMed Identifier (PMID) may be used as an
    identifier for an article about a research study published in a
    journal and it may have a related identifier from a National
    Clinical Trials registry (NCT) that denotes the research study
    described in the article.

3)  A *title* element can include any number of labels and each title
    may be classified with *type* and *language* elements.

4)  An *abstract* element can include any number of summaries or
    descriptions and each abstract may be classified with *type* and
    *language* elements, as well as a *copyright* element if desired to
    report rights management data specific to the abstract.

5)  A *version* element can be used to represent a specific version of
    the cited artifact.

6)  A *part* element can be used to represent a specific part of the
    cited artifact, such as a section, table, figure, supplement, or
    lines of code.

7)  A *classification* element can include any number of classifications
    which can be used extensively to support the findability of the
    cited artifact. To support wide use and re-use of classifications,
    the *classification* element contains *type*, *classifier*, and
    *whoClassified* elements.

7.a) A type element can be used to describe the kind of classification.
Expressing the classification type as a classification.type value
enables extensive re-use of the structure without requiring separate
structural elements for keywords, conditions, domains, severity,
certainty, geographic categories, and many other commonly used types of
classification.

7.b) A classifier element can be used to include any number of
classification values.

7.c) A whoClassified element can be used to include attribution,
ownership, and rights management data for the classification.

8)  A publicationForm element can include any number of publication
    forms for the cited artifact and each publication form can be
    represented with any of:

8.a) a publishedIn element to represent the collection in which the
cited artifact is published;

8.b) a periodicRelease element to represent the specific issue within
the collection, such as a journal or newspaper that is released in
periodic packages;

8.c) articleDate and lastRevisionDate elements for dates related to the
cited artifact itself;

8.d) accessionNumber, pageString, firstPage, lastPage, and pageCount
elements that can be used to identify the specific location or position
within the collection;

8.e) a language element; and

8.f) a copyright element to report rights management data specific to
the publication form.

9)  A webLocation element can include any number of web locations (often
    called URLs for Uniform Resource Locators) and each url element can
    be paired with a classifier element to distinguish among multiple
    web locations.

10) A relatesTo element can include any number of relations to other
    artifacts. The RelatedArtifact datatype includes elements to
    classify the type of relationship, to classify the related artifact,
    and to identify the related artifact.

11) A dateAccessed element can document when the cited artifact was
    accessed.

12) A currentState element can include any number of status
    classifications for the cited artifact.

13) A statusDate element can include any number of status
    classifications for the cited artifact paired with the timing of
    these status classifications.

14) A contributorship element can be used to report attribution of any
    type of contribution to the creation of the cited artifact.

14.a) The contributorship element includes a summary element that can
include any number of strings used to summarize contributorship, such as
author lists, contributorship statements, and acknowledgement
statements.

14.b) The contributorship element includes an entry element that can
include any number of entities that contributed to the cited artifact.
The entry element may include:

14.b.i. name, initials, collectiveName, and identifier elements to
identify the entity;

14.b.ii. affiliationInfo, address, and telecom elements to provide
additional information about the entity;

14.b.iii. contributionType, role, contributionInstance, and
correspondingContact elements to report specific contributions by the
entity; and

14.b.iv. a rankingOrder element to provide a rank order among
contributing entities.

15) A note element can include any number of annotations for data that
    does not fit other elements.

### Metadata of the Citation

The Citation itself includes *classification*, *note*, *currentState*,
*statusDate*, and *relatesTo* elements that can be used to apply similar
concepts to the Citation as described for the cited artifact.

The Citation includes a *summary* element that can include any number of
summary expressions for display of the citation.

The Citation contains elements useful to identify the Citation including
*url* (for canonical identifier), *identifier*, *version*, *name* (for
machine-friendly label) and *title* (for human-friendly label) elements.

The Citation contains elements useful for attribution, rights
management, and technical management of the Citation including *status*,
*experimental*, *date*, *publisher*, *contact*, *useContext*,
*jurisdiction*, *copyright*, *approvalDate*, *lastReviewDate*,
*effectivePeriod*, *author*, *editor*, *reviewer* and *endorser*
elements.

The Citation contains *description* and *purpose* elements for natural
language descriptions of the citation.
