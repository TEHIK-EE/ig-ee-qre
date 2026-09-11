# Patsiendi elulõpu tahteavaldus - Küsimustike teenus v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patsiendi elulõpu tahteavaldus**

## Questionnaire: Patsiendi elulõpu tahteavaldus 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/qre/Questionnaire-AHD | *Version*:1.0.0 |
| Active as of 2023-12-12 | *Computable Name*:PET |



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "Questionnaire-PET",
  "meta" : {
    "profile" : ["https://fhir.ee/qre/StructureDefinition/pet-questionnaire"]
  },
  "language" : "et",
  "url" : "https://fhir.ee/qre/Questionnaire-AHD",
  "version" : "1.0.0",
  "name" : "PET",
  "title" : "Patsiendi elulõpu tahteavaldus",
  "status" : "active",
  "subjectType" : ["Patient"],
  "date" : "2023-12-12",
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
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "EST",
      "display" : "Estonia"
    }]
  }],
  "approvalDate" : "2024-01-01",
  "effectivePeriod" : {
    "start" : "2024-03-16"
  },
  "code" : [{
    "system" : "https://fhir.ee/CodeSystem/dokumendi-tyyp",
    "code" : "18",
    "display" : "tahteavaldused"
  }],
  "item" : [{
    "linkId" : "pet-indication",
    "code" : [{
      "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
      "code" : "pet-indication",
      "display" : "Soovin, et minu tahteavaldus rakenduks ühe järgmise valikuga"
    }],
    "text" : "Soovin, et minu tahteavaldus rakenduks ühe järgmise valikuga",
    "type" : "coding",
    "required" : true,
    "repeats" : false,
    "readOnly" : false,
    "answerValueSet" : "https://fhir.ee/qre/ValueSet/pet-indication-vs"
  },
  {
    "linkId" : "pet-indication-first",
    "code" : [{
      "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
      "code" : "pet-indication-first-choice",
      "display" : "Elu säilitavast ravist keeldumine, kui selle tulemus on mulle vastuvõetamatu"
    }],
    "text" : "Elu säilitavast ravist keeldumine, kui selle tulemus on mulle vastuvõetamatu",
    "type" : "group",
    "enableWhen" : [{
      "question" : "pet-indication",
      "operator" : "=",
      "answerCoding" : {
        "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
        "code" : "pet-indication-first-choice"
      }
    }],
    "required" : false,
    "repeats" : false,
    "item" : [{
      "linkId" : "pet-indication-first.unacceptable-condition",
      "code" : [{
        "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
        "code" : "life-quality-is-unacceptable",
        "display" : "Minu seisund muutub mulle vastuvõetamatuks, kui"
      }],
      "text" : "Minu seisund muutub mulle vastuvõetamatuks, kui",
      "type" : "coding",
      "required" : true,
      "repeats" : true,
      "readOnly" : false,
      "answerValueSet" : "https://fhir.ee/ValueSet/vastuvoetamatud-seisundid"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minLength",
        "valueInteger" : 4
      }],
      "linkId" : "pet-indication-first.unacceptable-condition.other",
      "code" : [{
        "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
        "code" : "other",
        "display" : "Muu"
      }],
      "text" : "Muu",
      "type" : "text",
      "enableWhen" : [{
        "question" : "pet-indication-first.unacceptable-condition",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir.ee/CodeSystem/vastuvoetamatud-seisundid",
          "code" : "34"
        }
      }],
      "required" : true,
      "repeats" : false,
      "readOnly" : false
    },
    {
      "linkId" : "pet-indication-first.other",
      "code" : [{
        "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
        "code" : "wish-to-add",
        "display" : "Soovin veel lisada"
      }],
      "text" : "Soovin veel lisada",
      "type" : "text",
      "required" : false,
      "repeats" : false,
      "readOnly" : false
    },
    {
      "linkId" : "pet-indication-first.unacceptable-treatment",
      "code" : [{
        "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
        "code" : "pet-indication-first-choice-condition",
        "display" : "Kui mulle vastuvõetava seisundi saavutamine minu elu säilitamisega ei ole võimalik, siis"
      }],
      "text" : "Kui mulle vastuvõetava seisundi saavutamine minu elu säilitamisega ei ole võimalik, siis",
      "type" : "coding",
      "required" : true,
      "repeats" : false,
      "readOnly" : false,
      "answerValueSet" : "https://fhir.ee/qre/ValueSet/pet-all-or-some-refusal-of-treatment-vs",
      "item" : [{
        "linkId" : "pet-indication-first.unacceptable-treatment.list",
        "code" : [{
          "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
          "code" : "these-life-sustaining-treatments",
          "display" : "Ei soovi ma järgmisi elu säilitavaid sekkumisi"
        }],
        "text" : "Ei soovi ma järgmisi elu säilitavaid sekkumisi",
        "type" : "coding",
        "enableWhen" : [{
          "question" : "pet-indication-first.unacceptable-treatment",
          "operator" : "=",
          "answerCoding" : {
            "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
            "code" : "these-life-sustaining-treatments"
          }
        }],
        "required" : true,
        "repeats" : true,
        "readOnly" : false,
        "answerValueSet" : "https://fhir.ee/ValueSet/elusailitavad-sekkumised"
      }]
    }]
  },
  {
    "linkId" : "pet-indication-second",
    "code" : [{
      "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
      "code" : "pet-indication-second-choice",
      "display" : "Elu säilitavast ravist keeldumine sõltumata ravitulemusest"
    }],
    "text" : "Elu säilitavast ravist keeldumine sõltumata ravitulemusest",
    "type" : "group",
    "enableWhen" : [{
      "question" : "pet-indication",
      "operator" : "=",
      "answerCoding" : {
        "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
        "code" : "pet-indication-second-choice"
      }
    }],
    "required" : false,
    "repeats" : false,
    "item" : [{
      "linkId" : "pet-indication-second.unacceptable-treatment",
      "code" : [{
        "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
        "code" : "pet-indication-second-choice-condition",
        "display" : "Kui minu terviseseisund halveneb nii, et ellu jäämine ilma elu säilitava ravita ei ole võimalik, siis"
      }],
      "text" : "Kui minu terviseseisund halveneb nii, et ellu jäämine ilma elu säilitava ravita ei ole võimalik, siis",
      "type" : "coding",
      "required" : true,
      "repeats" : false,
      "readOnly" : false,
      "answerValueSet" : "https://fhir.ee/qre/ValueSet/pet-all-or-some-refusal-of-treatment-vs",
      "item" : [{
        "linkId" : "pet-indication-second.unacceptable-treatment.list",
        "code" : [{
          "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
          "code" : "these-life-sustaining-treatments",
          "display" : "Ei soovi ma järgmisi elu säilitavaid sekkumisi"
        }],
        "text" : "Ei soovi ma järgmisi elu säilitavaid sekkumisi",
        "type" : "coding",
        "enableWhen" : [{
          "question" : "pet-indication-second.unacceptable-treatment",
          "operator" : "=",
          "answerCoding" : {
            "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
            "code" : "these-life-sustaining-treatments"
          }
        }],
        "required" : true,
        "repeats" : true,
        "readOnly" : false,
        "answerValueSet" : "https://fhir.ee/ValueSet/elusailitavad-sekkumised"
      }]
    },
    {
      "linkId" : "pet-indication-second.other",
      "code" : [{
        "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
        "code" : "wish-to-add",
        "display" : "Soovin veel lisada"
      }],
      "text" : "Soovin veel lisada",
      "type" : "text",
      "required" : false,
      "repeats" : false,
      "readOnly" : false
    }]
  },
  {
    "linkId" : "pet-indication-third",
    "code" : [{
      "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
      "code" : "pet-indication-third-choice",
      "display" : "Kõigist ravisekkumistest keeldumine"
    }],
    "text" : "Kõigist ravisekkumistest keeldumine",
    "type" : "group",
    "enableWhen" : [{
      "question" : "pet-indication",
      "operator" : "=",
      "answerCoding" : {
        "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
        "code" : "pet-indication-third-choice"
      }
    }],
    "required" : false,
    "repeats" : false,
    "item" : [{
      "linkId" : "pet-indication-third.unacceptable-treatment",
      "code" : [{
        "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
        "code" : "pet-indication-third-choice-condition",
        "display" : "Kui ma olen haigestunud, siis"
      }],
      "text" : "Kui ma olen haigestunud, siis",
      "type" : "coding",
      "required" : true,
      "repeats" : false,
      "readOnly" : false,
      "answerValueSet" : "https://fhir.ee/qre/ValueSet/pet-all-intervention-refusal-vs"
    },
    {
      "linkId" : "pet-indication-third.other",
      "code" : [{
        "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
        "code" : "wish-to-add",
        "display" : "Soovin veel lisada"
      }],
      "text" : "Soovin veel lisada",
      "type" : "text",
      "required" : false,
      "repeats" : false,
      "readOnly" : false
    }]
  },
  {
    "linkId" : "palliative-treatment",
    "code" : [{
      "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
      "code" : "accept-palliative-care",
      "display" : "Soovin palliatiivravi"
    }],
    "text" : "Soovin palliatiivravi",
    "type" : "coding",
    "required" : true,
    "repeats" : false,
    "readOnly" : false,
    "answerValueSet" : "https://fhir.ee/qre/ValueSet/pet-palliative-care-fully-or-not-vs",
    "item" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minLength",
        "valueInteger" : 4
      }],
      "linkId" : "palliative-treatment.treatments",
      "code" : [{
        "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
        "code" : "refuse-specified-treatments",
        "display" : "Ei soovi selliseid sekkumisi"
      }],
      "text" : "Ei soovi selliseid sekkumisi",
      "type" : "text",
      "enableWhen" : [{
        "question" : "palliative-treatment",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
          "code" : "refuse-specified-treatments"
        }
      }],
      "enableBehavior" : "any",
      "required" : true,
      "repeats" : false,
      "readOnly" : false
    }]
  },
  {
    "linkId" : "preferred-death-location",
    "code" : [{
      "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
      "code" : "death-location-wish",
      "display" : "Minu eelistatud suremispaik on"
    }],
    "text" : "Minu eelistatud suremispaik on",
    "type" : "coding",
    "required" : false,
    "repeats" : false,
    "readOnly" : false,
    "answerValueSet" : "https://fhir.ee/ValueSet/eelistatud-suremispaik",
    "item" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minLength",
        "valueInteger" : 4
      }],
      "linkId" : "preferred-death-location.other",
      "code" : [{
        "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
        "code" : "specify",
        "display" : "Täpsustus"
      }],
      "text" : "Täpsustus",
      "type" : "text",
      "enableWhen" : [{
        "question" : "preferred-death-location",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir.ee/CodeSystem/suremispaik",
          "code" : "99"
        }
      }],
      "enableBehavior" : "any",
      "required" : true,
      "repeats" : false,
      "readOnly" : false
    }]
  },
  {
    "linkId" : "people-by-side-death",
    "code" : [{
      "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
      "code" : "people-beside-death-bed",
      "display" : "Ma soovin, et minu suremise juures viibivad järgmised inimesed"
    }],
    "text" : "Ma soovin, et minu suremise juures viibivad järgmised inimesed",
    "type" : "text",
    "required" : false,
    "repeats" : false,
    "readOnly" : false
  },
  {
    "linkId" : "religious-preferences",
    "code" : [{
      "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
      "code" : "religious-preferences",
      "display" : "Minu religioossed või muud spirituaalsed eelistused"
    }],
    "text" : "Minu religioossed või muud spirituaalsed eelistused",
    "type" : "text",
    "required" : false,
    "repeats" : false,
    "readOnly" : false
  },
  {
    "linkId" : "actions-after-death",
    "code" : [{
      "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
      "code" : "burial-wish",
      "display" : "Minu matmisviisi eelistus on"
    }],
    "text" : "Minu matmisviisi eelistus on",
    "type" : "coding",
    "required" : false,
    "readOnly" : false,
    "answerValueSet" : "https://fhir.ee/ValueSet/eelistatud-matmisviis",
    "item" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minLength",
        "valueInteger" : 4
      }],
      "linkId" : "actions-after-death.other",
      "code" : [{
        "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
        "code" : "specify",
        "display" : "Täpsustus"
      }],
      "text" : "Täpsustus",
      "type" : "text",
      "enableWhen" : [{
        "question" : "actions-after-death",
        "operator" : "=",
        "answerCoding" : {
          "system" : "https://fhir.ee/CodeSystem/eelistatud-matmisviis",
          "code" : "33"
        }
      }],
      "required" : false,
      "repeats" : false,
      "readOnly" : false
    }]
  },
  {
    "linkId" : "other-wishes",
    "code" : [{
      "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
      "code" : "other-wishes",
      "display" : "Muud olulised soovid"
    }],
    "text" : "Muud olulised soovid",
    "type" : "text",
    "required" : false,
    "readOnly" : false
  },
  {
    "linkId" : "confirmation",
    "code" : [{
      "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
      "code" : "confirmation",
      "display" : "Kinnitan, et"
    }],
    "text" : "Kinnitan, et",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "confirmation.volition",
      "code" : [{
        "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
        "code" : "confirmation-volition",
        "display" : "Olen koostanud tahteavalduse vastavalt oma tahtele ja ilma välise surveta"
      }],
      "text" : "Olen koostanud tahteavalduse vastavalt oma tahtele ja ilma välise surveta",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "confirmation.understand-content",
      "code" : [{
        "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
        "code" : "confirmation-understand-content",
        "display" : "Mõistan selles tehtud otsuste sisu ja tähendust"
      }],
      "text" : "Mõistan selles tehtud otsuste sisu ja tähendust",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "confirmation.modification",
      "code" : [{
        "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
        "code" : "confirmation-modification",
        "display" : "Olen teadlik tahteavalduse muutmise ja tühistamise võimalusest"
      }],
      "text" : "Olen teadlik tahteavalduse muutmise ja tühistamise võimalusest",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "confirmation.sharing",
      "code" : [{
        "system" : "https://fhir.ee/CodeSystem/patsiendi-elulopu-tahteavalduse-kysimustik",
        "code" : "confirmation-sharing",
        "display" : "Olen teadlik, et mu lähedased võiksid teada tahteavalduse olemasolust"
      }],
      "text" : "Olen teadlik, et mu lähedased võiksid teada tahteavalduse olemasolust",
      "type" : "boolean",
      "required" : true
    }]
  }]
}

```
