# Kõigist ravisekkumistest keeldumise ulatus - Küsimustike teenus v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Kõigist ravisekkumistest keeldumise ulatus**

## ValueSet: Kõigist ravisekkumistest keeldumise ulatus 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/qre/ValueSet/pet-all-intervention-refusal-vs | *Version*:1.0.0 |
| Active as of 2026-09-11 | *Computable Name*:PETAllInterventionRefusalVS |

 
Alamhulk mõisteid PET küsimustiku koodisüsteemist, millega inimenekinnitab kolmanda valiku (patsient soovib loobuda kõikidest ravisekkumistest). 

 **References** 

* [Patsiendi elulõpu tahteavaldus](Questionnaire-Questionnaire-PET.md)

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
  "id" : "pet-all-intervention-refusal-vs",
  "url" : "https://fhir.ee/qre/ValueSet/pet-all-intervention-refusal-vs",
  "version" : "1.0.0",
  "name" : "PETAllInterventionRefusalVS",
  "title" : "Kõigist ravisekkumistest keeldumise ulatus",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-11T12:41:58+00:00",
  "publisher" : "TEHIK",
  "contact" : [{
    "name" : "TEHIK",
    "telecom" : [{
      "system" : "url",
      "value" : "https://tehik.ee"
    },
    {
      "system" : "email",
      "value" : "abi@tehik.ee"
    }]
  }],
  "description" : "Alamhulk mõisteid PET küsimustiku koodisüsteemist, millega inimenekinnitab kolmanda valiku (patsient soovib loobuda kõikidest ravisekkumistest).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "EST",
      "display" : "Estonia"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
      "concept" : [{
        "code" : "no-life-sustaining-or-health-improving-treatments"
      }]
    }]
  }
}

```
