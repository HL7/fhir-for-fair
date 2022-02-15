The FAIR principles require that "(Meta)data are assigned a Globally
Unique, Persistent and Resolvable Identifiers (GUPRIs). FHIR gives two
ways to identify a resource:

  - By a "Location" URL that identifies where is can be accessed (based
    on the "Logical ID"). 

  - By some inherent identifier ("Business Identifier" or "Canonical
    URL")

see [<span class="underline">https://www.hl7.org/fhir/resource.html\#identification</span>](https://www.hl7.org/fhir/resource.html#identification) for
more details.

Hereafter it is summarized how these HL7 FHIR identifiers fulfil the
characteristics required by the FAIR principles.

### Location URL based on the resource id ("logical id")

Examples: \<id value="23"/\> (Logical ID) //
<http://test.fhir.org/r4/Patient/23> (Location URL)

FAIR object ID: https://test.fhir.org/r4/Patient/23

<table style="border-color: #000000; width:80 1px solid gray;">
<thead>
<tr style="border: 1px solid gray; background-color: #E5E4E2;">
<th>Global and Unique</th>
<th>Persistent</th>
<th>Resolvable by machine </th>
</tr>
</thead>
<tbody>
<tr style="border: 1px solid gray; ">
<td><p>The FHIR standard</p>
<p>(1) requires the  logical ID is unique for a specific kind of resource in the server</p>
<p>(2) defines the rule for  building the 'location URL'</p>
<p>as concatenation of the server URL, kind of resource and logical id.</p>
<p>Since the server URL is globally unique also the location URL is globally unique</p></td>
<td><p>This is under the organization responsibility.</p>
<p>That is, the organization shall assure that the server end-point is 'always' resolvable. This may be done assuring that the end point doesn't change or by using proxy/redirect mechanisms.</p></td>
<td><p>In the FHIR REST paradigm this is true, that is the location URLs shall point to a <a href="https://www.hl7.org/fhir/http.html">FHIR RESTful server</a>.</p>
<p>When FHIR resources are used within other paradigms, e.g. they are exchanged by using IHE XD*/XC* transaction or OMG RLUS services, this may not be true.</p></td>
</tr>
</tbody>
</table>

#### Notes

This resource identifier changes if the server end-point changes.

When an absolute URLs is used this shall point to a [FHIR RESTful
server](https://www.hl7.org/fhir/http.html)

To facilitate redirect / proxy solutions use relative URL in the
resource references.

PRO:

  - the location URL can be used to access the resources via standard
    FHIR API (e.g. GET <http://test.fhir.org/r4/Patient/23>  )

  - is the 'natural' way to uniquely identify resources in FHIR and no
    addition effort is required

  - applies to any FHIR resource

  - used to cross referencing FHIR resources (as absolute or relative
    URL)

CONTRA:

If the organization doesn't guarantee the persistency of the server end
point the location URL is not persistent. (but this true for any
registry of identifiers..)

### Business identifier

**Examples:**

\<identifier\>

  \<system
value="[<span class="underline">https://doi.org</span>](https://doi.org/)"
/\>

  \<value value="10.5281/zenodo.4474373" /\>

\</identifier\>

\<identifier\>

  \<system value="urn:ietf:rfc:3986" /\>

  \<value value="https://doi.org/10.5281/zenodo.4474373" /\>

\</identifier\>

**FAIR object ID**: <https://doi.org/10.5281/zenodo.4474373>

<table style="border-color: #000000; width:80 1px solid gray;">
<thead>
<tr style="border: 1px solid gray; background-color: #E5E4E2;">
<th>Global and Unique</th>
<th>Persistent</th>
<th>Resolvable by machine </th>
</tr>
</thead>
<tbody>
<tr style="border: 1px solid gray; ">
<td>This is under the id assigning authority responsibility</td>
<td>This is under the id assigning authority responsibility</td>
<td><p>If the requirement is that the object identifier is an URL used to directly access the resource, then it is an assigning organization responsibility to assure that:</p>
<ul>
<li><p>that id is actually resolvable</p></li>
<li><p>a rule to build a machine resolvable URL from the namespace and the identifier is agreed.</p></li>
<li><p>the system and value shall have a format such that the applied rule generate a valid URL </p></li>
</ul></td>
</tr>
</tbody>
</table>

#### Notes

The business identifier chosen shall be unique and global.

A business identifier is recorded in a FHIR resource using the
Identifier type, which holds both the namespace (using
Identifier.system) and the identifier itself (using Identifier.value).

If the identifier is itself an url, then the value of the system can be
set to "urn:ietf:rfc:3986", otherwise a community rule to build an URL
from the namespace and the identifier used as object identifier should
be agreed. For example the url  can be constructed using a concatenation
of the system and value fields of the identifier and that might be be
used as GUPRI for the resource (for
example: [<span class="underline">http://a.particular.system/identifier/123456</span>](http://a.particular.system/identifier/123456)).
It is up to the implementer to make sure that there are indeed systems
and policies to govern this namespace.

Finally, it's worth to remind that FHIR provide a standard search syntax
to access a resource by using its business identifier
\[base\]/\[resource\]?identifier=$system|$value).

PRO:

  - if a registry of permanent and resolvable identifiers is provided
    all the three properties are assured
    (e.g. [<span class="underline">https://doi.org</span>](https://doi.org/))

CONTRA:

  - maintenance cost of such a kind of global registry. This includes
    also the registration process of the large number of FHIR resources
    a server needs to deal with ...

  - a call as GET https://$system/$value is not a FHIR API call

### Canonical url

**Example:** \<valueSet
value="http://hl7.org/fhir/ValueSet/my-valueset"/\>

**FAIR object ID**: <http://hl7.org/fhir/ValueSet/my-valueset>

<table style="border-color: #000000; width:80 1px solid gray;">
<thead>
<tr style="border: 1px solid gray; background-color: #E5E4E2;">
<th>Global and Unique</th>
<th>Persistent</th>
<th>Resolvable by machine </th>
</tr>
</thead>
<tbody>
<tr style="border: 1px solid gray; ">
<td>Per the FHIR standard the canonical URL shall be global and unique. </td>
<td>Per the FHIR standard the canonical URL is persistent.</td>
<td>under the assigning organization responsibility</td>
</tr>
</tbody>
</table>

#### Notes

PRO:

  - persistency of the identifier 

CONTRA:

  - The canonical URL is defined only for a subset of FHIR resources.

  - The resolution of the canonical URL into an actual accessible
    end-point is not guaranteed, unless a redirect/proxy solution is
    applied as for the point 1.

### Additional Notes

1.  In a FHIR environment, the first one is the easiest to implement 

2.  The three solutions are not mutually exclusive

3.  Depending on the context of use and on the kind of resource,
    different approaches can be followed

4.  The adopted FHIR profiles should enable any of these choices

5.  It should be recommended to include business identifiers that might
    facilitate the search and the access of these objects beyond FHIR.
    For example, FHIR resources representing the metadata of study level
    collection of data should include permanent identifiers (e.g.,
    DOIs).
