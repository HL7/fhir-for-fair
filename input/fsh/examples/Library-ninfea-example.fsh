

// ----------------------------------------------------------
Instance: ninfea-1
InstanceOf: Library
Usage: #example
// ----------------------------------------------------------

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<div>
		<h3>Abstract</h3>
		<p>Non-invasive foetal electrocardiography (fECG) continues to be an open topic for research.</p>
		<p>The development of standard algorithms for the extraction of the fECG from the maternal electrophysiological interference is limited by the lack of publicly available reference datasets that could be used to benchmark different algorithms while providing a ground truth for foetal heart activity when an invasive scalp lead is unavailable.</p>
		<p>In this work, we present the Non-Invasive Multimodal Foetal ECG-Doppler Dataset for Antenatal Cardiology Research (NInFEA), the first open-access multimodal early-pregnancy dataset in the field that features simultaneous non-invasive electrophysiological recordings and foetal pulsed-wave Doppler (PWD).</p>
		<p>The dataset is mainly conceived for researchers working on fECG signal processing algorithms.</p>
		<p>The dataset includes <strong>60 entries</strong> from <strong>39 pregnant women</strong>, between the <strong>21<sup>st</sup>and 27<sup>th</sup>week of gestation</strong>.</p>
		<p>Each dataset entry comprises 27 electrophysiological channels (2048 Hz, 22 bits), a maternal respiration signal, synchronised foetal trans-abdominal PWD and clinical annotations provided by expert clinicians during signal acquisition. MATLAB snippets for data processing are also provided.</p>
	</div>
	<div>
		<table>
			<tbody>
				<tr>\n<td>Measurement(s)</td>\n<td>electrocardiogram (maternal) - abdominal electrocardiogram (fetal) - Respiratory Rate - pulsed-wave Doppler (fetal heart) - heart function measurement - heart electrical impulse conduction trait</td>
				</tr>
				<tr>\n<td>Technology Type(s)</td>\n<td>electrocardiography - piezoresistive belt - pulsed doppler echocardiography</td>
				</tr>
				<tr>\n<td>Factor Type(s)</td>\n<td>gestational age</td>
				</tr>
				<tr>\n<td>Sample Characteristic - Organism</td>\n<td>Homo sapiens</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>"

* identifier[0].system = "https://doi.org"
* identifier[0].value = "10.13026/c4n5-3b04"
* name = "NInFEA"
* title = "A non-invasive multimodal foetal ECG-doppler dataset for antenatal cardiology research"
* status = #active
* type = $library-type#asset-collection
* subjectCodeableConcept = $NCBITAXON#9606 "Homo sapiens"
* date = "2020-11-20"
* publisher = "PhysioNet"
* description = "The Non-Invasive Multimodal Foetal ECG-Doppler Dataset for Antenatal Cardiology Research (NInFEA) is the first open-access dataset featuring simultaneous non-invasive electrophysiological recordings, fetal pulsed-wave Doppler (PWD) and maternal respiration signals. The dataset includes 60 entries from 39 voluntary pregnant women, between the 21st and the 27th week of gestation. Every entry is composed of 27 electrophysiological channels (2048 Hz, 22 bits, acquired by means of the TMSi Porti7 system), maternal respiration signal (through a resistive thoracic belt), synchronised foetal trans-abdominal PWD and clinical annotations provided by expert clinicians at the time of the signal collection."
* useContext[0].code = $usage-context-type#age
* useContext[0].valueCodeableConcept = $efo#EFO_0005112 "gestational age"
* useContext[1].code = $CodeSystem#technologyType
* useContext[1].valueCodeableConcept = $efo#EFO_0004327 "electrocardiography"
* useContext[2].code = $CodeSystem#measurementType
* useContext[2].valueCodeableConcept = $obo#VT_2000017 "heart electrical impulse conduction trait"

* copyright = "Data Descriptor License: CC-BY-4.0 - CreativeWork"

/* ---------------

MORE DETAILED CONDITION OF USE BY USING the Consent resource.

    {
      "name": "Data Descriptor License",
      "value": "CC-BY-4.0",
      "@type": "CreativeWork"
    }
--------- */

/*=======
Topics:
ecg - foetus - foetal ecg - cardiology - early pregnancy 
pwd - doppler -  maternal ecg - pwd envelope - non-invasive - antenatal - fecg
==========*/

* topic[0] = http://purl.obolibrary.org/obo#FMA_63919 "foetus"
* topic[1] = $sct#75444003 "Fetal electrocardiogram (procedure)"
* topic[2] = $sct#314204000 "Early stage of pregnancy (finding)"
* topic[3] = $sct#394579002 "Cardiology (qualifier value)"
* topic[4] = $efo#EFO_0004327 "electrocardiography"
* topic[5].text = "fecg"
* topic[6].text = "pwd"
* topic[7].text = "pwd envelope"
* topic[8].text = "non-invasive"
* topic[9].text = "doppler"
* topic[10].text = "antenatal"




* relatedArtifact[0].type = #citation
* relatedArtifact[0].citation = "Sulas, E., Urru, M., Tumbarello, R. et al. A non-invasive multimodal foetal ECG–Doppler dataset for antenatal cardiology research. Sci Data 8, 30 (2021)."
* relatedArtifact[0].url = "https://doi.org/10.1038/s41597-021-00811-3"

/*  -- HOW TO MAP THIS ?
 "name": "PhysioNet",
      "value": "https://doi.org/10.13026/c4n5-3b04",
      "@type": "DataCatalog"
---*/


* relatedArtifact[1].type = #citation
* relatedArtifact[1].citation = "Sulas, E., Urru, M., Tumbarello, R. et al. A non-invasive multimodal foetal ECG–Doppler dataset for antenatal cardiology research. Sci Data 8, 30 (2021)."
* relatedArtifact[1].url = "https://doi.org/10.1038/s41597-021-00811-3"



/* ============
 "ontologySourceReferences": {
    "EFO": {
      "name": "EFO",
      "description": "Experimental Factor Ontology",
      "file": "http://data.bioontology.org/ontologies/EFO",
      "version": "2.105",
      "@type": "DefinedTermSet"
     },
    "@type": "CategoryCodeSet"
	
========= */
	
* relatedArtifact[2].type = #depends-on
// add a type extension for "@type": "DefinedTermSet" ?
* relatedArtifact[2].label = "ontology"
* relatedArtifact[2].display = "Experimental Factor Ontology"
* relatedArtifact[2].url = "http://data.bioontology.org/ontologies/EFO"
// more details can be covered by adding a reference to a code system resource


* content[0].url = "https://physionet.org/static/published-projects/ninfea/ninfea-non-invasive-multimodal-foetal-ecg-doppler-dataset-for-antenatal-cardiology-research-1.0.0.zip"
