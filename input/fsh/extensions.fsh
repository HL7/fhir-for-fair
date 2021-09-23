Extension: ExtCanonicalUrl
Id:   uv-f4f-canonicalUrl
Title:  "Canonical URL extension"
Description: "This extension enanches non-canonical resources with a persistent identifier (canonical url) to better support the FAIR requirement to have Globally Unique, Persistent and Resolvable Identifiers"

// publisher, contact, and other metadata could be defined here using caret syntax (omitted)
* value[x] only url

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Extension: ExtRelatedArtifact
Id:   uv-f4f-relatedArtifact
Title:  "Extensions for RelatedArtifact"
Description: "This extension enanches the current RelatedArtifact data type with the enhancements identified in FHIR R5"

* extension contains
    classifier 0..* and
    document 0..1 and
    resourceReference 0..1
	
* extension[classifier].value[x] only CodeableConcept
* extension[classifier].valueCodeableConcept from http://hl7.org/fhir/ValueSet/citation-artifact-classifier (example)
* extension[document].value[x] only Attachment
* extension[resourceReference].value[x] only Reference

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++