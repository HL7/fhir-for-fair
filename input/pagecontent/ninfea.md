The NInFEA dataset is accessible from the Physionet
repository: <https://doi.org/10.13026/c4n5-3b04>. This dataset has been
presented as part of a peer-reviewed, scientific article by Pani, D et
al. [*<span class="underline">Scientific
Data</span>*](https://www.nature.com/sdata) 8:30
(2021) <https://doi.org/10.1038/s41597-021-00811-3> which is entitled
"NInFEA: Non-Invasive Multimodal Foetal ECG-Doppler Dataset for
Antenatal Cardiology Research". The abstract is given below:

> *Non-invasive foetal electrocardiography (fECG) continues to be an
> open topic for research. The development of standard algorithms for
> the extraction of the fECG from the maternal electrophysiological
> interference is limited by the lack of publicly available reference
> datasets that could be used to benchmark different algorithms while
> providing a ground truth for foetal heart activity when an invasive
> scalp lead is unavailable. In this work, we present the Non-Invasive
> Multimodal Foetal ECG-Doppler Dataset for Antenatal Cardiology
> Research (NInFEA), the first open-access multimodal early-pregnancy
> dataset in the field that features simultaneous non-invasive
> electrophysiological recordings and foetal pulsed-wave Doppler (PWD).
> The dataset is mainly conceived for researchers working on fECG signal
> processing algorithms. The dataset includes 60 entries from 39
> pregnant women, between the 21<sup>st</sup> and 27<sup>th</sup> week
> of gestation. Each dataset entry comprises 27 electrophysiological
> channels (2048 Hz, 22 bits), a maternal respiration signal,
> synchronised foetal trans-abdominal PWD and clinical annotations
> provided by expert clinicians during signal acquisition. MATLAB
> snippets for data processing are also provided.*

Crucially for this guide, the NinFEA publication includes the details of
methodology to explain how the data set was created and how it can be
used for calibration. It also provides machine-accessible metadata for
the reported data set at the study
level: <https://doi.org/10.6084/m9.figshare.13283492>. This study level
metadata is represented in CSV (human) and JSON (machine) using numerous
sources of terminology.

The scientific publication, the data set, and the associated metadata
were reviewed against the RDA criteria for FAIR assessment (see earlier
section). The overall assessment at the study level, is that arguably
all essential FAIR assessment criteria are met, which is no surprise
given the fact that the dataset is provided as part of Physionet, which
is supported by a strong international community. However, we have
identified areas for improvement especially with regard to
interoperability which will benefit from application of the FHIR
standards. Furthermore, the FHIR standards enable more detailed
representation of FAIR metadata at the anonymised patient level for
method and context which is currrently limited to the full text of the
publication (HTML and PDF formats), which is not readily readable by
machine. Making data FAIR is an interative process guided by the
priority of the RDA maturity indicators. Optimal level of FAIRness
should be determined by understanding the requirements of the community
(rather than perfection\!). Here we we are going to show what is
possible using the current FHIR standards, how these can bring unique
and greatest value and how FHIR-based solutions compare to alternative
technical options for FAIR Implementation.

### NinFEA: FHIR enabled FAIR improvements

Taking a curator approach, we looked more closely at the features that
would improve FAIR implementation even further for this NInFEA dataset.
Notably, significant effort has been invested on preparing the data set.
What FAIR improvents could be made by utilisation of the FHIR standards?
Can the metadata be enhanced in a FAIR manner at the study and patient
levels?

Several observations were made during the initial FAIR assessment:

1.  The metadata provided for the data set can be further extended, by
    harnessing the full text of the open source paper
    (<https://doi.org/10.1038/s41597-021-00811-3>).

2.  Richer metadata would facilitate future reuse of the dataset to
    maximise it's value which is the major motivation for making data
    FAIR.

3.  What brings unique and greatest value for enriching the metadata
    using the HL7 FHIR standards? How can FHIR enhancement to make the
    metadata more FAIR be scaled through automation?

4.  Developing FHIR resources and storing the data set in a FHIR server
    would allow easier access to more researchers, further pushing the
    envelope for interoperability, going beyond Physionet.

5.  Information on data provenance and licence would be included in the
    metadata with a machine readable header on the FHIR server.

6.  Publishing the structure and elements of the data and metadata
    provides richer support for the work done, therby building best
    practices.

Overall, the purpose of application for the dataset should drive finding
the optimal balance between acceptable cost and richness of metadata. We
have started this from the study level, provided already by Physionet
and enriched further from the full text paper, which is an open source
publication. We will explore the library FHIR resource
(<https://www.hl7.org/fhir/library.html>) to follow-up on the intial
FAIR assessment, as noted in the list of observations. Other technical
options using the FHIR standards will be considered and explored as
well.
