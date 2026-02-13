# Sagedus ajas - Küsimustike teenus v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sagedus ajas**

## CodeSystem: Sagedus ajas 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/CodeSystem/sagedus-ajas | *Version*:1.0.0 |
| Draft as of 2026-02-13 | *Computable Name*:Sagedus_CS |

 
No actual CS in terminology server. Sageduse mõõtühikud UCUM notatsioonis 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Sagedus_VS](ValueSet-sagedus-ajas.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "sagedus-ajas",
  "url" : "https://fhir.ee/CodeSystem/sagedus-ajas",
  "version" : "1.0.0",
  "name" : "Sagedus_CS",
  "title" : "Sagedus ajas",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-02-13T11:20:43+00:00",
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
  "description" : "No actual CS in terminology server. Sageduse mõõtühikud UCUM notatsioonis",
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
  "content" : "fragment",
  "concept" : [
    {
      "code" : "/wk",
      "display" : "nädalas",
      "designation" : [
        {
          "language" : "en",
          "value" : "per week"
        },
        {
          "language" : "ru"
        }
      ]
    },
    {
      "code" : "/d",
      "display" : "päevas",
      "designation" : [
        {
          "language" : "en",
          "value" : "per day"
        },
        {
          "language" : "ru"
        }
      ]
    },
    {
      "code" : "/mo",
      "display" : "kuus",
      "designation" : [
        {
          "language" : "en",
          "value" : "per month"
        },
        {
          "language" : "ru"
        }
      ]
    }
  ]
}

```
