# Sagedus ajas loend - Küsimustike teenus v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sagedus ajas loend**

## ValueSet: Sagedus ajas loend 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/ValueSet/sagedus-ajas | *Version*:1.0.0 |
| Active as of 2026-02-13 | *Computable Name*:Sagedus_VS |

 
No actual VS in terminology server. Sageduse mõõtühikud UCUM notatsioonis 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R5/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "sagedus-ajas",
  "url" : "https://fhir.ee/ValueSet/sagedus-ajas",
  "version" : "1.0.0",
  "name" : "Sagedus_VS",
  "title" : "Sagedus ajas loend",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-02-13T11:19:48+00:00",
  "publisher" : "TEHIK",
  "contact" : [
    {
      "name" : "TEHIK",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://tehik.ee"
        },
        {
          "system" : "email",
          "value" : "abi@tehik.ee"
        }
      ]
    }
  ],
  "description" : "No actual VS in terminology server. Sageduse mõõtühikud UCUM notatsioonis",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "EST",
          "display" : "Estonia"
        }
      ]
    }
  ],
  "compose" : {
    "include" : [
      {
        "system" : "https://fhir.ee/CodeSystem/sagedus-ajas"
      }
    ]
  }
}

```
