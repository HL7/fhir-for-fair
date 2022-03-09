

//====== Data Types =====================================


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  RelatedArtifactF4F
Parent:   RelatedArtifact
Id:       RelatedArtifact-uv-f4f
Title:    "RelatedArtifact (FHIR for FAIR)"
Description: "This profile enhances the current RelatedArtifact data with the enhancements identified in FHIR R5"
//-------------------------------------------------------------------------------------------

*  extension contains 
 
  ExtRelatedArtifactClassifier named classifier 0..1
  and ExtRelatedArtifactResourceReference named resourceReference 0..1
  and ExtRelatedArtifactType named relationshipType 0..1




//====== Resources =====================================


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  LibraryF4F
Parent:   Library
Id:       Library-uv-f4f
Title:    "Library (Study Level Medatata)"
Description: "This profile defines how to use the Library resource to convey metadata information for a FAIR dataset realized by using HL7 FHIR. An extension is used to allow to refer as "
//-------------------------------------------------------------------------------------------
* extension contains 	
	ExtLicenceTerm named licenceTerm 0..1	
	and ExtRelatedContent named relatedContent 0..*
	and ExtSubjectOther named subjectOther 0..1
	and ExtClassifier named classifier 0..*

* extension[licenceTerm]
* extension[relatedContent]
* extension[subjectOther]
* extension[classifier]

* url ^short = "Canonical identifier for this library, represented as a URI (globally unique)."
* identifier ^short = "Additional identifier for the library"
* name ^short = "Name for this library (computer friendly)."
* title ^short = "Name for this library (human friendly)."
* status ^short = "draft | active | retired |unknown"
* type ^short = "logic-library | model-definition | asset-collection |module-definition"
* subject[x] ^short = "Type of subject the library content is focused on"
* copyright ^short = "Use and/or publishing restrictions."
* purpose ^short = "Why this library is defined."
* relatedArtifact only RelatedArtifactF4F
// * content MS 
// * content 1..* 
// * content only AttachmentF4F
* content.url 1.. 


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ResearchStudyF4F
Parent:   ResearchStudy
Id:       ResearchStudy-uv-f4f
Title:    "ResearchStudy (Study Level Medatata)"
Description: "This profile defines how to use the ResearchStudy resource to convey metadata information for a FAIR collection of data at the study level realized by using HL7 FHIR"
//-------------------------------------------------------------------------------------------

* extension contains 
	ExtCopyright named copyright 0..1 and 
	ExtLicenceTerm named licenceTerm 0..1
	and ExtContext named context 0..*

* extension[copyright]
* extension[licenceTerm]
* extension[context]
// * identifier MS
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[=].path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    url 0..*
* identifier[url] ^short = "GUPRI (uri)"
* identifier[url] ^definition = "Globally Unique, Persistent and Resolvable Identifier"
* identifier[url].system = $uri
* identifier[url].value ^short = "uri"


* title ^short = "Name for this study."
* status  ^short = "The current state of the study."
* primaryPurposeType ^short = "A classification of the intent of the study."
* relatedArtifact only RelatedArtifactF4F
* description ^short = "What this is study doing."
* objective ^short = "A goal for the study."

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ListF4F
Parent:   List
Id:       List-uv-f4f
Title:    "List (Subject Level Medatata)"
Description: "This profile defines how to use the List resource to convey subject level metadata information for a FAIR collection of data by using HL7 FHIR"

//-------------------------------------------------------------------------------------------
* extension contains 
	ExtCopyright named copyright 0..1 and 
	ExtLicenceTerm named licenceTerm 0..1 and
	ExtSubjectOther named subjectOther 0..1 and
	ExtClassifier named classifier 0..*
	
* extension[copyright]
* extension[licenceTerm]
* extension[subjectOther]
* extension[classifier]

// * identifier MS
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[=].path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    url 0..*
* identifier[url] ^short = "GUPRI (uri)"
* identifier[url] ^definition = "Globally Unique, Persistent and Resolvable Identifier"
* identifier[url].system = $uri
* identifier[url].value ^short = "uri"


* status ^short = "current | retired | entered-in-error"
* subject ^short = "Subject of the listed resources"
* code ^short = "What the purpose of this list is"
* date ^short = "When the list was prepared."
* source ^short = "Who and/or what defined the list contents (aka Author)."
* note ^short = "Comments about the list"
* entry.item ^short = "A reference to the listed resource."



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  DocumentManifestF4F
Parent:   DocumentManifest
Id:       DocumentManifest-uv-f4f
Title:    "DocumentManifest (Subject Level Medatata)"
Description: "This profile defines how to use the DocumentManifest resource to convey subject level metadata information for a FAIR collection of data by using HL7 FHIR"

//-------------------------------------------------------------------------------------------
* extension contains 
	ExtCopyright named copyright 0..1 and 
	ExtLicenceTerm named licenceTerm 0..1 and
	ExtSubjectOther named subjectOther 0..1 and
	ExtClassifier named classifier 0..*
	
* extension[copyright]
* extension[licenceTerm]
* extension[subjectOther]
* extension[classifier]

* masterIdentifier ^short = "Unique Identifier for the set of Items in manifest"
* identifier ^short = "Other identifiers for the manifest."
* status ^short = "current | superseded |entered-in-error"
* subject ^short = "Subject of the listed resources"
* created ^short = "When this document manifest created."
* author ^short = "Who and/or what authored the DocumentManifest."
// * recipient 0..
* description ^short = "Human-readable description (title)."
* content ^short = "Items in manifest."
* related.identifier ^short = "Identifiers of things that are related."
* related.ref	^short = "Related Resource."

/*========== BEGIN COMMENT 

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  AttachmentF4F
Parent:   Attachment
Id:       Attachment-uv-f4f
Title:    "Attachment (FHIR for FAIR)"
Description: "This profile defines how to use the Attachment data type to convey metadata information for a FAIR collection of data at the study level realized by using HL7 FHIR"
//-------------------------------------------------------------------------------------------
// * data 0..0 => to be checked

* url 1..1 MS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CitationF4F
Parent:   Citation
Id:       Citation-uv-f4f
Title:    "Citation (Study Level Medatata)"
Description: "This profile defines how to use the Citation resource to convey metadata information for a FAIR collection of data at the study level realized by using HL7 FHIR"
//-------------------------------------------------------------------------------------------
* url MS
* identifier MS
* title MS
* status MS
* date MS
* summary MS
* publisher MS
* webLocation MS
* contributorship MS
* keywordList MS
* relatedArtifact MS


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  EvidenceReportF4F
Parent:   EvidenceReport
Id:       EvidenceReport-uv-f4f
Title:    "EvidenceReport (Subject Level Medatata)"
Description: "This profile defines how to use the EvidenceReport resource to convey metadata information for a FAIR collection of data at the subject level realized by using HL7 FHIR"
//-------------------------------------------------------------------------------------------
* url MS
* status MS
* citeAsReference MS
* subject MS 
* relatedArtifact 1.. MS

END COMMENT  

====*/





