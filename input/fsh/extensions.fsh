
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Extension: ExtContext
Id:   researchStudy-context
Title:  "Usage Context (ResearchStudy)"
Description: "This extension allows ResearchStudy to provide richer information about the context of the study, when not already covered by the already defined elements"

* ^context[0].type = #fhirpath
* ^context[=].expression = "ResearchStudy"
// publisher, contact, and other metadata could be defined here using caret syntax (omitted)
* value[x] only UsageContext


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Extension: ExtCopyright
Id:   copyright
Title:  "Copyright and  Licence"
Description: "This extension may be used to provide Copyright and  Licence information about the set of data described by this resource"

* value[x] only markdown

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Extension: ExtPersistentUrl
Id:   persistentUrl
Title:  "Persistent URL extension"
Description: "This extension enanches non-canonical resources with a persistent identifier (a kind of canonical url) to better support the FAIR requirement to have Globally Unique, Persistent and Resolvable Identifiers"

// publisher, contact, and other metadata could be defined here using caret syntax (omitted)
* value[x] only url

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Extension: ExtRelatedContent
Id:   library-relatedContent
Title:  "RelatedArtifact (Library)"
Description: "This extension allows Library to provide information about RelatedArtifact"

* ^context[0].type = #fhirpath
* ^context[=].expression = "Library"
// publisher, contact, and other metadata could be defined here using caret syntax (omitted)
* value[x] only RelatedArtifactF4F


/*== COMMENTED for the time being 


=== */


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Extension: ExtRelatedArtifactClassifier
Id:   relatedArtifactClassifier
Title:  "Classifier (RelatedArtifact)"
Description: "This extension enanches the current RelatedArtifact data type with the classifier element as specified in R5"

// * ^context[0].type = #fhirpath
// * ^context[=].expression = "RelatedArtifact"
// * extension contains classifier 0..* 
	
* value[x] only CodeableConcept
// this value set is not in the current 4b version decide if to include a simliar vlaue set within this guide
// * extension[classifier].valueCodeableConcept from http://hl7.org/fhir/ValueSet/citation-artifact-classifier (example)
// * extension[document].value[x] only Attachment


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Extension: ExtRelatedArtifactResourceReference
Id:   relatedArtifactResourceReference
Title:  "ResourceReference (RelatedArtifact)"
Description: "This extension enanches the current RelatedArtifact data type allowing to reference FHIR resources"


// * ^context[0].type = #fhirpath
// * ^context[=].expression = "RelatedArtifact"

// * extension contains resourceReference 0..1
* value[x] only Reference(Resource)

