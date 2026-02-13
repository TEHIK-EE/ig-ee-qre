# EEHealthDeclarationQuestionnaire - Küsimustike teenus v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EEHealthDeclarationQuestionnaire**

## Resource Profile: EEHealthDeclarationQuestionnaire 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/qre/StructureDefinition/ee-health-declaration-questionnaire | *Version*:1.0.0 |
| Draft as of 2024-01-01 | *Computable Name*:EEHealthDeclarationQuestionnaire |

 
Tervisedeklaratsiooni küsimustiku profiil 

**Usages:**

* Examples for this Profile: [HDECL](Questionnaire-Questionnaire-health-declaration-cda.md), [HDECL](Questionnaire-Questionnaire-health-declaration-with-text.md) and [HDECL](Questionnaire-Questionnaire-health-declaration.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ee.fhir.qre|current/StructureDefinition/ee-health-declaration-questionnaire)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ee-health-declaration-questionnaire.csv), [Excel](StructureDefinition-ee-health-declaration-questionnaire.xlsx), [Schematron](StructureDefinition-ee-health-declaration-questionnaire.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ee-health-declaration-questionnaire",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-implements",
      "valueUri" : "http://hl7.org/fhir/StructureDefinition/MetadataResource"
    }
  ],
  "url" : "https://fhir.ee/qre/StructureDefinition/ee-health-declaration-questionnaire",
  "version" : "1.0.0",
  "name" : "EEHealthDeclarationQuestionnaire",
  "status" : "draft",
  "date" : "2024-01-01",
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
  "description" : "Tervisedeklaratsiooni küsimustiku profiil",
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
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "objimpl",
      "uri" : "http://hl7.org/fhir/object-implementation",
      "name" : "Object Implementation Information"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 V2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Questionnaire",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Questionnaire",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Questionnaire",
        "path" : "Questionnaire"
      },
      {
        "id" : "Questionnaire.contained",
        "path" : "Questionnaire.contained",
        "max" : "0"
      },
      {
        "id" : "Questionnaire.extension",
        "path" : "Questionnaire.extension",
        "max" : "0"
      },
      {
        "id" : "Questionnaire.modifierExtension",
        "path" : "Questionnaire.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "Questionnaire.url",
        "path" : "Questionnaire.url",
        "min" : 1
      },
      {
        "id" : "Questionnaire.identifier",
        "path" : "Questionnaire.identifier",
        "max" : "0"
      },
      {
        "id" : "Questionnaire.version",
        "path" : "Questionnaire.version",
        "min" : 1
      },
      {
        "id" : "Questionnaire.versionAlgorithm[x]",
        "path" : "Questionnaire.versionAlgorithm[x]",
        "max" : "0"
      },
      {
        "id" : "Questionnaire.name",
        "path" : "Questionnaire.name",
        "min" : 1,
        "patternString" : "HDECL"
      },
      {
        "id" : "Questionnaire.title",
        "path" : "Questionnaire.title",
        "min" : 1
      },
      {
        "id" : "Questionnaire.derivedFrom",
        "path" : "Questionnaire.derivedFrom",
        "max" : "0"
      },
      {
        "id" : "Questionnaire.experimental",
        "path" : "Questionnaire.experimental",
        "max" : "0"
      },
      {
        "id" : "Questionnaire.subjectType",
        "path" : "Questionnaire.subjectType",
        "min" : 1,
        "max" : "1",
        "patternCode" : "Patient"
      },
      {
        "id" : "Questionnaire.date",
        "path" : "Questionnaire.date",
        "min" : 1
      },
      {
        "id" : "Questionnaire.description",
        "path" : "Questionnaire.description",
        "max" : "0"
      },
      {
        "id" : "Questionnaire.useContext",
        "path" : "Questionnaire.useContext",
        "max" : "0"
      },
      {
        "id" : "Questionnaire.purpose",
        "path" : "Questionnaire.purpose",
        "max" : "0"
      },
      {
        "id" : "Questionnaire.copyright",
        "path" : "Questionnaire.copyright",
        "max" : "0"
      },
      {
        "id" : "Questionnaire.copyrightLabel",
        "path" : "Questionnaire.copyrightLabel",
        "max" : "0"
      },
      {
        "id" : "Questionnaire.lastReviewDate",
        "path" : "Questionnaire.lastReviewDate",
        "max" : "0"
      },
      {
        "id" : "Questionnaire.effectivePeriod.start",
        "path" : "Questionnaire.effectivePeriod.start",
        "min" : 1
      },
      {
        "id" : "Questionnaire.code.system",
        "path" : "Questionnaire.code.system",
        "patternUri" : "http://fhir.ee/CodeSystem/kysimustikud"
      },
      {
        "id" : "Questionnaire.code.code",
        "path" : "Questionnaire.code.code",
        "patternCode" : "156871000181103"
      },
      {
        "id" : "Questionnaire.code.display",
        "path" : "Questionnaire.code.display",
        "patternString" : "Tervisedeklaratsiooni küsimustik"
      },
      {
        "id" : "Questionnaire.item",
        "path" : "Questionnaire.item",
        "min" : 1
      },
      {
        "id" : "Questionnaire.item.id",
        "path" : "Questionnaire.item.id",
        "max" : "0"
      },
      {
        "id" : "Questionnaire.item.modifierExtension",
        "path" : "Questionnaire.item.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "Questionnaire.item.definition",
        "path" : "Questionnaire.item.definition",
        "max" : "0"
      },
      {
        "id" : "Questionnaire.item.enableWhen.id",
        "path" : "Questionnaire.item.enableWhen.id",
        "max" : "0"
      },
      {
        "id" : "Questionnaire.item.enableWhen.extension",
        "path" : "Questionnaire.item.enableWhen.extension",
        "max" : "0"
      },
      {
        "id" : "Questionnaire.item.enableWhen.modifierExtension",
        "path" : "Questionnaire.item.enableWhen.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "Questionnaire.item.required",
        "path" : "Questionnaire.item.required",
        "min" : 1
      },
      {
        "id" : "Questionnaire.item.answerOption.id",
        "path" : "Questionnaire.item.answerOption.id",
        "max" : "0"
      },
      {
        "id" : "Questionnaire.item.answerOption.extension",
        "path" : "Questionnaire.item.answerOption.extension",
        "max" : "0"
      },
      {
        "id" : "Questionnaire.item.answerOption.modifierExtension",
        "path" : "Questionnaire.item.answerOption.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "Questionnaire.item.answerOption.initialSelected",
        "path" : "Questionnaire.item.answerOption.initialSelected",
        "max" : "0"
      },
      {
        "id" : "Questionnaire.item.initial",
        "path" : "Questionnaire.item.initial",
        "max" : "0"
      }
    ]
  }
}

```
