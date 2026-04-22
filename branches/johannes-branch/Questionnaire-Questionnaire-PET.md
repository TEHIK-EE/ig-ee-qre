# Patsiendi elulõpu tahteavaldus - Küsimustike teenus v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patsiendi elulõpu tahteavaldus**

## Questionnaire: Patsiendi elulõpu tahteavaldus 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/qre/Questionnaire-PET | *Version*:1.0.0 |
| Active as of 2023-12-12 | *Computable Name*:PET |



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "Questionnaire-PET",
  "meta" : {
    "profile" : ["https://fhir.ee/qre/StructureDefinition/pet-questionnaire"]
  },
  "url" : "https://fhir.ee/qre/Questionnaire-PET",
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
    "system" : "http://fhir.ee/CodeSystem/dokumendi-tyyp",
    "code" : "18",
    "display" : "Tahteavaldused"
  }],
  "item" : [{
    "linkId" : "pet-indication-first",
    "code" : [{
      "system" : "https://fhir.ee/CodeSystem/pet-kysimustik",
      "code" : "pet-indication-first-choice",
      "display" : "Elu säilitamisest keeldumine, kui selle tulemus on sulle vastuvõetamatu"
    }],
    "text" : "Elu säilitamisest keeldumine, kui selle tulemus on sulle vastuvõetamatu",
    "type" : "group",
    "required" : false,
    "repeats" : false,
    "readOnly" : true,
    "item" : [{
      "linkId" : "pet-indication-first.unacceptable-treatment",
      "code" : [{
        "system" : "https://fhir.ee/CodeSystem/pet-kysimustik",
        "code" : "pet-indication-first-choice-condition",
        "display" : "Kui mulle vastuvõetava seisundi saavutamine minu elu säilitamisega ei ole võimalik, siis"
      }],
      "text" : "Kui mulle vastuvõetava seisundi saavutamine minu elu säilitamisega ei ole võimalik, siis",
      "type" : "coding",
      "required" : false,
      "repeats" : false,
      "readOnly" : false,
      "answerOption" : [{
        "valueCoding" : {
          "display" : "ei soovi ma ühtegi elu säilitavat sekkumist"
        }
      },
      {
        "valueCoding" : {
          "display" : "ei soovi ma järgmisi elu säilitavaid sekkumisi"
        }
      }],
      "item" : [{
        "linkId" : "pet-indication-first.unacceptable-treatment.list",
        "code" : [{
          "system" : "https://fhir.ee/CodeSystem/pet-kysimustik",
          "code" : "these-life-sustaining-treatments",
          "display" : "ei soovi ma järgmisi elu säilitavaid sekkumisi"
        }],
        "text" : "ei soovi ma järgmisi elu säilitavaid sekkumisi",
        "type" : "coding",
        "enableWhen" : [{
          "question" : "pet-indication-first.unacceptable-treatment",
          "operator" : "=",
          "answerCoding" : {
            "display" : "ei soovi ma järgmisi elu säilitavaid sekkumisi"
          }
        }],
        "required" : true,
        "repeats" : true,
        "readOnly" : false,
        "answerValueSet" : "https://fhir.ee/ValueSet/elusailitavad-sekkumised"
      }]
    },
    {
      "linkId" : "pet-indication-first.unacceptable-condition",
      "code" : [{
        "system" : "https://fhir.ee/CodeSystem/pet-kysimustik",
        "code" : "life-quality-is-unacceptable",
        "display" : "Minu seisund muutub mulle vastuvõetamatuks, kui (vali üks või mitu):"
      }],
      "text" : "Minu seisund muutub mulle vastuvõetamatuks, kui (vali üks või mitu):",
      "type" : "coding",
      "required" : false,
      "repeats" : true,
      "readOnly" : false,
      "answerValueSet" : "https://fhir.ee/ValueSet/vastuvoetamatud-seisundid",
      "item" : [{
        "linkId" : "pet-indication-first.unacceptable-condition.other",
        "code" : [{
          "system" : "https://fhir.ee/CodeSystem/pet-kysimustik",
          "code" : "other",
          "display" : "Muu"
        }],
        "text" : "Muu",
        "type" : "text",
        "enableWhen" : [{
          "question" : "pet-indication.first-choice.unacceptable-condition",
          "operator" : "=",
          "answerCoding" : {
            "display" : "muu"
          }
        }],
        "required" : true,
        "repeats" : false,
        "readOnly" : false
      }]
    },
    {
      "linkId" : "pet-indication-first.other",
      "code" : [{
        "system" : "https://fhir.ee/CodeSystem/pet-kysimustik",
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
    "linkId" : "pet-indication-second",
    "code" : [{
      "system" : "https://fhir.ee/CodeSystem/pet-kysimustik",
      "code" : "pet-indication-second-choice",
      "display" : "Elu säilitamisest keeldumine sõltumata ravitulemustest"
    }],
    "text" : "Elu säilitamisest keeldumine sõltumata ravitulemustest",
    "type" : "group",
    "required" : false,
    "repeats" : false,
    "readOnly" : true,
    "item" : [{
      "linkId" : "pet-indication-second.unacceptable-treatment",
      "code" : [{
        "system" : "https://fhir.ee/CodeSystem/pet-kysimustik",
        "code" : "pet-indication-second-choice-condition",
        "display" : "Kui minu terviseseisund halveneb nii, et ellu jäämine ilma elu säilitava ravita ei ole võimalik, siis (vali üks)"
      }],
      "text" : "Kui minu terviseseisund halveneb nii, et ellu jäämine ilma elu säilitava ravita ei ole võimalik, siis (vali üks)",
      "type" : "coding",
      "required" : false,
      "repeats" : false,
      "readOnly" : false,
      "answerOption" : [{
        "valueCoding" : {
          "display" : "ei soovi ma ühtegi elu säilitavat sekkumist"
        }
      },
      {
        "valueCoding" : {
          "display" : "ei soovi ma järgmisi elu säilitavaid sekkumisi"
        }
      }],
      "item" : [{
        "linkId" : "pet-indication-second.unacceptable-treatment.list",
        "code" : [{
          "system" : "https://fhir.ee/CodeSystem/pet-kysimustik",
          "code" : "these-life-sustaining-treatments",
          "display" : "ei soovi ma järgmisi elu säilitavaid sekkumisi"
        }],
        "text" : "ei soovi ma järgmisi elu säilitavaid sekkumisi",
        "type" : "coding",
        "enableWhen" : [{
          "question" : "pet-indication-second.unacceptable-treatment",
          "operator" : "=",
          "answerCoding" : {
            "display" : "ei soovi ma järgmisi elu säilitavaid sekkumisi"
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
        "system" : "https://fhir.ee/CodeSystem/pet-kysimustik",
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
      "system" : "https://fhir.ee/CodeSystem/pet-kysimustik",
      "code" : "pet-indication-third-choice",
      "display" : "kõigist ravisekkumistest keeldumine"
    }],
    "text" : "kõigist ravisekkumistest keeldumine",
    "type" : "group",
    "required" : false,
    "repeats" : false,
    "readOnly" : true,
    "item" : [{
      "linkId" : "pet-indication-third.unacceptable-treatment",
      "code" : [{
        "system" : "https://fhir.ee/CodeSystem/pet-kysimustik",
        "code" : "pet-indication-third-choice-condition",
        "display" : "Kui ma olen haigestunud, siis (vali üks)"
      }],
      "text" : "Kui ma olen haigestunud, siis (vali üks)",
      "type" : "coding",
      "required" : false,
      "repeats" : false,
      "readOnly" : false,
      "answerOption" : [{
        "valueCoding" : {
          "display" : "ei soovi ma mitte ühtegi haigusest paranemisele suunatud meditsiinilist sekkumistega elu säilitavat sekkumist"
        }
      },
      {
        "valueCoding" : {
          "display" : "ei soovi ma mitte ühtegi haigusest paranemisele suunatud meditsiinilist sekkumistega elu säilitavat sekkumist, välja arvatud palliatiivravi sekkumised"
        }
      }]
    },
    {
      "linkId" : "pet-indication-third.other",
      "code" : [{
        "system" : "https://fhir.ee/CodeSystem/pet-kysimustik",
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
      "system" : "https://fhir.ee/CodeSystem/pet-kysimustik",
      "code" : "accept-palliative-care",
      "display" : "Soovin palliatiivravi (vali üks)"
    }],
    "text" : "Soovin palliatiivravi (vali üks)",
    "type" : "coding",
    "required" : true,
    "repeats" : false,
    "readOnly" : false,
    "answerOption" : [{
      "valueCoding" : {
        "display" : "täies mahus"
      }
    },
    {
      "valueCoding" : {
        "display" : "ei soovi selliseid sekkumisi [kirjelda ise]"
      }
    }],
    "item" : [{
      "linkId" : "palliative-treatment.treatments",
      "code" : [{
        "system" : "https://fhir.ee/CodeSystem/pet-kysimustik",
        "code" : "refuse-specified-treatments",
        "display" : "ei soovi selliseid sekkumisi [kirjelda ise]"
      }],
      "text" : "ei soovi selliseid sekkumisi [kirjelda ise]",
      "type" : "text",
      "enableWhen" : [{
        "question" : "palliative-treatment",
        "operator" : "=",
        "answerCoding" : {
          "display" : "ei soovi selliseid sekkumisi [kirjelda ise]"
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
      "system" : "https://fhir.ee/CodeSystem/pet-kysimustik",
      "code" : "death-location-wish",
      "display" : "Ma eelistan surra"
    }],
    "text" : "Ma eelistan surra",
    "type" : "coding",
    "required" : false,
    "repeats" : false,
    "readOnly" : false,
    "answerValueSet" : "https://fhir.ee/ValueSet/eelistatud-suremispaik",
    "item" : [{
      "linkId" : "preferred-death-location.other",
      "code" : [{
        "system" : "https://fhir.ee/CodeSystem/pet-kysimustik",
        "code" : "specify",
        "display" : "Täpsutus"
      }],
      "text" : "Täpsutus",
      "type" : "text",
      "enableWhen" : [{
        "question" : "preferred-death-location",
        "operator" : "=",
        "answerCoding" : {
          "display" : "muu"
        }
      }],
      "enableBehavior" : "any",
      "required" : true,
      "repeats" : false,
      "readOnly" : false
    }]
  },
  {
    "linkId" : "People-by-side-death",
    "code" : [{
      "system" : "https://fhir.ee/CodeSystem/pet-kysimustik",
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
      "system" : "https://fhir.ee/CodeSystem/pet-kysimustik",
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
      "system" : "https://fhir.ee/CodeSystem/pet-kysimustik",
      "code" : "burial-wish",
      "display" : "Minu matmisviisi eelistus on"
    }],
    "text" : "Minu matmisviisi eelistus",
    "type" : "coding",
    "required" : false,
    "readOnly" : false,
    "answerValueSet" : "https://fhir.ee/ValueSet/eelistatud-matmisviis",
    "item" : [{
      "linkId" : "actions-after-death.other",
      "code" : [{
        "system" : "https://fhir.ee/CodeSystem/pet-kysimustik",
        "code" : "specify",
        "display" : "Täpsutus"
      }],
      "text" : "Täpsutus",
      "type" : "text",
      "enableWhen" : [{
        "question" : "actions-after-death",
        "operator" : "=",
        "answerCoding" : {
          "display" : "muu"
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
      "system" : "https://fhir.ee/CodeSystem/pet-kysimustik",
      "code" : "other-wishes",
      "display" : "Muud olulised soovid"
    }],
    "text" : "Muud olulised soovid",
    "type" : "text",
    "required" : false,
    "readOnly" : false
  }]
}

```
