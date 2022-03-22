Instance: example-f4f-list
InstanceOf: ListF4F
Usage: #example

* extension[copyright].valueMarkdown = "(c) Best FAIR organization"
* extension[licenceCodeable].valueCodeableConcept = https://creativecommons.org/licenses#"CC BY-NC"
* extension[licenceAttachment].valueAttachment.url = "https://github.com/fair4health/metadata/blob/main/LICENSE"

* identifier.system =	$uri
* identifier.value = "https://example.org/registry/persistentID"
* status = #current
* mode = #working
* subject = Reference(Patient/example-f4f-patient)
* date = "2021-11-17"
* source.display = "Best FAIR organization"
* note.text = "This is an example of subject level data collection metadata"
* entry[0].item = Reference(Patient/example-f4f-patient)
* entry[+].item = Reference(Condition/example-f4f-condition)
* entry[+].item = Reference(MedicationStatement/example-f4f-medicationStatement-1)
* entry[+].item = Reference(MedicationStatement/example-f4f-medicationStatement-2)




 
