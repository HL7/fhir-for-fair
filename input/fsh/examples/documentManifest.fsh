Instance: example-f4f-manifest
InstanceOf: DocumentManifestF4F
Usage: #example

* extension[copyright].valueMarkdown = "(c) Best FAIR organization"
* extension[licenceCodeable].valueCodeableConcept = $spdx-license#CC-BY-NC-4.0 "Creative Commons Attribution Non Commercial 4.0 International"
* masterIdentifier.system =	$uri
* masterIdentifier.value = "https://example.org/registry/persistentID"
* subject = Reference(Patient/example-f4f-patient)
* status = #current
* created = "2021-11-17"
* author.display = "Best FAIR organization"
* description = "This is an example of subject level data collection metadata"
* content[0] = Reference(Patient/example-f4f-patient)
* content[+] = Reference(Condition/example-f4f-condition)
* content[+] = Reference(MedicationStatement/example-f4f-medicationStatement-1)
* content[+] = Reference(MedicationStatement/example-f4f-medicationStatement-2)
* related[0].ref.reference = 	"ResearchStudy/f4h-rs-2"
* related[=].ref.display = 	"FAIR4Health Study 2: 30-days readmission risk in COPD patients"
// * related[+].ref.reference = 	"Provenance/b4bc9aaf-8f77-48c3-97b6-cb042d556c32"
// * related[=].ref.display = 	"Provenance inforation about this data set"


Instance: example-f4f-patient
InstanceOf: Patient
Usage: #example
* gender = #male
* birthDate = "1970"
* address.country = "SP"
* address.postalCode = "28001"

Instance: example-f4f-condition
InstanceOf: Condition
Usage: #example
* subject = Reference(Patient/example-f4f-patient)
* code = $sct#13645005 "COPD - Chronic obstructive pulmonary disease"
* onsetAge.value = 50
* onsetAge.system = $ucum
* onsetAge.code = #a

Instance: example-f4f-medicationStatement-1
InstanceOf: MedicationStatement
Usage: #example
* status = #active
* subject = Reference(Patient/example-f4f-patient)
* medicationCodeableConcept	 = $atc#C02LB01  "methyldopa (levorotatory) and diuretics"
* reasonCode = $sct#38341003  "Hypertension"

Instance: example-f4f-medicationStatement-2
InstanceOf: MedicationStatement
Usage: #example
* status = #unknown
* subject = Reference(Patient/example-f4f-patient)
* medicationCodeableConcept	 = $atc#R03DA04 "theophylline"
* reasonCode = $sct#13645005 "COPD - Chronic obstructive pulmonary disease"

 
