1.  **FAIRness** is an ongoing aspiration driven by application rather a
    pursuit of perfection for its own sake. Therefore, an **incremental
    approach** for **continuous improvement** should be followed.
    
    1.  Do not pretend to implement everything from the beginning i.e.
        Do not try to "boil the ocean"\!
        
        1.  in terms of principles to be realized
        
        2.  in terms of maturity level
        
        3.  in terms of coverage across communities. For example, a
            solution applicable within a well-defined community may not
            be fit for purpose for a wider target (e.g., global search)
    
    2.  You need to determine where you are with the selected data and
        metadata ("as is" FAIR assessment), what you want to achieve and
        the resources you have available.
    
    3.  Metrics, such as the [RDA FAIR data maturity
        indicators](RDAMetrics.html), are essential. These are used to
        evaluate improvements made in an iterative manner, to realize
        successful objectives.

2.  The **HL7 FHIR** standard is a widely recognized and used standard
    in the health space providing **value** in
    the **implementation** of **FAIR health data and services**
    
    1.  Even if HL7 FHIR can provide support to data FAIRification,
        implementing HL7 FHIR is not a sufficient requirement for being
        FAIR. This guide provides suggestions on how to use FHIR to
        improve FAIRness.
    
    2.  The HL7 FHIR standard provides its highest value in
        realizing **Interoperability** and Reusability principles.
        Hybrid solutions, i.e by using combined FHIR and non-FHIR
        technologies, can be used as well to realize the other FAIR
        principles.
    
    3.  This would not exclude the possibility to realize also
        Findability and Accessibility principles by using FHIR. However,
        a cost benefit evaluation, considering the level of adoption by
        that community, should be accomplished.

3.  As with the FAIR principles in general, the FHIR implementation of
    the FAIR principles should follow an **incremental approach.**
    
    1.  in this sense, depending on the context of usage, such as
        standards adopted by the community, the cost-effectiveness and
        the community goals, an **architectural migration path with a
        consistent set of intermediate objectives should be defined**.
        Objectives might be related to:
        
        1.  the RDA indicators to be realized;
        
        2.  the maturity of their realization;
        
        3.  how much is realized by using HL7 FHIR.
    
    2.  A **minimal set of FAIR data maturity indicators should be
        prioritized** by local application or business needs. RDA has
        given an essential minimal set as part of their canonical
        specification. Some pragmatic considerations:
        
        1.  earliest progress is likely to be made with the principles
            for Findability, Accessibility and Reusability.
        
        2.  Much tougher and longer term is the implementation of
            Interoperability when data are not FHIR by design.
            Interoperability is one the strengths of the FHIR standard. 
        
        3.  FHIR provides a rich and expressive source of metadata
            elements which are critical for the implementation of
            Reusability. They also include metadata elements to describe
            data provenance and license for data usage.

4.  **FAIR / FHIR by design** is the future shape of success. In fact
    (a) it is hard to make data FAIR when "source" data are poor (even
    if potentially findable and accessible...) or not designed for that;
    (b) the FHIR conversion of data may be not easy or not sufficient if
    data have not been designed from the beginning for that purpose.
    Thus:
    
    1.  the availability of natively conformant FHIR data is an added
        value
    
    2.  the specification/adoption of FHIR profiles against which to
        assess can help in raising the quality and the FAIRness of data.

Please refer to the [HL7 FHIR and FAIR
principles](https://confluence.hl7.org/display/SOA/HL7+FHIR+and+FAIR+principles) and [HL7
FHIR and RDA FAIR Data Maturity
Indicators](https://confluence.hl7.org/display/SOA/HL7+FHIR+and+RDA+FAIR+Data+Maturity+Indicators) for
more details about the implementation of the FAIR principles and the RDA
indicators.
