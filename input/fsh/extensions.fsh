Extension: ExtPersistentUrl
Id:   persistentUrl
Title:  "Persistent URL extension"
Description: "This extension enanches non-canonical resources with a persistent identifier (a kind of canonical url) to better support the FAIR requirement to have Globally Unique, Persistent and Resolvable Identifiers"

// publisher, contact, and other metadata could be defined here using caret syntax (omitted)
* value[x] only url

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Extension: ExtRelatedContent
Id:   library-relatedContent
Title:  "Extension for Library Content"
Description: "This extension allows Library to provide richer information about the library content (including referred FHIR resources)"

* ^context[0].type = #fhirpath
* ^context[=].expression = "Library"
// publisher, contact, and other metadata could be defined here using caret syntax (omitted)
* value[x] only RelatedArtifactF4F

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Extension: ExtRelatedArtifact
Id:   relatedArtifact-ext
Title:  "Extensions for the RelatedArtifact data type"
Description: "This extension enanches the current RelatedArtifact data type with the enhancements identified in FHIR R5"

* extension contains
    classifier 0..* and
    document 0..1 and
    resourceReference 0..1
	
* extension[classifier].value[x] only CodeableConcept
// this value set is not in the current 4b version decide if to include a simliar vlaue set within this guide
// * extension[classifier].valueCodeableConcept from http://hl7.org/fhir/ValueSet/citation-artifact-classifier (example)
* extension[document].value[x] only Attachment
* extension[resourceReference].value[x] only Reference


