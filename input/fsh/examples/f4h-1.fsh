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
* purpose = "XXXXX Purporse of the FAIR4Health data sets XXXX "
* date = "2021-10-10"
* publisher = "Fair4Health H2020 Project"
* description = "XXXXX add description XXXXXX"

* copyright = "© Fair4Health H2020 Project"


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
* useContext[0].code = $efo#fake-1 "Total number of patients"
* useContext[=].valueQuantity.value = 11486

// THIS IS WRONG FIND A PROPER CODE
* useContext[+].code = $efo#fake-2 "Total number of sites"
* useContext[=].valueQuantity.value = 5

// THIS IS WRONG FIND A PROPER CODE
* useContext[+].code = $efo#fake-3 "AI Algorithm"
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
* useContext[0].code = $efo#fake-1 "Total number of patients"
* useContext[=].valueQuantity.value = 4944

// THIS IS WRONG FIND A PROPER CODE
* useContext[+].code = $efo#fake-2 "Total number of sites"
* useContext[=].valueQuantity.value = 3

// THIS IS WRONG FIND A PROPER CODE
* useContext[+].code = $efo#fake-3 "AI Algorithm"
* useContext[=].valueCodeableConcept.text = "Support Vector Machine (SVM), Logistic Regression, Decision Trees, Random Forest, Gradient Boosted Trees"

