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
    "linkId" : "pet-indication",
    "text" : "Soovin, et minu tahteavaldus rakenduks järgmiselt:",
    "type" : "coding",
    "required" : true,
    "repeats" : false,
    "readOnly" : false,
    "answerOption" : [{
      "valueCoding" : {
        "display" : "Elu säilitamisest keeldumine, kui selle tulemus on sulle vastuvõetamatu"
      }
    },
    {
      "valueCoding" : {
        "display" : "Elu säilitamisest keeldumine sõltumata ravitulemustest"
      }
    },
    {
      "valueCoding" : {
        "display" : "Kõigist ravisekkumistest keeldumine"
      }
    }],
    "item" : [{
      "linkId" : "pet-indication.first-choice",
      "text" : "Kui mulle vastuvõetava seisundi saavutamine minu elu säilitamisega ei ole võimalik, siis",
      "type" : "coding",
      "enableWhen" : [{
        "question" : "pet-indication",
        "operator" : "=",
        "answerCoding" : {
          "display" : "Elu säilitamisest keeldumine, kui selle tulemus on sulle vastuvõetamatu"
        }
      }],
      "enableBehavior" : "any",
      "required" : true,
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
        "linkId" : "pet-indication.first-choice.unacceptable-condition",
        "text" : "Minu jaoks on elukvaliteet vastuvõetamatu, kui:",
        "type" : "coding",
        "enableWhen" : [{
          "question" : "pet-indication.first-choice",
          "operator" : "exists",
          "answerBoolean" : true
        }],
        "enableBehavior" : "any",
        "required" : true,
        "repeats" : true,
        "readOnly" : false,
        "answerOption" : [{
          "valueCoding" : {
            "display" : "Ma jään püsivalt teadvusetusse seisundisse ehk koomasse "
          }
        },
        {
          "valueCoding" : {
            "display" : "Minu vaimne võimekus halveneb pöördumatult, nii et ma ei ole suuteline oma seisundist aru saama, otsuseid tegema ega inimestega suhtlema"
          }
        },
        {
          "valueCoding" : {
            "display" : "Ma sõltun igapäevatoimingutes (nt söömine, joomine, enesehooldus, riietumine jm) täielikult teistest inimestest"
          }
        },
        {
          "valueCoding" : {
            "display" : "Muu…[vaba tekst]"
          }
        }],
        "item" : [{
          "linkId" : "pet-indication.first-choice.unacceptable-condition.other",
          "text" : "Muu",
          "type" : "text",
          "enableWhen" : [{
            "question" : "pet-indication.first-choice.unacceptable-condition",
            "operator" : "=",
            "answerCoding" : {
              "display" : "Muu…[vaba tekst]"
            }
          }],
          "enableBehavior" : "any",
          "required" : true,
          "repeats" : false,
          "readOnly" : false
        }]
      },
      {
        "linkId" : "pet-indication.first-choice.unacceptable-treatments",
        "text" : "Ma keeldun järgmistest meditsiinilistest sekkumistest:",
        "type" : "coding",
        "enableWhen" : [{
          "question" : "pet-indication.first-choice",
          "operator" : "=",
          "answerCoding" : {
            "display" : "ei soovi ma järgmisi elu säilitavaid sekkumisi"
          }
        }],
        "enableBehavior" : "any",
        "required" : true,
        "repeats" : true,
        "readOnly" : false,
        "answerOption" : [{
          "valueCoding" : {
            "display" : "elustamine kliinilisest surmast"
          }
        },
        {
          "valueCoding" : {
            "display" : "hingamisaparaadi kasutamine"
          }
        },
        {
          "valueCoding" : {
            "display" : "neeruasendusravi ehk dialüüs"
          }
        },
        {
          "valueCoding" : {
            "display" : "kunstlik toitmine ja kunstlik vedeliku manustamine"
          }
        },
        {
          "valueCoding" : {
            "display" : "intensiivraviosakonda paigutamine"
          }
        },
        {
          "valueCoding" : {
            "display" : "ravimite manustamine"
          }
        },
        {
          "valueCoding" : {
            "display" : "vere või verekomponentide manustamine"
          }
        },
        {
          "valueCoding" : {
            "display" : "kirurgiline ravi"
          }
        },
        {
          "valueCoding" : {
            "display" : "uuringud ja analüüsid"
          }
        }]
      }]
    },
    {
      "linkId" : "pet-indication.second-choice",
      "text" : "Kui minu terviseseisund halveneb nii, et ellu jäämine ilma elu säilitava ravita ei ole võimalik, siis (vali üks)",
      "type" : "coding",
      "enableWhen" : [{
        "question" : "pet-indication",
        "operator" : "=",
        "answerCoding" : {
          "display" : "elu säilitamisest keeldumine sõltumata ravitulemustest"
        }
      }],
      "enableBehavior" : "any",
      "required" : true,
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
        "linkId" : "pet-indication.second-choice.unacceptable-treatments",
        "text" : "Ma keeldun järgmistest meditsiinilistest sekkumistest:",
        "type" : "coding",
        "enableWhen" : [{
          "question" : "pet-indication.second-choice",
          "operator" : "=",
          "answerCoding" : {
            "display" : "ei soovi ma järgmisi elu säilitavaid sekkumisi"
          }
        }],
        "enableBehavior" : "any",
        "required" : true,
        "repeats" : true,
        "readOnly" : false,
        "answerOption" : [{
          "valueCoding" : {
            "display" : "elustamine kliinilisest surmast"
          }
        },
        {
          "valueCoding" : {
            "display" : "hingamisaparaadi kasutamine"
          }
        },
        {
          "valueCoding" : {
            "display" : "neeruasendusravi ehk dialüüs"
          }
        },
        {
          "valueCoding" : {
            "display" : "kunstlik toitmine ja kunstlik vedeliku manustamine"
          }
        },
        {
          "valueCoding" : {
            "display" : "intensiivraviosakonda paigutamine"
          }
        },
        {
          "valueCoding" : {
            "display" : "ravimite manustamine"
          }
        },
        {
          "valueCoding" : {
            "display" : "vere või verekomponentide manustamine"
          }
        },
        {
          "valueCoding" : {
            "display" : "kirurgiline ravi"
          }
        },
        {
          "valueCoding" : {
            "display" : "uuringud ja analüüsid"
          }
        }]
      }]
    },
    {
      "linkId" : "pet-indication.third-choice",
      "text" : "Kui ma olen haigestunud, siis (vali üks)",
      "type" : "coding",
      "enableWhen" : [{
        "question" : "pet-indication",
        "operator" : "=",
        "answerCoding" : {
          "display" : "kõigist ravisekkumistest keeldumine"
        }
      }],
      "enableBehavior" : "any",
      "required" : true,
      "repeats" : false,
      "readOnly" : false,
      "answerOption" : [{
        "valueCoding" : {
          "display" : "ei soovi ma mitte ühtegi haigusest paranemisele suunatud meditsiinilist sekkumist ega elu säilitavat sekkumist"
        }
      },
      {
        "valueCoding" : {
          "display" : "ei soovi ma mitte ühtegi haigusest paranemisele suunatud meditsiinilist sekkumist ega elu säilitavat sekkumist, välja arvatud palliatiivravi sekkumised"
        }
      }]
    },
    {
      "linkId" : "pet-indication.third-choice.other-wishes",
      "text" : "Soovin veel lisada",
      "type" : "text",
      "required" : false,
      "repeats" : false,
      "readOnly" : false
    }]
  },
  {
    "linkId" : "palliative-treatment",
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
      "text" : "Soovin vältida",
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
    "text" : "Ma eelistan surra",
    "type" : "coding",
    "required" : false,
    "repeats" : false,
    "readOnly" : false,
    "answerOption" : [{
      "valueCoding" : {
        "display" : "Haiglas"
      }
    },
    {
      "valueCoding" : {
        "display" : "Kodus"
      }
    },
    {
      "valueCoding" : {
        "display" : "Mujal"
      }
    }],
    "item" : [{
      "linkId" : "preferred-death-location.other",
      "text" : "Täpsutus",
      "type" : "text",
      "enableWhen" : [{
        "question" : "preferred-death-location",
        "operator" : "=",
        "answerCoding" : {
          "display" : "Mujal"
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
    "text" : "Ma soovin, et minu suremise juures viibivad järgmised inimesed",
    "type" : "text",
    "required" : false,
    "repeats" : false,
    "readOnly" : false
  },
  {
    "linkId" : "religious-preferences",
    "text" : "Minu religioossed või muud spirituaalsed eelistused ",
    "type" : "text",
    "required" : false,
    "repeats" : false,
    "readOnly" : false
  },
  {
    "linkId" : "actions-after-death",
    "text" : "Minu matmisviisi eelistus",
    "type" : "coding",
    "required" : false,
    "readOnly" : false,
    "answerOption" : [{
      "valueCoding" : {
        "display" : "kirstuga matmine"
      }
    },
    {
      "valueCoding" : {
        "display" : "tuhastamine ja urnimatus"
      }
    },
    {
      "valueCoding" : {
        "display" : "mul ei ole eelistust"
      }
    },
    {
      "valueCoding" : {
        "display" : "muu: [vaba tekst]"
      }
    }],
    "item" : [{
      "linkId" : "actions-after-death.other",
      "text" : "Täpsusta",
      "type" : "text",
      "enableWhen" : [{
        "question" : "actions-after-death",
        "operator" : "=",
        "answerCoding" : {
          "display" : "muu: [vaba tekst]"
        }
      }],
      "required" : false,
      "repeats" : false,
      "readOnly" : false
    }]
  },
  {
    "linkId" : "other-wishes",
    "text" : "Minu jaoks olulised soovid",
    "type" : "text",
    "required" : false,
    "readOnly" : false
  }]
}

```
