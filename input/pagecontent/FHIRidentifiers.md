FHIR gives two ways to identify a resource:

  - By a "Location" URL that identifies where is can be accessed (based
    on the "Logical ID"). 

  - By some inherent identifier ("Business Identifier" or "Canonical
    URL")

see [<span class="underline">https://www.hl7.org/fhir/resource.html\#identification</span>](https://www.hl7.org/fhir/resource.html#identification) for
more details.

For supporting the FAIR principles, the identifier has to be globally
unique, persistent and machine resolvable.

This page summarizes under which conditions these identifiers fulfill
the FAIR principles for IDs.

<table style="border-color: #000000; width:80 1px solid gray;">
<thead>
<tr style="border: 1px solid gray; background-color: #E5E4E2;">
<th><strong>identifier</strong></th>
<th><strong>description</strong></th>
<th><strong>Global and Unique</strong></th>
<th><strong>Persistent</strong></th>
<th><strong>Resolvable by machine </strong></th>
<th><strong>Notes</strong></th>
</tr>
</thead>
<tbody>
<tr style="border: 1px solid gray; ">
<td>location URL based on the resource id ("logical id")</td>
<td><p>"Logical ID" &lt;id value="23"/&gt;</p>
<p><strong>PID</strong>: http://test.fhir.org/r4/Patient/23 </p></td>
<td><p>The FHIR standard</p>
<p>(1) requires the  logical ID is unique for a specific kind of resource in the server</p>
<p>(2) defines the rule for  building the 'location URL'</p>
<p>as concatenation of the server URL, kind of resource and logical id.</p>
<p>Since the server URL is globally unique also the location URL is globally unique</p></td>
<td><p>This is under the organization responsibility.</p>
<p>That is, the organization shall assure that the server end-point is 'always' resolvable. This may be done assuring that the end point doesn't change or by using proxy/redirect mechanisms.</p></td>
<td><p>In the FHIR REST paradigm this is true, that is the location URLs shall point to a <a href="https://www.hl7.org/fhir/http.html"><span class="underline">FHIR RESTful server</span></a>.</p>
<p>When FHIR resources are used within other paradigms, e.g. they are exchanged by using IHE XD*/XC* transaction or OMG RLUS services, this may not be true.</p></td>
<td><p>This resource identifier changes if the server end-point changes.</p>
<p>When an absolute URLs is used this shall point to a <a href="https://www.hl7.org/fhir/http.html">FHIR RESTful server</a></p>
<p>To facilitate redirect / proxy solutions use relative URL in the resource references.</p>
<p>PRO:</p>
<ul>
<li><p>the location URL can be used to access the resources via standard FHIR API (e.g. GET <a href="http://test.fhir.org/r4/Patient/23"><span class="underline">http://test.fhir.org/r4/Patient/23</span></a>  )</p></li>
<li><p>is the 'natural' way to uniquely identify resources in FHIR and no addition effort is required</p></li>
<li><p>applies to any FHIR resource</p></li>
<li><p>used to cross referencing FHIR resources (as absolute or relative URL)</p></li>
</ul>
<p>CONTRA:</p>
<ul>
<li><p>If the organization doesn't guarantee the persistency of the server end point the location URL is not persistent. (but this true for any registry of identifiers..)</p></li>
</ul></td>
</tr>
<tr style="border: 1px solid gray; ">
<td>business identifier</td>
<td><p>&lt;identifier&gt;</p>
<p>  &lt;system value="<a href="https://doi.org/"><span class="underline">https://doi.org</span></a>" /&gt;</p>
<p>  &lt;value value="10.5281/zenodo.4474373" /&gt;</p>
<p>&lt;/identifier&gt;</p>
<p>&lt;identifier&gt;</p>
<p>  &lt;system value="urn:ietf:rfc:3986" /&gt;</p>
<p>  &lt;value value="https://doi.org/10.5281/zenodo.4474373" /&gt;</p>
<p>&lt;/identifier&gt;</p>
<p><strong>PID</strong>: https://doi.org/10.5281/zenodo.4474373</p></td>
<td>This is under the id assigning authority responsibility</td>
<td>This is under the id assigning authority responsibility</td>
<td><p>If the requirement is that the  object identifier is an URL used to directly access the resource, then it is an assigning organization responsibility to assure that:</p>
<ul>
<li><p>that id is actually resolvable</p></li>
<li><p>a rule to build a machine resolvable URL from the namespace and the identifier is agreed.</p></li>
<li><p>the system and value shall have a format such that the applied rule generate a valid URL </p></li>
</ul></td>
<td><p>The business identifier chosen shall be unique and global.</p>
<p>A business identifier is recorded in a FHIR resource using the Identifier type, which holds both the namespace (using Identifier.system) and the identifier itself (using Identifier.value).</p>
<p>If the identifier is itself an url, then the value of the system can be set to "urn:ietf:rfc:3986", otherwise a community rule to build an URL from the namespace and the identifier used as object identifier should be agreed. For example the url  can be constructed using a concatenation of the system and value fields of the identifier and that might be be used as GUPRI for the resource (for example: <a href="http://a.particular.system/identifier/123456"><span class="underline">http://a.particular.system/identifier/123456</span></a>). It is up to the implementer to make sure that there are indeed systems and policies to govern this namespace.</p>
<p>Finally, it's worth to remind that FHIR provide a standard search syntax to access a resource by using its business identifier [base]/[resource]?identifier=$system|$value).</p>
<p>PRO:</p>
<p>if a registry of permanent and resolvable identifiers is provided all the three properties are assured (e.g. <a href="https://doi.org/"><span class="underline">https://doi.org</span></a>)</p>
<p>CONTRA:</p>
<p>maintenance cost of such a kind of global registry. This includes also the registration process of the large number of FHIR resources a server needs to deal with ...</p>
<p>a call as GET https://$system/$value is not a FHIR API call</p></td>
</tr>
<tr style="border: 1px solid gray; ">
<td>canonical url</td>
<td>&lt;valueSet value="http://hl7.org/fhir/ValueSet/my-valueset"/&gt;<br />
<br />
<strong>PID</strong>: http://hl7.org/fhir/ValueSet/my-valueset</td>
<td>Per the FHIR standard the canonical URL shall be global and unique. </td>
<td>Per the FHIR standard the canonical URL is persistent.</td>
<td>under the assigning organization responsibility</td>
<td><p>PRO:</p>
<p>persistency of the identifier </p>
<p>CONTRA:</p>
<p>The canonical URL is defined only for a subset of FHIR resources.</p>
<p>The resolution of the canonical URL into an actual accessible end-point is not guaranteed, unless a redirect/proxy solution is applied as for the point 1.</p></td>
</tr>
</tbody>
</table>

Notes:

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
