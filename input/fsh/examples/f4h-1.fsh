Instance: f4h-1
InstanceOf: Library
Usage: #example

* url = "https://example.org/registry/fair4health"
// TO be changed
// * identifier.system = "urn:ietf:rfc:3986"
// * identifier.value = "https://portal.fair4health.eu/"

* name = "FAIR4Health"
* title = "Metadata record for the FAIR4Health project"
* status = #active
* type = $library-type#asset-collection
* purpose = "(1) Support the discovery of disease onset triggers and disease association patterns in comorbid patients and demonstrate the reproducibility of research (2)Develop and pilot a prediction service for 30-days readmission risk in patients with COPD"
* date = "2021-10-10"
* publisher = "Fair4Health H2020 Project"
* description = "FAIR4Health aims to facilitate and encourage the European Union health research community to FAIRify, that is, to augment, share and reuse datasets derived from publicly funded research initiatives, demonstrating the FAIR strategy’s potential impact on health outcomes and health research. It focuses on two main use cases: 
- FAIR4Health Pathfinder Use case 1 (P1): to support the discovery of disease onset triggers and disease association patterns in comorbid patients and demonstrate the reproducibility of research
- FAIR4Health Pathfinder Use case 2 (P2): to develop and pilot a prediction service for 30-days readmission risk in patients with COPD"

* copyright = "© Fair4Health H2020 Project"


* relatedArtifact[0].type = #documentation
* relatedArtifact[=].label = "Web site"
* relatedArtifact[=].display = "Publication Site"
* relatedArtifact[=].citation = "FAIR4Health Platform access point"
* relatedArtifact[=].url = "https://portal.fair4health.eu/"

* relatedArtifact[+].type = #depends-on
* relatedArtifact[=].label = "Model"
* relatedArtifact[=].display = "Common Data model"
* relatedArtifact[=].citation = "Common models, expressed as HL7 FHIR profiles, used by the FAIR4Health project in the FAIRification process"
* relatedArtifact[=].url = "https://github.com/fair4health/common-data-model"

* relatedArtifact[+].type = #depends-on
* relatedArtifact[=].label = "Metadata"
* relatedArtifact[=].display = "Metadata repository"
* relatedArtifact[=].citation = "FAIR4Health FAIR metadata repository"
* relatedArtifact[=].url = "https://github.com/fair4health/metadata"

* content[0]
  * contentType = #application/fhir+json
  * title = "Identification of multimorbidity patterns and polypharmacy correlation on the risk of mortality in elderly, and demonstrate the reproducibility of research"
  * url = "https://example.org/registry/f4h-study-1"

* content[+]
  * contentType = #application/fhir+json
  * title = "Develop and pilot an early prediction service for 30-days readmission risk in COPD (Chronic Obstructive Pulmonary Disease) patients"
  * url = "https://example.org/registry/f4h-study-2"

/*----

Research study	Description	Total number of sites	Total number of patients	AI Algorithm
1	Identification of multimorbidity patterns and polypharmacy correlation on the risk of mortality in elderly, and demonstrate the reproducibility of research	5	11.486	FP Growth
2	Develop and pilot an early prediction service for 30-days readmission risk in COPD (Chronic Obstructive Pulmonary Disease) patients	3	4.944	Support Vector Machine (SVM), Logistic Regression, Decision Trees, Random Forest, Gradient Boosted Trees

----*/

Instance: f4h-1-1
InstanceOf: Library

* url = "https://example.org/registry/f4h-study-1"
* type = $library-type#asset-collection
* name = "FAIR4HealthStudy1"
* title = "FAIR4Health Study 1: Identification of multimorbidity patterns"
* purpose = "Identification of multimorbidity patterns and polypharmacy correlation on the risk of mortality in elderly, and demonstrate the reproducibility of research"
* status = #active

// THIS IS WRONG FIND A PROPER CODE
* useContext[0].code = $efo#number-of-patients "Total number of patients"
* useContext[=].valueQuantity.value = 11486

// THIS IS WRONG FIND A PROPER CODE
* useContext[+].code = $efo#number-of-sites "Total number of sites"
* useContext[=].valueQuantity.value = 5

// THIS IS WRONG FIND A PROPER CODE
* useContext[+].code = $efo#algorithm "AI Algorithm"
* useContext[=].valueCodeableConcept.text = "FP Growth"



Instance: f4h-1-2
InstanceOf: Library

* url = "https://example.org/registry/f4h-study-2"
* type = $library-type#asset-collection
* name = "FAIR4HealthStudy2"
* title = "FAIR4Health Study 2: Identification of multimorbidity patterns"
* purpose = "Develop and pilot an early prediction service for 30-days readmission risk in COPD (Chronic Obstructive Pulmonary Disease) patients"
* status = #active

// THIS IS WRONG FIND A PROPER CODE
* useContext[0].code = $efo#number-of-patients "Total number of patients"
* useContext[=].valueQuantity.value = 4944

// THIS IS WRONG FIND A PROPER CODE
* useContext[+].code = $efo#number-of-sites "Total number of sites"
* useContext[=].valueQuantity.value = 3

// THIS IS WRONG FIND A PROPER CODE
* useContext[+].code = $efo#algorithm "AI Algorithm"
* useContext[=].valueCodeableConcept.text = "Support Vector Machine (SVM), Logistic Regression, Decision Trees, Random Forest, Gradient Boosted Trees"

