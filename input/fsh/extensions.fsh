
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
Title:  "Copyright"
Description: "This extension may be used to provide Copyright information about the set of data described by this resource"

* value[x] only markdown 

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Extension: ExtLicenceTerm
Id:   licenceTerm
Title:  "Licence Terms"
Description: "This extension may be used to provide machine-processable Licence information about the set of data described by this resource"

* value[x] only CodeableConcept 

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Extension: ExtRelatedContent
Id:   library-relatedContent
Title:  "RelatedArtifact (Library)"
Description: "This extension allows Library to provide information about RelatedArtifact"

* ^context[0].type = #fhirpath
* ^context[=].expression = "Library"
// publisher, contact, and other metadata could be defined here using caret syntax (omitted)
* value[x] only RelatedArtifactF4F

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Extension: ExtSubjectOther
Id:   subjectOther
Title:  "Other Subjects"
Description: "This extension allows to record kinds of subjects that are not currently supported by some resources (e.g.,DocumentManifest limited to Patient | Practitioner | Group | Device for )"

// publisher, contact, and other metadata could be defined here using caret syntax (omitted)
* value[x] only Reference(Resource)

Extension: ExtClassifier
Id:   classifier
Title:  "Classifier"
Description: "This extension allows to assign this resource to an organizing scheme"

// publisher, contact, and other metadata could be defined here using caret syntax (omitted)
* value[x] only CodeableConcept


/*== COMMENTED 





=== */

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Extension: ExtRelatedArtifactType 
Id:   relatedArtifactType
Title:  "Type (RelatedArtifact)"
Description: "This extension enanches the current RelatedArtifact data type with extending the supported relationship types as specified in R5"

// * ^context[0].type = #fhirpath
// * ^context[=].expression = "RelatedArtifact"
	
* value[x] only CodeableConcept
* valueCodeableConcept from VsRelatedArtifactType (extensible)




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

