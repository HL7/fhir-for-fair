// ======================================================
Instance: f4h-lib-1
InstanceOf: LibraryF4F

/*====== COMMENT

====== END == */

* text.status = #additional
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
	<h3>FAIR4Health Study 1: Identification of multimorbidity patterns</h3>
	<p><strong>ID: </strong>https://example.org/registry/f4h-study-1</p>
	<table border="1">
		<tbody>
			<tr>
				<td>
					<strong>Research study</strong>
				</td>
				<td>
					<strong>Description </strong>
				</td>
				<td>
					<strong>Total number of sites</strong>
				</td>
				<td>
					<strong>Total number of patients</strong>
				</td>
				<td>
					<strong>AI Algorithm</strong>
				</td>
			</tr>
			<tr>
				<td>1</td>
				<td>Identification of multimorbidity patterns and polypharmacy correlation on the risk of mortality in elderly, and demonstrate the reproducibility of research</td>
				<td>5</td>
				<td>11.486</td>
				<td>FP Growth</td>
			</tr>
		</tbody>
	</table>
	<p>(C) Fair4Health H2020 Project.</p>
	<p>This project has received funding from the European Union's Horizon 2020 research and innovation programme under grant agreement No 824666.</p>
</div>

"""



* url = "https://example.org/registry/f4h-study-1"
* type = $library-type#asset-collection
* name = "FAIR4HealthStudy1"
* copyright = "Fair4Health H2020 Project"
* title = "FAIR4Health Study 1: Identification of multimorbidity patterns"
* purpose = "Identification of multimorbidity patterns and polypharmacy correlation on the risk of mortality in elderly, and demonstrate the reproducibility of research"
* status = #active
// JUST AN EXAMPLE
* useContext[0].code = $example#number-of-patients "Total number of patients"
* useContext[=].valueQuantity.value = 11486
// JUST AN EXAMPLE
* useContext[+].code = $example#number-of-sites "Total number of sites"
* useContext[=].valueQuantity.value = 5
// JUST AN EXAMPLE
* useContext[+].code = $example#algorithm "AI Algorithm"
* useContext[=].valueCodeableConcept.text = "FP Growth"
//========================================
Instance: f4h-lib-2
InstanceOf: LibraryF4F
* text.status = #additional
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
	<h3>FAIR4Health Study 2: 30-days readmission risk in COPD patients</h3>
	<p>
		<strong>ID: </strong>https://example.org/registry/f4h-study-2</p>
	<table border="1">
		<tbody>
			<tr>
				<td>
					<strong>Research study</strong>
				</td>
				<td>
					<strong>Description </strong>
				</td>
				<td>
					<strong>Total number of sites</strong>
				</td>
				<td>
					<strong>Total number of patients</strong>
				</td>
				<td>
					<strong>AI Algorithm</strong>
				</td>
			</tr>
			<tr>
				<td>2</td>
				<td>Develop and pilot an early prediction service for 30-days readmission risk in COPD (Chronic Obstructive Pulmonary Disease) patients</td>
				<td>3</td>
				<td>4.944</td>
				<td>Support Vector Machine (SVM), Logistic Regression, Decision Trees, Random Forest, Gradient Boosted Trees</td>
			</tr>
		</tbody>
	</table>
	<h3>Contents</h3>
	<p>Subject 1 Data&nbsp;<code>https://example.org/registry/f4h-study-2-sbj-1</code>&nbsp;(<code>application/fhir+json</code>)</p>
	<p>(C) Fair4Health H2020 Project.</p>
	<p>This project has received funding from the European Union's Horizon 2020 research and innovation programme under grant agreement No 824666.</p>
</div>
"""
* extension[0].url = "http://hl7.org/fhir/uv/fhir-for-fair/StructureDefinition/library-relatedContent"
* extension[=].valueRelatedArtifact.extension[0].url = "http://hl7.org/fhir/uv/fhir-for-fair/StructureDefinition/relatedArtifactClassifier"
* extension[=].valueRelatedArtifact.extension[=].valueCodeableConcept = $citation-artifact-classifier#fhir-resource
* extension[=].valueRelatedArtifact.extension[+].url = "http://hl7.org/fhir/uv/fhir-for-fair/StructureDefinition/relatedArtifactResourceReference"
* extension[=].valueRelatedArtifact.extension[=].valueReference = Reference(DocumentManifest/example-f4f-manifest)
* extension[=].valueRelatedArtifact.type = #composed-of
* url = "https://example.org/registry/f4h-study-2"
* type = $library-type#asset-collection
* name = "FAIR4HealthStudy2"
* copyright = "Fair4Health H2020 Project"
* title = "FAIR4Health Study 2: 30-days readmission risk in COPD patients"
* purpose = "Develop and pilot an early prediction service for 30-days readmission risk in COPD (Chronic Obstructive Pulmonary Disease) patients"
* status = #active
// JUST AN EXAMPLE
* useContext[0].code = $example#number-of-patients "Total number of patients"
* useContext[=].valueQuantity.value = 4944
// JUST AN EXAMPLE
* useContext[+].code = $example#number-of-sites "Total number of sites"
* useContext[=].valueQuantity.value = 3
// JUST AN EXAMPLE
* useContext[+].code = $example#algorithm "AI Algorithm"
* useContext[=].valueCodeableConcept.text = "Support Vector Machine (SVM), Logistic Regression, Decision Trees, Random Forest, Gradient Boosted Trees"