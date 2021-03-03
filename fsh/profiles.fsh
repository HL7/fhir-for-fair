//============== ALIAS ===============
// Alias: ips_Patient = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
//=========================

//====== Profiles =====================================


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  LibraryF4F
Parent:   Library
Id:       Library-uv-f4f
Title:    "Library (FHIR for FAIR)"
Description: "This profile defines how to use the Library resource to convey metadata information for a FAIR dataset realized by using HL7 FHIR"
//-------------------------------------------------------------------------------------------
* url MS
* identifier MS
* name MS
* title MS
* status MS
* type MS
* purpose MS
* content MS 
* content 1..* 
* content only AttachmentF4F

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  AttachmentF4F
Parent:   Attachment
Id:       Attachment-uv-f4f
Title:    "Attachment (FHIR for FAIR)"
Description: "This profile defines how to use the Attachment data type to convey metadata information for a FAIR dataset realized by using HL7 FHIR"
//-------------------------------------------------------------------------------------------
// * data 0..0 => to be checked
* url 1..1 MS

/*========== BEGIN COMMENT

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CitationF4F
Parent:   Citation
Id:       Citation-uv-f4f
Title:    "Citation (FHIR for FAIR)"
Description: "This profile defines how to use the Citation resource to convey metadata information for a FAIR dataset realized by using HL7 FHIR"
//-------------------------------------------------------------------------------------------
// * url MS
* identifier MS

END COMMENT  ====*/