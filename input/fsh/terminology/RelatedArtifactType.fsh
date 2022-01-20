
ValueSet: VsRelatedArtifactType
Id: related-artifact-type
Title: "RelatedArtifactType"
Description: "The type of relationship to the related artifact."

* codes from system CsRelatedArtifactType

//=======================================
CodeSystem: CsRelatedArtifactType
Id: related-artifact-type
Title: "RelatedArtifactType"
Description: "The type of relationship to the related artifact."
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #documentation "Documentation" "Additional documentation for the knowledge resource. This would include additional instructions on usage as well as additional information on clinical context or appropriateness."
* #justification "Justification" "The target artifact is a summary of the justification for the knowledge resource including supporting evidence, relevant guidelines, or other clinically important information. This information is intended to provide a way to make the justification for the knowledge resource available to the consumer of interventions or results produced by the knowledge resource."
* #citation "Citation" "Bibliographic citation for papers, references, or other relevant material for the knowledge resource. This is intended to allow for citation of related material, but that was not necessarily specifically prepared in connection with this knowledge resource."
* #predecessor "Predecessor" "The previous version of the knowledge resource."
* #successor "Successor" "The next version of the knowledge resource."
* #derived-from "Derived From" "This artifact is derived from the target artifact. This is intended to capture the relationship in which a particular knowledge resource is based on the content of another artifact, but is modified to capture either a different set of overall requirements, or a more specific set of requirements such as those involved in a particular institution or clinical setting. The artifact may be derived from one or more target artifacts."
* #depends-on "Depends On" "This artifact depends on the target artifact. There is a requirement to use the target artifact in the creation or interpretation of this artifact."
* #composed-of "Composed Of" "This artifact is composed of the target artifact. This artifact is constructed with the target artifact as a component. The target artifact is a part of this artifact. (A dataset is composed of data.)."
* #part-of "Part Of" "This artifact is a part of the target artifact. The target artifact is composed of this artifact (and possibly other artifacts)."
* #amends "Amends" "This artifact amends or changes the target artifact. This artifact adds additional information that is functionally expected to replace information in the target artifact. This artifact replaces a part but not all of the target artifact."
* #amended-with "Amended With" "This artifact is amended with or changed by the target artifact. There is information in this artifact that should be functionally replaced with information in the target artifact."
* #appends "Appends" "This artifact adds additional information to the target artifact. The additional information does not replace or change information in the target artifact."
* #appended-with "Appended With" "This artifact has additional information in the target artifact."
* #cites "Cites" "This artifact cites the target artifact. This may be a bibliographic citation for papers, references, or other relevant material for the knowledge resource. This is intended to allow for citation of related material, but that was not necessarily specifically prepared in connection with this knowledge resource."
* #cited-by "Cited By" "This artifact is cited by the target artifact."
* #comments-on "Is Comment On" "This artifact contains comments about the target artifact."
* #comment-in "Has Comment In" "This artifact has comments about it in the target artifact.  The type of comments may be expressed in the targetClassifier element such as reply, review, editorial, feedback, solicited, unsolicited, structured, unstructured."
* #contains "Contains" "This artifact is a container in which the target artifact is contained. A container is a data structure whose instances are collections of other objects. (A database contains the dataset.)."
* #contained-in "Contained In" "This artifact is contained in the target artifact. The target artifact is a data structure whose instances are collections of other objects."
* #corrects "Corrects" "This artifact identifies errors and replacement content for the target artifact."
* #correction-in "Correction In" "This artifact has corrections to it in the target artifact. The target artifact identifies errors and replacement content for this artifact."
* #replaces "Replaces" "This artifact replaces or supersedes the target artifact. The target artifact may be considered deprecated."
* #replaced-with "Replaced With" "This artifact is replaced with or superseded by the target artifact. This artifact may be considered deprecated."
* #retracts "Retracts" "This artifact retracts the target artifact. The content that was published in the target artifact should be considered removed from publication and should no longer be considered part of the public record."
* #retracted-by "Retracted By" "This artifact is retracted by the target artifact. The content that was published in this artifact should be considered removed from publication and should no longer be considered part of the public record."
* #signs "Signs" "This artifact is a signature of the target artifact."
* #similar-to "Similar To" "This artifact has characteristics in common with the target artifact. This relationship may be used in systems to “deduplicate” knowledge artifacts from different sources, or in systems to show “similar items”."
* #supports "Supports" "This artifact provides additional documentation for the target artifact. This could include additional instructions on usage as well as additional information on clinical context or appropriateness."
* #supported-with "Supported With" "The target artifact contains additional documentation for the knowledge resource. This could include additional instructions on usage as well as additional information on clinical context or appropriateness."
* #transforms "Transforms" "This artifact was generated by transforming the target artifact (e.g., format or language conversion). This is intended to capture the relationship in which a particular knowledge resource is based on the content of another artifact, but changes are only apparent in form and there is only one target artifact with the “transforms” relationship type."
* #transformed-into "Transformed Into" "This artifact was transformed into the target artifact (e.g., by format or language conversion)."
* #transformed-with "Transformed With" "This artifact was generated by transforming a related artifact (e.g., format or language conversion), noted separately with the “transforms” relationship type. This transformation used the target artifact to inform the transformation. The target artifact may be a conversion script or translation guide."