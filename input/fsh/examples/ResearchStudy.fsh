//========================================
Instance: f4h-rs-2
InstanceOf: ResearchStudyF4F

/*======= COMMENT
====== END == */
* text.status = #additional
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
	<h3>FAIR4Health Study 2: 30-days readmission risk in COPD patients</h3>
	<p><strong>ID: </strong>https://example.org/registry/f4h-study-2b</p>
	<p>&nbsp;</p>
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
	<p>&nbsp;</p>
	<p>(C) Fair4Health H2020 Project.</p>
	<p>This project has received funding from the European Union's Horizon 2020 research and innovation programme under grant agreement No 824666.</p>
</div>
"""


// * extension[url].valueUrl = "https://example.org/registry/f4h-study-2b"
* extension[copyright].valueMarkdown = "Fair4Health H2020 Project"
// JUST AN EXAMPLE
* extension[context][0].valueUsageContext.code = $example#number-of-patients "Total number of patients"
* extension[context][=].valueUsageContext.valueQuantity.value = 4944
// JUST AN EXAMPLE
* extension[context][+].valueUsageContext.code = $example#number-of-sites "Total number of sites"
* extension[context][=].valueUsageContext.valueQuantity.value = 3
// JUST AN EXAMPLE
* extension[context][+].valueUsageContext.code = $example#algorithm "AI Algorithm"
* extension[context][=].valueUsageContext.valueCodeableConcept.text = "Support Vector Machine (SVM), Logistic Regression, Decision Trees, Random Forest, Gradient Boosted Trees"
* identifier.system = $uri
* identifier.value = "https://example.org/registry/f4h-study-2b"
* title = "FAIR4Health Study 2: 30-days readmission risk in COPD patients"
* status = #active
* primaryPurposeType = $research-study-prim-purp-type#health-services-research
* description = "Develop and pilot an early prediction service for 30-days readmission risk in COPD (Chronic Obstructive Pulmonary Disease) patients"
* objective.name = "30-days readmission risk in COPD patients"
