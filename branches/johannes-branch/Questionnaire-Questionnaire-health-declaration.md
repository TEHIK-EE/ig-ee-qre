# Tervisedeklaratsioon - Küsimustike teenus v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tervisedeklaratsioon**

## Questionnaire: Tervisedeklaratsioon 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/qre/Questionnaire-health-declaration | *Version*:1.0.0 |
| Active as of 2023-12-12 | *Computable Name*:HDECL |

 
Näidis töötervishoiu tervisedeklaratsiooni küsimustikust 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "Questionnaire-health-declaration-with-text",
  "meta" : {
    "profile" : [
      "https://fhir.ee/qre/StructureDefinition/ee-health-declaration-questionnaire"
    ]
  },
  "url" : "https://fhir.ee/qre/Questionnaire-health-declaration",
  "version" : "1.0.0",
  "name" : "HDECL",
  "title" : "Tervisedeklaratsioon",
  "status" : "active",
  "subjectType" : ["Patient"],
  "date" : "2023-12-12",
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
  "approvalDate" : "2024-01-01",
  "effectivePeriod" : {
    "start" : "2024-03-16"
  },
  "code" : [
    {
      "system" : "http://fhir.ee/CodeSystem/kysimustikud",
      "code" : "156871000181103",
      "display" : "Tervisedeklaratsiooni küsimustik"
    }
  ],
  "item" : [
    {
      "linkId" : "category",
      "text" : "Läbivaatuse tüüp",
      "type" : "coding",
      "required" : true,
      "repeats" : true,
      "readOnly" : true,
      "answerOption" : [
        {
          "valueCoding" : {
            "system" : "https://fhir.ee/CodeSystem/labivaatuse-tyyp",
            "code" : "driver-group-I",
            "display" : "Läbivaatus juhiloa saamiseks või pikendamiseks (A-, AM-, B- ja BE-kategooria)"
          }
        },
        {
          "valueCoding" : {
            "system" : "https://fhir.ee/CodeSystem/labivaatuse-tyyp",
            "code" : "driver-group-II",
            "display" : "Läbivaatus juhiloa saamiseks või pikendamiseks (C-, CE-, D- ja DE-kategooria)"
          }
        },
        {
          "valueCoding" : {
            "system" : "https://fhir.ee/CodeSystem/labivaatuse-tyyp",
            "code" : "occupational",
            "display" : "Töötervishoiualane läbivaatus"
          }
        },
        {
          "valueCoding" : {
            "system" : "https://fhir.ee/CodeSystem/labivaatuse-tyyp",
            "code" : "military-service",
            "display" : "Kaitseväeteenistuses olija tervise läbivaatus"
          }
        }
      ]
    },
    {
      "linkId" : "patient-gender",
      "text" : "Sugu",
      "type" : "coding",
      "required" : true,
      "readOnly" : true,
      "answerValueSet" : "http://hl7.org/fhir/ValueSet/administrative-gender"
    },
    {
      "linkId" : "lifestyle",
      "code" : [
        {
          "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
          "code" : "lifestyle",
          "display" : "Elustiil"
        }
      ],
      "prefix" : "1",
      "text" : "Elustiil",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "lifestyle.alcohol",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "alcohol",
              "display" : "Kas sa tarvitad alkoholi?"
            }
          ],
          "text" : "Kas sa tarvitad alkoholi?",
          "type" : "boolean",
          "required" : true,
          "item" : [
            {
              "linkId" : "lifestyle.alcohol.alcohol-units",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "alcohol-units",
                  "display" : "Mitu ühikut nädalas?  (1 ühik = 40 ml 40% kanget alkoholi või 120 ml 12% veini või 250 ml 5,2% õlut)"
                }
              ],
              "text" : "Mitu ühikut nädalas?  (1 ühik = 40 ml 40% kanget alkoholi või 120 ml 12% veini või 250 ml 5,2% õlut)",
              "type" : "decimal",
              "enableWhen" : [
                {
                  "question" : "lifestyle.alcohol",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "lifestyle.smoking-tobacco",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "smoking-tobacco",
              "display" : "Kas sa tarvitad tubakatooteid regulaarselt? Regulaarse tarvitamise all mõeldakse kindla sagedusega järjepidevat tarvitamist näiteks iga päev või paar korda nädalas."
            }
          ],
          "text" : "Kas sa tarvitad tubakatooteid regulaarselt? Regulaarse tarvitamise all mõeldakse kindla sagedusega järjepidevat tarvitamist näiteks iga päev või paar korda nädalas.",
          "type" : "coding",
          "required" : true,
          "answerValueSet" : "https://fhir.ee/CodeSystem/suitsetamisharjumused",
          "item" : [
            {
              "linkId" : "lifestyle.smoking-tobacco.which",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "smoking-tobacco-which",
                  "display" : "Milliseid tubakatooteid Sa põhiliselt tarvitad(sid)?"
                }
              ],
              "text" : "Milliseid tubakatooteid Sa põhiliselt tarvitad(sid)?",
              "type" : "coding",
              "enableWhen" : [
                {
                  "question" : "lifestyle.smoking-tobacco",
                  "operator" : "!=",
                  "answerCoding" : {
                    "system" : "http://snomed.info/sct",
                    "code" : "266919005",
                    "display" : "Ei ole kunagi tubakatooteid tarvitanud"
                  }
                }
              ],
              "required" : true,
              "repeats" : true,
              "answerValueSet" : "https://fhir.ee/CodeSystem/tubakatoodete-liik"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
                  "valueQuantity" : {
                    "value" : 1
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
                  "valueQuantity" : {
                    "value" : 6500
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption",
                  "valueCoding" : {
                    "system" : "https://fhir.ee/CodeSystem/sagedus-ajas",
                    "code" : "/d",
                    "display" : "päevas"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption",
                  "valueCoding" : {
                    "system" : "https://fhir.ee/CodeSystem/sagedus-ajas",
                    "code" : "/wk",
                    "display" : "nädalas"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption",
                  "valueCoding" : {
                    "system" : "https://fhir.ee/CodeSystem/sagedus-ajas",
                    "code" : "/mo",
                    "display" : "kuus"
                  }
                }
              ],
              "linkId" : "lifestyle.smoking-tobacco.tobacco-amount",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "smoking-tobacco-amount",
                  "display" : "Mitu sigaretti (sigarit, sigarillot) sa keskmiselt tarvita(si)d päevas/nädalas/kuus?"
                }
              ],
              "text" : "Mitu sigaretti (sigarit, sigarillot) sa keskmiselt tarvita(si)d päevas/nädalas/kuus?",
              "type" : "quantity",
              "enableWhen" : [
                {
                  "question" : "lifestyle.smoking-tobacco.which",
                  "operator" : "=",
                  "answerCoding" : {
                    "system" : "https://fhir.ee/CodeSystem/tubakatoodete-liik",
                    "code" : "smoking-tobacco",
                    "display" : "Suitsetatav tubakatoode (sigaret, sigar, sigarillo, vesipiibutubakas)"
                  }
                }
              ],
              "required" : true
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
                  "valueQuantity" : {
                    "value" : 1
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
                  "valueQuantity" : {
                    "value" : 6500
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption",
                  "valueCoding" : {
                    "system" : "https://fhir.ee/CodeSystem/sagedus-ajas",
                    "code" : "/d",
                    "display" : "päevas"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption",
                  "valueCoding" : {
                    "system" : "https://fhir.ee/CodeSystem/sagedus-ajas",
                    "code" : "/wk",
                    "display" : "nädalas"
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption",
                  "valueCoding" : {
                    "system" : "https://fhir.ee/CodeSystem/sagedus-ajas",
                    "code" : "/mo",
                    "display" : "kuus"
                  }
                }
              ],
              "linkId" : "lifestyle.smoking-tobacco.smokeless-novel-tobacco-amount",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "smokeless-novel-tobacco-amount",
                  "display" : "Mitu korda sa keskmiselt suitsuvabu või uudseid tubakatooteid tarvita(si)d päevas/nädalas/kuus?"
                }
              ],
              "text" : "Mitu korda sa keskmiselt suitsuvabu või uudseid tubakatooteid tarvita(si)d päevas/nädalas/kuus?",
              "type" : "quantity",
              "enableWhen" : [
                {
                  "question" : "lifestyle.smoking-tobacco.which",
                  "operator" : "=",
                  "answerCoding" : {
                    "system" : "https://fhir.ee/CodeSystem/tubakatoodete-liik",
                    "code" : "smokeless-tobacco",
                    "display" : "Suitsuvaba tubakatoode (närimistubakas, nuusktubakas, nikotiinipadi, suukaudseks kasutamiseks mõeldud tubakas)"
                  }
                },
                {
                  "question" : "lifestyle.smoking-tobacco.which",
                  "operator" : "=",
                  "answerCoding" : {
                    "system" : "https://fhir.ee/CodeSystem/tubakatoodete-liik",
                    "code" : "novel-tobacco",
                    "display" : "Uudne tubakatoode (elektrooniline sigaret, kuumutatav tubakatoode)"
                  }
                }
              ],
              "enableBehavior" : "any",
              "required" : true
            },
            {
              "linkId" : "lifestyle.smoking-tobacco.period",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "smoking-tobacco-period",
                  "display" : "Mitu aastat kokku sa oled tubakatooteid tarvitanud? Arvestage kokku kõik aastad, mil te olete tubakatooteid tarvitanud, isegi kui vahepeal on olnud pause."
                }
              ],
              "text" : "Mitu aastat kokku sa oled tubakatooteid tarvitanud? Arvestage kokku kõik aastad, mil te olete tubakatooteid tarvitanud, isegi kui vahepeal on olnud pause.",
              "type" : "group",
              "enableWhen" : [
                {
                  "question" : "lifestyle.smoking-tobacco",
                  "operator" : "!=",
                  "answerCoding" : {
                    "system" : "http://snomed.info/sct",
                    "code" : "266919005",
                    "display" : "Ei ole kunagi tubakatooteid tarvitanud"
                  }
                }
              ],
              "required" : true,
              "item" : [
                {
                  "extension" : [
                    {
                      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
                      "valueQuantity" : {
                        "value" : 0
                      }
                    },
                    {
                      "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
                      "valueQuantity" : {
                        "value" : 150
                      }
                    }
                  ],
                  "linkId" : "lifestyle.smoking-tobacco.period.years",
                  "type" : "integer",
                  "required" : true
                },
                {
                  "extension" : [
                    {
                      "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
                      "valueQuantity" : {
                        "value" : 0
                      }
                    },
                    {
                      "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
                      "valueQuantity" : {
                        "value" : 11
                      }
                    }
                  ],
                  "linkId" : "lifestyle.smoking-tobacco.period.months",
                  "type" : "integer",
                  "required" : true
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
                  "valueQuantity" : {
                    "value" : 1900
                  }
                },
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
                  "valueQuantity" : {
                    "value" : 3000
                  }
                }
              ],
              "linkId" : "lifestyle.smoking-tobacco.quit-year",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "smoking-tobacco-quit-year",
                  "display" : "Mis aastal sa viimati tubakatooteid tarvitasid?"
                }
              ],
              "text" : "Mis aastal sa viimati tubakatooteid tarvitasid?",
              "type" : "integer",
              "enableWhen" : [
                {
                  "question" : "lifestyle.smoking-tobacco",
                  "operator" : "=",
                  "answerCoding" : {
                    "system" : "http://snomed.info/sct",
                    "code" : "160617001",
                    "display" : "Tubakatoodete tarvitamisest loobunud"
                  }
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "lifestyle.narcotics",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "narcotics",
              "display" : "Kas sa tarvitad narkootilisi või psühhotroopseid aineid?"
            }
          ],
          "text" : "Kas sa tarvitad narkootilisi või psühhotroopseid aineid?",
          "type" : "boolean",
          "required" : true,
          "item" : [
            {
              "linkId" : "lifestyle.narcotics.narcotics-frequency",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "narcotics-frequency",
                  "display" : "Kirjelda, kui sageli"
                }
              ],
              "text" : "Kirjelda, kui sageli",
              "type" : "string",
              "enableWhen" : [
                {
                  "question" : "lifestyle.narcotics",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "lifestyle.medication",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "medication-influence",
              "display" : "Kas kasutad ravimeid, mis võivad sinu arvates mõjutada sinu keskendumisvõimet ja koordinatsiooni?"
            }
          ],
          "text" : "Kas kasutad ravimeid, mis võivad sinu arvates mõjutada sinu keskendumisvõimet ja koordinatsiooni?",
          "type" : "boolean",
          "required" : true,
          "item" : [
            {
              "linkId" : "lifestyle.medication.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "lifestyle.medication",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        }
      ]
    },
    {
      "linkId" : "work-environment",
      "code" : [
        {
          "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
          "code" : "work-environment",
          "display" : "Töökeskkond"
        }
      ],
      "prefix" : "2",
      "text" : "Töökeskkond",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "work-environment.work-restrictions",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "work-restrictions",
              "display" : "Kas Sulle on tervisekontrolli põhjal varem seatud tööpiiranguid?"
            }
          ],
          "text" : "Kas Sulle on tervisekontrolli põhjal varem seatud tööpiiranguid?",
          "type" : "boolean",
          "required" : true,
          "item" : [
            {
              "linkId" : "work-environment.work-restrictions.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification-why",
                  "display" : "Palun täpsusta, mille tõttu"
                }
              ],
              "text" : "Palun täpsusta, mille tõttu",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "work-environment.work-restrictions",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "work-environment.work-health-problems",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "work-health-problems",
              "display" : "Kas sul esineb või on esinenud tervisehäireid, mida seostad oma tööülesannete täitmise või töökeskkonnaga?"
            }
          ],
          "text" : "Kas sul esineb või on esinenud tervisehäireid, mida seostad oma tööülesannete täitmise või töökeskkonnaga?",
          "type" : "boolean",
          "required" : true,
          "item" : [
            {
              "linkId" : "work-environment.work-health-problems.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "work-environment.work-health-problems",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "work-environment.occupational-disease",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "occupational-disease",
              "display" : "Kas Sul on diagnoositud kutsehaigus?"
            }
          ],
          "text" : "Kas Sul on diagnoositud kutsehaigus?",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "category",
              "operator" : "=",
              "answerCoding" : {
                "system" : "https://fhir.ee/CodeSystem/tervisekontrolli-kasutusala",
                "code" : "occupational"
              }
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "work-environment.occupational-disease.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "work-environment.occupational-disease",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false
            },
            {
              "linkId" : "work-environment.occupational-disease.previous-diagnosis",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "previous-diagnosis"
                }
              ],
              "text" : "Varasem diagnoos",
              "type" : "group",
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "work-environment.occupational-disease.previous-diagnosis.diagnosis",
                  "text" : "Diagnoos",
                  "type" : "coding",
                  "required" : true,
                  "readOnly" : true,
                  "answerValueSet" : "https://fhir.ee/ValueSet/td-kutsehaigused"
                },
                {
                  "linkId" : "work-environment.occupational-disease.previous-diagnosis.written-diagnosis",
                  "text" : "Sõnaline diagnoos",
                  "type" : "string",
                  "required" : false,
                  "readOnly" : true
                },
                {
                  "linkId" : "work-environment.occupational-disease.previous-diagnosis.source-reference",
                  "text" : "Allika viide",
                  "type" : "reference",
                  "required" : true,
                  "readOnly" : true
                }
              ]
            }
          ]
        },
        {
          "linkId" : "work-environment.work-related-disease",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "work-related-disease",
              "display" : "Kas Sul on diagnoositud tööst põhjustatud haigus?"
            }
          ],
          "text" : "Kas Sul on diagnoositud tööst põhjustatud haigus?",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "category",
              "operator" : "=",
              "answerCoding" : {
                "system" : "https://fhir.ee/CodeSystem/tervisekontrolli-kasutusala",
                "code" : "occupational"
              }
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "work-environment.work-related-disease.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "work-environment.work-related-disease",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false
            },
            {
              "linkId" : "work-environment.work-related-disease.previous-diagnosis",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "previous-diagnosis"
                }
              ],
              "text" : "Varasem diagnoos",
              "type" : "group",
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "work-environment.work-related-disease.previous-diagnosis.diagnosis",
                  "text" : "Diagnoos",
                  "type" : "coding",
                  "required" : true,
                  "readOnly" : true,
                  "answerValueSet" : "https://fhir.ee/ValueSet/td-toost-pohjustatud-haigused"
                },
                {
                  "linkId" : "work-environment.work-related-disease.previous-diagnosis.written-diagnosis",
                  "text" : "Sõnaline diagnoos",
                  "type" : "string",
                  "required" : false,
                  "readOnly" : true
                },
                {
                  "linkId" : "work-environment.work-related-disease.previous-diagnosis.source-reference",
                  "text" : "Allika viide",
                  "type" : "reference",
                  "required" : true,
                  "readOnly" : true
                }
              ]
            }
          ]
        },
        {
          "linkId" : "work-environment.ppe-problems",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "ppe-problems",
              "display" : "Kas tööl kasutatavad isikukaitsevahendid põhjustavad sulle terviseprobleeme?"
            }
          ],
          "text" : "Kas tööl kasutatavad isikukaitsevahendid põhjustavad sulle terviseprobleeme?",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "category",
              "operator" : "=",
              "answerCoding" : {
                "system" : "https://fhir.ee/CodeSystem/tervisekontrolli-kasutusala",
                "code" : "occupational"
              }
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "work-environment.ppe-problems.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "work-environment.ppe-problems",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        }
      ]
    },
    {
      "linkId" : "allergies",
      "code" : [
        {
          "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
          "code" : "allergies",
          "display" : "Allergiad"
        }
      ],
      "prefix" : "3",
      "text" : "Allergiad",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "allergies.previous-diagnosis",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "previous-diagnosis"
            }
          ],
          "text" : "Varasem diagnoos",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "allergies.previous-diagnosis.diagnosis",
              "text" : "Diagnoos",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-allergiad"
            },
            {
              "linkId" : "allergies.previous-diagnosis.written-diagnosis",
              "text" : "Sõnaline diagnoos",
              "type" : "string",
              "required" : false,
              "readOnly" : true
            },
            {
              "linkId" : "allergies.previous-diagnosis.source-reference",
              "text" : "Allika viide",
              "type" : "reference",
              "required" : true,
              "readOnly" : true
            }
          ]
        },
        {
          "linkId" : "allergies.no-complaints",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "no-current-complaints",
              "display" : "Kaebused hetkel puuduvad"
            }
          ],
          "text" : "Kaebused hetkel puuduvad",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "allergies.medication-allergy",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "medication-allergy",
              "display" : "Ravimitele"
            }
          ],
          "text" : "Ravimitele",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "allergies.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "allergies.medication-allergy.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "allergies.medication-allergy",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "allergies.food-allergy",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "food-allergy",
              "display" : "Toiduainetele"
            }
          ],
          "text" : "Toiduainetele",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "allergies.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "allergies.food-allergy.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "allergies.food-allergy",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "allergies.pollen-allergy",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "pollen-allergy",
              "display" : "Õietolmule"
            }
          ],
          "text" : "Õietolmule",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "allergies.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "allergies.pollen-allergy.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "allergies.pollen-allergy",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "allergies.pets-allergy",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "pets-allergy",
              "display" : "Koduloomadele või -lindudele"
            }
          ],
          "text" : "Koduloomadele või -lindudele",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "allergies.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "allergies.pets-allergy.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "allergies.pets-allergy",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "allergies.other-allergies",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "other-allergies",
              "display" : "Muudele ainetele"
            }
          ],
          "text" : "Muudele ainetele",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "allergies.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "allergies.other-allergies.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "allergies.other-allergies",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        }
      ]
    },
    {
      "linkId" : "mental-health",
      "code" : [
        {
          "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
          "code" : "mental-health",
          "display" : "Psüühika"
        }
      ],
      "prefix" : "4",
      "text" : "Psüühika",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "mental-health.previous-diagnosis",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "previous-diagnosis"
            }
          ],
          "text" : "Varasem diagnoos",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "mental-health.previous-diagnosis.diagnosis",
              "text" : "Diagnoos",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-psyyhika"
            },
            {
              "linkId" : "mental-health.previous-diagnosis.written-diagnosis",
              "text" : "Sõnaline diagnoos",
              "type" : "string",
              "required" : false,
              "readOnly" : true
            },
            {
              "linkId" : "mental-health.previous-diagnosis.source-reference",
              "text" : "Allika viide",
              "type" : "reference",
              "required" : true,
              "readOnly" : true
            }
          ]
        },
        {
          "linkId" : "mental-health.no-complaints",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "no-current-complaints",
              "display" : "Kaebused hetkel puuduvad"
            }
          ],
          "text" : "Kaebused hetkel puuduvad",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "mental-health.depression",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "depression",
              "display" : "Depressioon"
            }
          ],
          "text" : "Depressioon",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "mental-health.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "mental-health.depression.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "mental-health.depression",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "mental-health.schizophrenia",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "schizophrenia",
              "display" : "Skisofreenia"
            }
          ],
          "text" : "Skisofreenia",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "mental-health.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "mental-health.schizophrenia.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "mental-health.schizophrenia",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "mental-health.fear-working-alone",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "fear-working-alone",
              "display" : "Kartus töötada üksinda"
            }
          ],
          "text" : "Kartus töötada üksinda",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "mental-health.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "mental-health.fear-working-alone.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "mental-health.fear-working-alone",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "mental-health.fear-closed-spaces",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "fear-closed-spaces",
              "display" : "Hirm suletud ruumi ees"
            }
          ],
          "text" : "Hirm suletud ruumi ees",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "mental-health.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "mental-health.fear-closed-spaces.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "mental-health.fear-closed-spaces",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "mental-health.fear-heights",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "fear-heights",
              "display" : "Kõrgusekartus"
            }
          ],
          "text" : "Kõrgusekartus",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "mental-health.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "mental-health.fear-heights.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "mental-health.fear-heights",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "mental-health.frequent-stress",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "frequent-stress",
              "display" : "Sagedane stress"
            }
          ],
          "text" : "Sagedane stress",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "mental-health.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "mental-health.frequent-stress.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "mental-health.frequent-stress",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "mental-health.other-disease-condition-symptom",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "other-disease-condition-symptom",
              "display" : "Muu haigus, seisund, sümptom"
            }
          ],
          "text" : "Muu haigus, seisund, sümptom",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "mental-health.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "mental-health.other-disease-condition-symptom.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "mental-health.other-disease-condition-symptom",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        }
      ]
    },
    {
      "linkId" : "nervous-system",
      "code" : [
        {
          "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
          "code" : "nervous-system",
          "display" : "Närvisüsteem"
        }
      ],
      "prefix" : "5",
      "text" : "Närvisüsteem",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "nervous-system.previous-diagnosis",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "previous-diagnosis"
            }
          ],
          "text" : "Varasem diagnoos",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "nervous-system.previous-diagnosis.diagnosis",
              "text" : "Diagnoos",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-narvisysteem"
            },
            {
              "linkId" : "nervous-system.previous-diagnosis.written-diagnosis",
              "text" : "Sõnaline diagnoos",
              "type" : "string",
              "required" : false,
              "readOnly" : true
            },
            {
              "linkId" : "nervous-system.previous-diagnosis.source-reference",
              "text" : "Allika viide",
              "type" : "reference",
              "required" : true,
              "readOnly" : true
            }
          ]
        },
        {
          "linkId" : "nervous-system.no-complaints",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "no-current-complaints",
              "display" : "Kaebused hetkel puuduvad"
            }
          ],
          "text" : "Kaebused hetkel puuduvad",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "nervous-system.syncope",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "syncope",
              "display" : "Teadvuse kaotuse hood"
            }
          ],
          "text" : "Teadvuse kaotuse hood",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "nervous-system.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "nervous-system.syncope.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "nervous-system.syncope",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "nervous-system.seizures",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "seizures",
              "display" : "Krambihood (epilepsia ehk langetõbi)"
            }
          ],
          "text" : "Krambihood (epilepsia ehk langetõbi)",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "nervous-system.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "nervous-system.seizures.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "nervous-system.seizures",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "nervous-system.balance-disorder",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "balance-disorder",
              "display" : "Tasakaaluhäired (sh Meniere'i tõbi)"
            }
          ],
          "text" : "Tasakaaluhäired (sh Meniere'i tõbi)",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "nervous-system.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "nervous-system.balance-disorder.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "nervous-system.balance-disorder",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "nervous-system.stroke",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "stroke",
              "display" : "Ajuinfarkt või ajuinsult"
            }
          ],
          "text" : "Ajuinfarkt või ajuinsult",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "nervous-system.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "nervous-system.stroke.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "nervous-system.stroke",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "nervous-system.seasickness",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "seasickness",
              "display" : "Merehaigus"
            }
          ],
          "text" : "Merehaigus",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "nervous-system.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "nervous-system.seasickness.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "nervous-system.seasickness",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "nervous-system.coordination-disorder",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "coordination-disorder",
              "display" : "Koordinatsioonihäired (sh. kätega seonduvad)"
            }
          ],
          "text" : "Koordinatsioonihäired (sh. kätega seonduvad)",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "nervous-system.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            },
            {
              "question" : "category",
              "operator" : "=",
              "answerCoding" : {
                "system" : "https://fhir.ee/CodeSystem/tervisekontrolli-kasutusala",
                "code" : "occupational"
              }
            }
          ],
          "enableBehavior" : "all",
          "required" : true,
          "item" : [
            {
              "linkId" : "nervous-system.coordination-disorder.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "nervous-system.coordination-disorder",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "nervous-system.other-disease-condition-symptom",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "other-disease-condition-symptom",
              "display" : "Muu haigus, seisund, sümptom"
            }
          ],
          "text" : "Muu haigus, seisund, sümptom",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "nervous-system.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "nervous-system.other-disease-condition-symptom.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "nervous-system.other-disease-condition-symptom",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        }
      ]
    },
    {
      "linkId" : "eyes-vision",
      "code" : [
        {
          "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
          "code" : "eyes-vision",
          "display" : "Silmad ja nägemine"
        }
      ],
      "prefix" : "6",
      "text" : "Silmad ja nägemine",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "eyes-vision.previous-diagnosis",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "previous-diagnosis"
            }
          ],
          "text" : "Varasem diagnoos",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "eyes-vision.previous-diagnosis.diagnosis",
              "text" : "Diagnoos",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-silmad-ja-nagemine"
            },
            {
              "linkId" : "eyes-vision.previous-diagnosis.written-diagnosis",
              "text" : "Sõnaline diagnoos",
              "type" : "string",
              "required" : false,
              "readOnly" : true
            },
            {
              "linkId" : "eyes-vision.previous-diagnosis.source-reference",
              "text" : "Allika viide",
              "type" : "reference",
              "required" : true,
              "readOnly" : true
            }
          ]
        },
        {
          "linkId" : "eyes-vision.no-complaints",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "no-current-complaints",
              "display" : "Kaebused hetkel puuduvad"
            }
          ],
          "text" : "Kaebused hetkel puuduvad",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "eyes-vision.myopia",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "myopia",
              "display" : "Lühinägelikkus (müoopia)"
            }
          ],
          "text" : "Lühinägelikkus (müoopia)",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "eyes-vision.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "eyes-vision.myopia.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "eyes-vision.myopia",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "eyes-vision.hyperopia",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "hyperopia",
              "display" : "Kaugnägelikkus (hüperoopia)"
            }
          ],
          "text" : "Kaugnägelikkus (hüperoopia)",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "eyes-vision.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "eyes-vision.hyperopia.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "eyes-vision.hyperopia",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "eyes-vision.limited-view",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "limited-view",
              "display" : "Kas üles-alla või külgedele vaadates esineb vaatevälja piiratust?"
            }
          ],
          "text" : "Kas üles-alla või külgedele vaadates esineb vaatevälja piiratust?",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "eyes-vision.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "eyes-vision.limited-view.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "eyes-vision.limited-view",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "eyes-vision.double-vision",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "double-vision",
              "display" : "Kahelinägemine"
            }
          ],
          "text" : "Kahelinägemine",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "eyes-vision.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "eyes-vision.double-vision.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "eyes-vision.double-vision",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "eyes-vision.colour-vision-disorder",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "colour-vision-disorder",
              "display" : "Värvusmeele häired"
            }
          ],
          "text" : "Värvusmeele häired",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "eyes-vision.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "eyes-vision.colour-vision-disorder.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "eyes-vision.colour-vision-disorder",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "eyes-vision.other-disease-condition-symptom",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "other-disease-condition-symptom",
              "display" : "Muu haigus, seisund, sümptom"
            }
          ],
          "text" : "Muu haigus, seisund, sümptom",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "eyes-vision.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "eyes-vision.other-disease-condition-symptom.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "eyes-vision.other-disease-condition-symptom",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        }
      ]
    },
    {
      "linkId" : "ear-nose-throat",
      "code" : [
        {
          "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
          "code" : "ear-nose-throat",
          "display" : "Kõrv, nina, neel"
        }
      ],
      "prefix" : "7",
      "text" : "Kõrv, nina, neel",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "ear-nose-throat.previous-diagnosis",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "previous-diagnosis"
            }
          ],
          "text" : "Varasem diagnoos",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "ear-nose-throat.previous-diagnosis.diagnosis",
              "text" : "Diagnoos",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-korv-nina-neel"
            },
            {
              "linkId" : "ear-nose-throat.previous-diagnosis.written-diagnosis",
              "text" : "Sõnaline diagnoos",
              "type" : "string",
              "required" : false,
              "readOnly" : true
            },
            {
              "linkId" : "ear-nose-throat.previous-diagnosis.source-reference",
              "text" : "Allika viide",
              "type" : "reference",
              "required" : true,
              "readOnly" : true
            }
          ]
        },
        {
          "linkId" : "ear-nose-throat.no-complaints",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "no-current-complaints",
              "display" : "Kaebused hetkel puuduvad"
            }
          ],
          "text" : "Kaebused hetkel puuduvad",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "ear-nose-throat.hearing-loss",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "hearing-loss",
              "display" : "Kuulmislangus"
            }
          ],
          "text" : "Kuulmislangus",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "ear-nose-throat.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "ear-nose-throat.hearing-loss.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "ear-nose-throat.hearing-loss",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "ear-nose-throat.allergic-rhinitis",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "allergic-rhinitis",
              "display" : "Allergiline nohu"
            }
          ],
          "text" : "Allergiline nohu",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "ear-nose-throat.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "ear-nose-throat.allergic-rhinitis.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "ear-nose-throat.allergic-rhinitis",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "ear-nose-throat.chronic-sinusitis",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "chronic-sinusitis",
              "display" : "Otsmiku- või põskkoopa krooniline põletik"
            }
          ],
          "text" : "Otsmiku- või põskkoopa krooniline põletik",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "ear-nose-throat.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "ear-nose-throat.chronic-sinusitis.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "ear-nose-throat.chronic-sinusitis",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "ear-nose-throat.nasal-obstruction",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "nasal-obstruction",
              "display" : "Ninahingamise takistus"
            }
          ],
          "text" : "Ninahingamise takistus",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "ear-nose-throat.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "ear-nose-throat.nasal-obstruction.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "ear-nose-throat.nasal-obstruction",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "ear-nose-throat.frequent-throat-infection",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "frequent-throat-infection",
              "display" : "Sagedane (rohkem kui 4x aastas) esinev kurguhaigus"
            }
          ],
          "text" : "Sagedane (rohkem kui 4x aastas) esinev kurguhaigus",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "ear-nose-throat.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "ear-nose-throat.frequent-throat-infection.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "ear-nose-throat.frequent-throat-infection",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "ear-nose-throat.other-disease-condition-symptom",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "other-disease-condition-symptom",
              "display" : "Muu haigus, seisund, sümptom"
            }
          ],
          "text" : "Muu haigus, seisund, sümptom",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "ear-nose-throat.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "ear-nose-throat.other-disease-condition-symptom.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "ear-nose-throat.other-disease-condition-symptom",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        }
      ]
    },
    {
      "linkId" : "respiratory-system",
      "code" : [
        {
          "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
          "code" : "respiratory-system",
          "display" : "Hingamissüsteem"
        }
      ],
      "prefix" : "8",
      "text" : "Hingamissüsteem",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "respiratory-system.previous-diagnosis",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "previous-diagnosis"
            }
          ],
          "text" : "Varasem diagnoos",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "respiratory-system.previous-diagnosis.diagnosis",
              "text" : "Diagnoos",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-hingamissysteem"
            },
            {
              "linkId" : "respiratory-system.previous-diagnosis.written-diagnosis",
              "text" : "Sõnaline diagnoos",
              "type" : "string",
              "required" : false,
              "readOnly" : true
            },
            {
              "linkId" : "respiratory-system.previous-diagnosis.source-reference",
              "text" : "Allika viide",
              "type" : "reference",
              "required" : true,
              "readOnly" : true
            }
          ]
        },
        {
          "linkId" : "respiratory-system.no-complaints",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "no-current-complaints",
              "display" : "Kaebused hetkel puuduvad"
            }
          ],
          "text" : "Kaebused hetkel puuduvad",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "respiratory-system.asthma",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "asthma",
              "display" : "Astma"
            }
          ],
          "text" : "Astma",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "respiratory-system.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "respiratory-system.asthma.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "respiratory-system.asthma",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "respiratory-system.copd",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "copd",
              "display" : "Krooniline obstruktiivne kopsuhaigus ehk KOK"
            }
          ],
          "text" : "Krooniline obstruktiivne kopsuhaigus ehk KOK",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "respiratory-system.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "respiratory-system.copd.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "respiratory-system.copd",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "respiratory-system.sleep-apnoea",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "sleep-apnoea",
              "display" : "Uneapnoe"
            }
          ],
          "text" : "Uneapnoe",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "respiratory-system.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "respiratory-system.sleep-apnoea.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "respiratory-system.sleep-apnoea",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "respiratory-system.other-disease-condition-symptom",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "other-disease-condition-symptom",
              "display" : "Muu haigus, seisund, sümptom"
            }
          ],
          "text" : "Muu haigus, seisund, sümptom",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "respiratory-system.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "respiratory-system.other-disease-condition-symptom.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "respiratory-system.other-disease-condition-symptom",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        }
      ]
    },
    {
      "linkId" : "metabolic-disorder",
      "code" : [
        {
          "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
          "code" : "metabolic-disorder",
          "display" : "Ainevahetuse häired (sh kilpnäärme haigused)"
        }
      ],
      "prefix" : "9",
      "text" : "Ainevahetuse häired (sh kilpnäärme haigused)",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "metabolic-disorder.previous-diagnosis",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "previous-diagnosis"
            }
          ],
          "text" : "Varasem diagnoos",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "metabolic-disorder.previous-diagnosis.diagnosis",
              "text" : "Diagnoos",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-ainevahetuse-haired"
            },
            {
              "linkId" : "metabolic-disorder.previous-diagnosis.written-description",
              "text" : "Sõnaline diagnoos",
              "type" : "string",
              "required" : false,
              "readOnly" : true
            },
            {
              "linkId" : "metabolic-disorder.previous-diagnosis.source-reference",
              "text" : "Allika viide",
              "type" : "reference",
              "required" : true,
              "readOnly" : true
            }
          ]
        },
        {
          "linkId" : "metabolic-disorder.no-complaints",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "no-current-complaints",
              "display" : "Kaebused hetkel puuduvad"
            }
          ],
          "text" : "Kaebused hetkel puuduvad",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "metabolic-disorder.diabetes",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "diabetes",
              "display" : "Suhkruhaigus"
            }
          ],
          "text" : "Suhkruhaigus",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "metabolic-disorder.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "metabolic-disorder.diabetes.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "metabolic-disorder.diabetes",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "metabolic-disorder.other-disease-condition-symptom",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "other-disease-condition-symptom",
              "display" : "Muu haigus, seisund, sümptom"
            }
          ],
          "text" : "Muu haigus, seisund, sümptom",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "metabolic-disorder.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "metabolic-disorder.other-disease-condition-symptom.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "metabolic-disorder.other-disease-condition-symptom",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        }
      ]
    },
    {
      "linkId" : "cardiovascular-system",
      "code" : [
        {
          "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
          "code" : "cardiovascular-system",
          "display" : "Süda ja veresoonkond"
        }
      ],
      "prefix" : "10",
      "text" : "Süda ja veresoonkond",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "cardiovascular-system.previous-diagnosis",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "previous-diagnosis"
            }
          ],
          "text" : "Varasem diagnoos",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "cardiovascular-system.previous-diagnosis.diagnosis",
              "text" : "Diagnoos",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-syda-ja-veresoonkond"
            },
            {
              "linkId" : "cardiovascular-system.previous-diagnosis.written-diagnosis",
              "text" : "Sõnaline diagnoos",
              "type" : "string",
              "required" : false,
              "readOnly" : true
            },
            {
              "linkId" : "cardiovascular-system.previous-diagnosis.source-reference",
              "text" : "Allika viide",
              "type" : "reference",
              "required" : true,
              "readOnly" : true
            }
          ]
        },
        {
          "linkId" : "cardiovascular-system.no-complaints",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "no-current-complaints",
              "display" : "Kaebused hetkel puuduvad"
            }
          ],
          "text" : "Kaebused hetkel puuduvad",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "cardiovascular-system.chest-pain-activity",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "chest-pain-activity",
              "display" : "Koormusega seonduv valu rinnus"
            }
          ],
          "text" : "Koormusega seonduv valu rinnus",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "cardiovascular-system.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "cardiovascular-system.chest-pain-activity.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "cardiovascular-system.chest-pain-activity",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "cardiovascular-system.high-blood-pressure",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "high-blood-pressure",
              "display" : "Kõrge vererõhk"
            }
          ],
          "text" : "Kõrge vererõhk",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "cardiovascular-system.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "cardiovascular-system.high-blood-pressure.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "cardiovascular-system.high-blood-pressure",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "cardiovascular-system.heart-attack",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "heart-attack",
              "display" : "Läbipõetud südameinfarkt"
            }
          ],
          "text" : "Läbipõetud südameinfarkt",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "cardiovascular-system.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "cardiovascular-system.heart-attack.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "cardiovascular-system.heart-attack",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "cardiovascular-system.arrhythmia",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "arrhythmia",
              "display" : "Südame rütmihäired"
            }
          ],
          "text" : "Südame rütmihäired",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "cardiovascular-system.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "cardiovascular-system.arrhythmia.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "cardiovascular-system.arrhythmia",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "cardiovascular-system.angioplasty-stenting",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "angioplasty-stenting",
              "display" : "On tehtud südamesondeerimine või stentimine"
            }
          ],
          "text" : "On tehtud südamesondeerimine või stentimine",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "cardiovascular-system.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "cardiovascular-system.angioplasty-stenting.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "cardiovascular-system.angioplasty-stenting",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "cardiovascular-system.pacer",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "pacer",
              "display" : "On paigaldatud südamerütmur"
            }
          ],
          "text" : "On paigaldatud südamerütmur",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "cardiovascular-system.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "cardiovascular-system.pacer.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "cardiovascular-system.pacer",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "cardiovascular-system.heart-surgery",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "heart-operation",
              "display" : "On tehtud südameoperatsioon"
            }
          ],
          "text" : "On tehtud südameoperatsioon",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "cardiovascular-system.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "cardiovascular-system.heart-surgery.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "cardiovascular-system.heart-surgery",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "cardiovascular-system.other-disease-condition-symptom",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "other-disease-condition-symptom",
              "display" : "Muu haigus, seisund, sümptom"
            }
          ],
          "text" : "Muu haigus, seisund, sümptom",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "cardiovascular-system.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "cardiovascular-system.other-disease-condition-symptom.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "cardiovascular-system.other-disease-condition-symptom",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        }
      ]
    },
    {
      "linkId" : "bones-joints-muscles",
      "code" : [
        {
          "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
          "code" : "bones-joints-muscles",
          "display" : "Luud, liigesed ja lihased"
        }
      ],
      "prefix" : "11",
      "text" : "Luud, liigesed ja lihased",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "bones-joints-muscles.previous-diagnosis",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "previous-diagnosis"
            }
          ],
          "text" : "Varasem diagnoos",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "bones-joints-muscles.previous-diagnosis.diagnosis",
              "text" : "Diagnoos",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-luud-liigesed-ja-lihased"
            },
            {
              "linkId" : "bones-joints-muscles.previous-diagnosis.written-diagnosis",
              "text" : "Sõnaline diagnoos",
              "type" : "string",
              "required" : false,
              "readOnly" : true
            },
            {
              "linkId" : "bones-joints-muscles.previous-diagnosis.source-reference",
              "text" : "Allika viide",
              "type" : "reference",
              "required" : true,
              "readOnly" : true
            }
          ]
        },
        {
          "linkId" : "bones-joints-muscles.no-complaints",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "no-current-complaints",
              "display" : "Kaebused hetkel puuduvad"
            }
          ],
          "text" : "Kaebused hetkel puuduvad",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "bones-joints-muscles.joint-stiffness",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "joint-stiffness",
              "display" : "Liigesejäikus"
            }
          ],
          "text" : "Liigesejäikus",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "bones-joints-muscles.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "bones-joints-muscles.joint-stiffness.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "bones-joints-muscles.joint-stiffness",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "bones-joints-muscles.limb-paralysis",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "limb-paralysis",
              "display" : "Jäseme osaline või täielik halvatus"
            }
          ],
          "text" : "Jäseme osaline või täielik halvatus",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "bones-joints-muscles.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "bones-joints-muscles.limb-paralysis.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "bones-joints-muscles.limb-paralysis",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "bones-joints-muscles.missing-limb",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "missing-limb",
              "display" : "Jäseme või selle osa puudumine"
            }
          ],
          "text" : "Jäseme või selle osa puudumine",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "bones-joints-muscles.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "bones-joints-muscles.missing-limb.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "bones-joints-muscles.missing-limb",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "bones-joints-muscles.tremor",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "tremor",
              "display" : "Käte värisemine (treemor)"
            }
          ],
          "text" : "Käte värisemine (treemor)",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "bones-joints-muscles.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "bones-joints-muscles.tremor.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "bones-joints-muscles.tremor",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "bones-joints-muscles.joint-pain",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "joint-pain",
              "display" : "Liigesevalu"
            }
          ],
          "text" : "Liigesevalu",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "bones-joints-muscles.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "bones-joints-muscles.joint-pain.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "bones-joints-muscles.joint-pain",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "bones-joints-muscles.neck-pain",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "neck-pain",
              "display" : "Kaelavalu"
            }
          ],
          "text" : "Kaelavalu",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "bones-joints-muscles.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "bones-joints-muscles.neck-pain.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "bones-joints-muscles.neck-pain",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "bones-joints-muscles.shoulder-pain",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "shoulder-pain",
              "display" : "Õlavöötmevalu"
            }
          ],
          "text" : "Õlavöötmevalu",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "bones-joints-muscles.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "bones-joints-muscles.shoulder-pain.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "bones-joints-muscles.shoulder-pain",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "bones-joints-muscles.lower-back-pain",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "lower-back-pain",
              "display" : "Alaseljavalu"
            }
          ],
          "text" : "Alaseljavalu",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "bones-joints-muscles.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "bones-joints-muscles.lower-back-pain.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "bones-joints-muscles.lower-back-pain",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "bones-joints-muscles.other-disease-condition-symptom",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "other-disease-condition-symptom",
              "display" : "Muu haigus, seisund, sümptom"
            }
          ],
          "text" : "Muu haigus, seisund, sümptom",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "bones-joints-muscles.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "bones-joints-muscles.other-disease-condition-symptom.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "bones-joints-muscles.other-disease-condition-symptom",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        }
      ]
    },
    {
      "linkId" : "infections",
      "code" : [
        {
          "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
          "code" : "infections",
          "display" : "Nakkushaigused"
        }
      ],
      "prefix" : "12",
      "text" : "Nakkushaigused",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "infections.previous-diagnosis",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "previous-diagnosis"
            }
          ],
          "text" : "Varasem diagnoos",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "infections.previous-diagnosis.diagnosis",
              "text" : "Diagnoos",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-nakkushaigused"
            },
            {
              "linkId" : "infections.previous-diagnosis.written-diagnosis",
              "text" : "Sõnaline diagnoos",
              "type" : "string",
              "required" : false,
              "readOnly" : true
            },
            {
              "linkId" : "infections.previous-diagnosis.source-reference",
              "text" : "Allika viide",
              "type" : "reference",
              "required" : true,
              "readOnly" : true
            }
          ]
        },
        {
          "linkId" : "infections.no-known-illness",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "no-known-illness",
              "display" : "Teadaolevalt ei ole põdenud"
            }
          ],
          "text" : "Teadaolevalt ei ole põdenud",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "infections.tuberculosis",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "tuberculosis",
              "display" : "Tuberkuloos"
            }
          ],
          "text" : "Tuberkuloos",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "infections.no-known-illness",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "infections.tuberculosis.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "infections.tuberculosis",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "infections.hepatitis",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "hepatitis",
              "display" : "Viirushepatiidid (A-hepatiit, B-hepatiit, C-hepatiit)"
            }
          ],
          "text" : "Viirushepatiidid (A-hepatiit, B-hepatiit, C-hepatiit)",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "infections.no-known-illness",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "infections.hepatitis.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "infections.hepatitis",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "infections.hiv",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "hiv",
              "display" : "HIV kandja"
            }
          ],
          "text" : "HIV kandja",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "infections.no-known-illness",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "infections.hiv.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "infections.hiv",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "infections.aids",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "aids",
              "display" : "AIDS"
            }
          ],
          "text" : "AIDS",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "infections.no-known-illness",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "infections.aids.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "infections.aids",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "infections.intestinal-infection",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "intestinal-infection",
              "display" : "Soolenakkused (salmonelloos, kampülobakterioos, shigelloos, jersinioos ja rotaviirusenteriit, E. coli soolenakkus, Koolera, kõhutüüfus, paratüüfused, Noroviiruse tekkene äge enteropaatia, giardiaas (lambliaas), krüptosporidioos, amöbiaas, listerioos, helmintiaasid ehk nugiusshaigused, muud toidu- ja joogiveevahenduslikud nakkused)"
            }
          ],
          "text" : "Soolenakkused (salmonelloos, kampülobakterioos, shigelloos, jersinioos ja rotaviirusenteriit, E. coli soolenakkus, Koolera, kõhutüüfus, paratüüfused, Noroviiruse tekkene äge enteropaatia, giardiaas (lambliaas), krüptosporidioos, amöbiaas, listerioos, helmintiaasid ehk nugiusshaigused, muud toidu- ja joogiveevahenduslikud nakkused)",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "infections.no-known-illness",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "infections.intestinal-infection.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "infections.intestinal-infection",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "infections.respiratory-infection",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "respiratory-infection",
              "display" : "Hingamisteede nakkused (difteeria, läkaköha, leetrid, punetised, mumps)"
            }
          ],
          "text" : "Hingamisteede nakkused (difteeria, läkaköha, leetrid, punetised, mumps)",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "infections.no-known-illness",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "infections.respiratory-infection.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "infections.respiratory-infection",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "infections.skin-infection",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "skin-infection",
              "display" : "Nahainfektsioonid (MRSA kandlus, käte nahamädanikud, seenhaigused)"
            }
          ],
          "text" : "Nahainfektsioonid (MRSA kandlus, käte nahamädanikud, seenhaigused)",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "infections.no-known-illness",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "infections.skin-infection.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "infections.skin-infection",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "infections.other-disease",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "other-disease",
              "display" : "Muu haigus"
            }
          ],
          "text" : "Muu haigus",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "infections.no-known-illness",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "infections.other-disease.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification-when-what",
                  "display" : "Palun täpsusta, millised ja millal"
                }
              ],
              "text" : "Palun täpsusta, millised ja millal",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "infections.other-disease",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        }
      ]
    },
    {
      "linkId" : "other-chronic-disorders",
      "code" : [
        {
          "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
          "code" : "other-chronic-disorders",
          "display" : "Muud kroonilised haigused, seisundid või sümptomid, mida eespool ei kirjeldatud"
        }
      ],
      "prefix" : "13",
      "text" : "Muud kroonilised haigused, seisundid või sümptomid, mida eespool ei kirjeldatud",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "other-chronic-disorders.none",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "none-current",
              "display" : "Hetkel puuduvad"
            }
          ],
          "text" : "Hetkel puuduvad",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "other-chronic-disorders.disease-condition-symptom",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "disease-condition-symptom",
              "display" : "Haigus, seisund, sümptom"
            }
          ],
          "text" : "Haigus, seisund, sümptom",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "other-chronic-disorders.none",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "other-chronic-disorders.disease-condition-symptom.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification-when-what",
                  "display" : "Palun täpsusta, millised ja millal"
                }
              ],
              "text" : "Palun täpsusta, millised ja millal",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "other-chronic-disorders.disease-condition-symptom",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        }
      ]
    },
    {
      "linkId" : "previous-treatment",
      "code" : [
        {
          "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
          "code" : "previous-treatment",
          "display" : "Senine ravi"
        }
      ],
      "prefix" : "14",
      "text" : "Senine ravi",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "previous-treatment.treatment-abroad",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "treatment-abroad-five-years",
              "display" : "Kas olete viimase 5 aasta jooksul saanud välismaal haiglaravi või käinud arsti vastuvõtul? Palun täpsustage millal, kus, ja millega seoses"
            }
          ],
          "text" : "Kas olete viimase 5 aasta jooksul saanud välismaal haiglaravi või käinud arsti vastuvõtul? Palun täpsustage millal, kus, ja millega seoses",
          "type" : "boolean",
          "required" : true,
          "item" : [
            {
              "linkId" : "previous-treatment.treatment-abroad.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification-why-where",
                  "display" : "Palun täpsusta millal, kus, ja millega seoses"
                }
              ],
              "text" : "Palun täpsusta millal, kus, ja millega seoses",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "previous-treatment.treatment-abroad",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "previous-treatment.regular-medication",
          "text" : "Regulaarsed ravimid",
          "type" : "group",
          "required" : true,
          "item" : [
            {
              "linkId" : "previous-treatment.regular-medication.regular-medication-women",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "regular-medication-women-nine-months",
                  "display" : "Kas tarvitate regulaarselt mingeid ravimeid (sh rasestumisvastaseid vahendeid)? Palun loetlege, milliseid olete tarvitanud viimase 9 kuu jooksul."
                }
              ],
              "text" : "Kas tarvitate regulaarselt mingeid ravimeid (sh rasestumisvastaseid vahendeid)? Palun loetlege, milliseid olete tarvitanud viimase 9 kuu jooksul.",
              "type" : "boolean",
              "enableWhen" : [
                {
                  "question" : "patient-gender",
                  "operator" : "=",
                  "answerCoding" : {
                    "system" : "http://hl7.org/fhir/administrative-gender",
                    "code" : "female"
                  }
                }
              ],
              "required" : true,
              "item" : [
                {
                  "linkId" : "previous-treatment.regular-medication.regular-medication-women.specification",
                  "code" : [
                    {
                      "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                      "code" : "specification-what",
                      "display" : "Palun loetle, milliseid"
                    }
                  ],
                  "text" : "Palun loetle, milliseid",
                  "type" : "text",
                  "enableWhen" : [
                    {
                      "question" : "previous-treatment.regular-medication.regular-medication-women",
                      "operator" : "=",
                      "answerBoolean" : true
                    }
                  ],
                  "required" : true
                }
              ]
            },
            {
              "linkId" : "previous-treatment.regular-medication.regular-medication-men",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "regular-medication-men-nine-months",
                  "display" : "Kas tarvitate regulaarselt mingeid ravimeid? Palun loetlege, milliseid olete tarvitanud viimase 9 kuu jooksul."
                }
              ],
              "text" : "Kas tarvitate regulaarselt mingeid ravimeid? Palun loetlege, milliseid olete tarvitanud viimase 9 kuu jooksul.",
              "type" : "boolean",
              "enableWhen" : [
                {
                  "question" : "patient-gender",
                  "operator" : "!=",
                  "answerCoding" : {
                    "system" : "http://hl7.org/fhir/administrative-gender",
                    "code" : "female"
                  }
                }
              ],
              "required" : true,
              "item" : [
                {
                  "linkId" : "previous-treatment.regular-medication.regular-medication-men.specification",
                  "code" : [
                    {
                      "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                      "code" : "specification-what",
                      "display" : "Palun loetle, milliseid"
                    }
                  ],
                  "text" : "Palun loetle, milliseid",
                  "type" : "text",
                  "enableWhen" : [
                    {
                      "question" : "previous-treatment.regular-medication.regular-medication-men",
                      "operator" : "=",
                      "answerBoolean" : true
                    }
                  ],
                  "required" : true
                }
              ]
            },
            {
              "linkId" : "previous-treatment.regular-medication.current-prescription",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "current-prescription",
                  "display" : "Viimase 9 kuu jooksul välja kirjutatud retseptid"
                }
              ],
              "text" : "Viimase 9 kuu jooksul välja kirjutatud retseptid",
              "type" : "group",
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "previous-treatment.regular-medication.current-prescription.date",
                  "text" : "Kuupäev",
                  "type" : "date",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "previous-treatment.regular-medication.current-prescription.atc",
                  "text" : "ATC",
                  "type" : "coding",
                  "required" : false,
                  "readOnly" : true
                },
                {
                  "linkId" : "previous-treatment.regular-medication.current-prescription.package",
                  "text" : "Pakend",
                  "type" : "coding",
                  "required" : false,
                  "readOnly" : true
                },
                {
                  "linkId" : "previous-treatment.regular-medication.current-prescription.source-reference",
                  "text" : "Allika viide",
                  "type" : "reference",
                  "required" : true,
                  "readOnly" : true
                }
              ]
            }
          ]
        },
        {
          "linkId" : "previous-treatment.hospitalization",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "hospitalization-five-years",
              "display" : "Kas olete viimase 5 aasta jooksul viibinud haiglaravil? "
            }
          ],
          "text" : "Kas olete viimase 5 aasta jooksul viibinud haiglaravil? ",
          "type" : "boolean",
          "required" : true,
          "item" : [
            {
              "linkId" : "previous-treatment.hospitalization.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "previous-treatment.hospitalization",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false
            },
            {
              "linkId" : "previous-treatment.hospitalization.inpatient-case",
              "text" : "Statsionaarne haigusjuhtum",
              "type" : "group",
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "previous-treatment.hospitalization.inpatient-case.from",
                  "text" : "Alates",
                  "type" : "date",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "previous-treatment.hospitalization.inpatient-case.to",
                  "text" : "Kuni",
                  "type" : "date",
                  "required" : false,
                  "readOnly" : true
                },
                {
                  "linkId" : "previous-treatment.hospitalization.inpatient-case.provider",
                  "text" : "Tervishoiuasutus",
                  "type" : "string",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "previous-treatment.hospitalization.inpatient-case.source-reference",
                  "text" : "Allika viide",
                  "type" : "reference",
                  "required" : true,
                  "readOnly" : true
                }
              ]
            }
          ]
        },
        {
          "linkId" : "previous-treatment.surgeries",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "operations-five-years",
              "display" : "Kas teid on viimase 5 aasta jooksul opereeritud? Palun täpsustage, millal, mille tõttu"
            }
          ],
          "text" : "Kas teid on viimase 5 aasta jooksul opereeritud? Palun täpsustage, millal, mille tõttu",
          "type" : "boolean",
          "required" : true,
          "item" : [
            {
              "linkId" : "previous-treatment.surgeries.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification-why-when",
                  "display" : "Palun täpsusta, millal, mille tõttu"
                }
              ],
              "text" : "Palun täpsusta, millal, mille tõttu",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "previous-treatment.surgeries",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false
            },
            {
              "linkId" : "previous-treatment.surgeries.surgery",
              "text" : "Operatsioon",
              "type" : "group",
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "previous-treatment.surgeries.surgery.surgery-date",
                  "text" : "Kuupäev",
                  "type" : "date",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "previous-treatment.surgeries.surgery.code",
                  "text" : "Operatsioon",
                  "type" : "coding",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "previous-treatment.surgeries.surgery.surgery-add-code",
                  "text" : "Operatsioon lisakoodid",
                  "type" : "coding",
                  "required" : false,
                  "repeats" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "previous-treatment.surgeries.surgery.source-reference",
                  "text" : "Allika viide",
                  "type" : "reference",
                  "required" : true,
                  "readOnly" : true
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "linkId" : "traumas",
      "code" : [
        {
          "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
          "code" : "traumas",
          "display" : "Traumad"
        }
      ],
      "prefix" : "15",
      "text" : "Traumad",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "traumas.previous-diagnosis",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "previous-diagnosis"
            }
          ],
          "text" : "Varasem diagnoos",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "traumas.previous-diagnosis.diagnosis",
              "text" : "Diagnoos",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-traumad"
            },
            {
              "linkId" : "traumas.previous-diagnosis.written-diagnosis",
              "text" : "Sõnaline diagnoos",
              "type" : "string",
              "required" : false,
              "readOnly" : true
            },
            {
              "linkId" : "traumas.previous-diagnosis.source-reference",
              "text" : "Allika viide",
              "type" : "reference",
              "required" : true,
              "readOnly" : true
            }
          ]
        },
        {
          "linkId" : "traumas.none",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "none-current",
              "display" : "Hetkel puuduvad"
            }
          ],
          "text" : "Hetkel puuduvad",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "traumas.fractures",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "fractures",
              "display" : "Luumurrud"
            }
          ],
          "text" : "Luumurrud",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "traumas.none",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "traumas.fractures.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification-when-what",
                  "display" : "Palun täpsusta, millised ja millal"
                }
              ],
              "text" : "Palun täpsusta, millised ja millal",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "traumas.fractures",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "traumas.head-traumas",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "head-traumas",
              "display" : "Rasked peavigastused"
            }
          ],
          "text" : "Rasked peavigastused",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "traumas.none",
              "operator" : "=",
              "answerBoolean" : false
            },
            {
              "question" : "category",
              "operator" : "=",
              "answerCoding" : {
                "system" : "https://fhir.ee/CodeSystem/tervisekontrolli-kasutusala",
                "code" : "occupational"
              }
            }
          ],
          "enableBehavior" : "all",
          "required" : true,
          "item" : [
            {
              "linkId" : "traumas.head-traumas.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "traumas.head-traumas",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "traumas.other-injuries",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "other-injuries",
              "display" : "Muud olulised vigastused"
            }
          ],
          "text" : "Muud olulised vigastused",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "traumas.none",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "traumas.other-injuries.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification-when-what",
                  "display" : "Palun täpsusta, millised ja millal"
                }
              ],
              "text" : "Palun täpsusta, millised ja millal",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "traumas.other-injuries",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        }
      ]
    },
    {
      "linkId" : "pregnancy",
      "code" : [
        {
          "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
          "code" : "pregnancy",
          "display" : "Kas olete praegu rase?"
        }
      ],
      "prefix" : "16",
      "text" : "Kas olete praegu rase?",
      "type" : "boolean",
      "enableWhen" : [
        {
          "question" : "patient-gender",
          "operator" : "=",
          "answerCoding" : {
            "system" : "http://hl7.org/fhir/administrative-gender",
            "code" : "female"
          }
        }
      ],
      "required" : true
    },
    {
      "linkId" : "skin-disorders",
      "code" : [
        {
          "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
          "code" : "skin-disorders-five-years",
          "display" : "Nahahaigused viimase 5 aasta jooksul: millal põdenud, milliseid?"
        }
      ],
      "prefix" : "17",
      "text" : "Nahahaigused viimase 5 aasta jooksul: millal põdenud, milliseid?",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "skin-disorders.previous-diagnosis",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "previous-diagnosis"
            }
          ],
          "text" : "Varasem diagnoos",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "skin-disorders.previous-diagnosis.diagnosis",
              "text" : "Diagnoos",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-nahahaigused"
            },
            {
              "linkId" : "skin-disorders.previous-diagnosis.written-diagnosis",
              "text" : "Sõnaline diagnoos",
              "type" : "string",
              "required" : false,
              "readOnly" : true
            },
            {
              "linkId" : "skin-disorders.previous-diagnosis.source-reference",
              "text" : "Allika viide",
              "type" : "reference",
              "required" : true,
              "readOnly" : true
            }
          ]
        },
        {
          "linkId" : "skin-disorders.skin-conditions",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "skin-disorders-five-years",
              "display" : "Nahahaigused viimase 5 aasta jooksul: millal põdenud, milliseid?"
            }
          ],
          "text" : "Nahahaigused viimase 5 aasta jooksul: millal põdenud, milliseid?",
          "type" : "boolean",
          "required" : true,
          "item" : [
            {
              "linkId" : "skin-disorders.skin-conditions.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "skin-disorders.skin-conditions",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        }
      ]
    },
    {
      "linkId" : "digestive-organs",
      "code" : [
        {
          "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
          "code" : "digestive-organs",
          "display" : "Seedeelundid"
        }
      ],
      "prefix" : "18",
      "text" : "Seedeelundid",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "digestive-organs.previous-diagnosis",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "previous-diagnosis"
            }
          ],
          "text" : "Varasem diagnoos",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "digestive-organs.previous-diagnosis.diagnosis",
              "text" : "Diagnoos",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-seedeelundid"
            },
            {
              "linkId" : "digestive-organs.previous-diagnosis.written-diagnosis",
              "text" : "Sõnaline diagnoos",
              "type" : "string",
              "required" : true,
              "readOnly" : true
            },
            {
              "linkId" : "digestive-organs.previous-diagnosis.source-reference",
              "text" : "Allika viide",
              "type" : "reference",
              "required" : true,
              "readOnly" : true
            }
          ]
        },
        {
          "linkId" : "digestive-organs.no-complaints",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "no-current-complaints",
              "display" : "Kaebused hetkel puuduvad"
            }
          ],
          "text" : "Kaebused hetkel puuduvad",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "digestive-organs.liver-disease",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "liver-disease",
              "display" : "Maksahaigused"
            }
          ],
          "text" : "Maksahaigused",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "digestive-organs.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "digestive-organs.liver-disease.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "digestive-organs.liver-disease",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "digestive-organs.gallstones",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "gallstones",
              "display" : "Sapikivid"
            }
          ],
          "text" : "Sapikivid",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "digestive-organs.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "digestive-organs.gallstones.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "digestive-organs.gallstones",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "digestive-organs.gastric-duodenal-ulcers",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "gastric-duodenal-ulcers",
              "display" : "Mao- ja kaksteistsõrmiksoole haavandid"
            }
          ],
          "text" : "Mao- ja kaksteistsõrmiksoole haavandid",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "digestive-organs.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "digestive-organs.gastric-duodenal-ulcers.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "digestive-organs.gastric-duodenal-ulcers",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "digestive-organs.colitis-crohns-disease",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "colitis-crohns-disease",
              "display" : "Haavandiline koliit või Crohni tõbi"
            }
          ],
          "text" : "Haavandiline koliit või Crohni tõbi",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "digestive-organs.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "digestive-organs.colitis-crohns-disease.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "digestive-organs.colitis-crohns-disease",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "digestive-organs.other-disease-condition-symptom",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "other-disease-condition-symptom",
              "display" : "Muu haigus, seisund, sümptom"
            }
          ],
          "text" : "Muu haigus, seisund, sümptom",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "digestive-organs.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "digestive-organs.other-disease-condition-symptom.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification-when-what",
                  "display" : "Palun täpsusta, millised ja millal"
                }
              ],
              "text" : "Palun täpsusta, millised ja millal",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "digestive-organs.other-disease-condition-symptom",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        }
      ]
    },
    {
      "linkId" : "urogenital-system",
      "code" : [
        {
          "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
          "code" : "urogenital-system",
          "display" : "Kuse- ja suguelundid"
        }
      ],
      "prefix" : "19",
      "text" : "Kuse- ja suguelundid",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "urogenital-system.previous-diagnosis",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "previous-diagnosis"
            }
          ],
          "text" : "Varasem diagnoos",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "urogenital-system.previous-diagnosis.diagnosis",
              "text" : "Diagnoos",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-kuse-ja-suguelundid"
            },
            {
              "linkId" : "urogenital-system.previous-diagnosis.written-diagnosis",
              "text" : "Sõnaline diagnoos",
              "type" : "string",
              "required" : false,
              "readOnly" : true
            },
            {
              "linkId" : "urogenital-system.previous-diagnosis.source-reference",
              "text" : "Allika viide",
              "type" : "reference",
              "required" : true,
              "readOnly" : true
            }
          ]
        },
        {
          "linkId" : "urogenital-system.no-complaints",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "no-current-complaints",
              "display" : "Kaebused hetkel puuduvad"
            }
          ],
          "text" : "Kaebused hetkel puuduvad",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "urogenital-system.kidney-diseases",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "kidney-diseases",
              "display" : "Neerude haigused"
            }
          ],
          "text" : "Neerude haigused",
          "type" : "group",
          "enableWhen" : [
            {
              "question" : "urogenital-system.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "urogenital-system.kidney-diseases.kidney-stones",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "kidney-stones",
                  "display" : "Neerukivitõbi"
                }
              ],
              "text" : "Neerukivitõbi",
              "type" : "boolean",
              "required" : true,
              "item" : [
                {
                  "linkId" : "urogenital-system.kidney-diseases.kidney-stones.specification",
                  "code" : [
                    {
                      "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                      "code" : "specification",
                      "display" : "Palun täpsusta"
                    }
                  ],
                  "text" : "Palun täpsusta",
                  "type" : "text",
                  "enableWhen" : [
                    {
                      "question" : "urogenital-system.kidney-diseases.kidney-stones",
                      "operator" : "=",
                      "answerBoolean" : true
                    }
                  ],
                  "required" : true
                }
              ]
            },
            {
              "linkId" : "urogenital-system.kidney-diseases.renal-insufficiency",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "renal-insufficiency",
                  "display" : "Neerupuudulikkus"
                }
              ],
              "text" : "Neerupuudulikkus",
              "type" : "boolean",
              "required" : true,
              "item" : [
                {
                  "linkId" : "urogenital-system.kidney-diseases.renal-insufficiency.specification",
                  "code" : [
                    {
                      "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                      "code" : "specification",
                      "display" : "Palun täpsusta"
                    }
                  ],
                  "text" : "Palun täpsusta",
                  "type" : "text",
                  "enableWhen" : [
                    {
                      "question" : "urogenital-system.kidney-diseases.renal-insufficiency",
                      "operator" : "=",
                      "answerBoolean" : true
                    }
                  ],
                  "required" : true
                }
              ]
            }
          ]
        },
        {
          "linkId" : "urogenital-system.other-disease-condition-symptom",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "other-disease-condition-symptom",
              "display" : "Muu haigus, seisund, sümptom"
            }
          ],
          "text" : "Muu haigus, seisund, sümptom",
          "type" : "group",
          "enableWhen" : [
            {
              "question" : "urogenital-system.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "urogenital-system.other-disease-condition-symptom.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification-when-what",
                  "display" : "Palun täpsusta, millised ja millal"
                }
              ],
              "text" : "Palun täpsusta, millised ja millal",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "urogenital-system.other-disease-condition-symptom",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        }
      ]
    },
    {
      "linkId" : "blood-problems",
      "code" : [
        {
          "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
          "code" : "blood-problems",
          "display" : "Verehaigused"
        }
      ],
      "prefix" : "20",
      "text" : "Verehaigused",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "blood-problems.previous-diagnosis",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "previous-diagnosis"
            }
          ],
          "text" : "Varasem diagnoos",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "blood-problems.previous-diagnosis.diagnosis",
              "text" : "Diagnoos",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-verehaigused"
            },
            {
              "linkId" : "blood-problems.previous-diagnosis.written-diagnosis",
              "text" : "Sõnaline diagnoos",
              "type" : "string",
              "required" : false,
              "readOnly" : true
            },
            {
              "linkId" : "blood-problems.previous-diagnosis.source-reference",
              "text" : "Allika viide",
              "type" : "reference",
              "required" : true,
              "readOnly" : true
            }
          ]
        },
        {
          "linkId" : "blood-problems.no-complaints",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "no-current-complaints",
              "display" : "Kaebused hetkel puuduvad"
            }
          ],
          "text" : "Kaebused hetkel puuduvad",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "blood-problems.blood-disease",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "blood-disease",
              "display" : "Verehaigused"
            }
          ],
          "text" : "Verehaigused",
          "type" : "group",
          "enableWhen" : [
            {
              "question" : "blood-problems.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "blood-problems.blood-disease.anemia",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "anemia",
                  "display" : "Aneemia ehk kehvveresus"
                }
              ],
              "text" : "Aneemia ehk kehvveresus",
              "type" : "boolean",
              "required" : true,
              "item" : [
                {
                  "linkId" : "blood-problems.blood-disease.anemia.specification",
                  "code" : [
                    {
                      "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                      "code" : "specification",
                      "display" : "Palun täpsusta"
                    }
                  ],
                  "text" : "Palun täpsusta",
                  "type" : "text",
                  "enableWhen" : [
                    {
                      "question" : "blood-problems.blood-disease.anemia",
                      "operator" : "=",
                      "answerBoolean" : true
                    }
                  ],
                  "required" : true
                }
              ]
            }
          ]
        },
        {
          "linkId" : "blood-problems.other-disease-condition-symptom",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "other-disease-condition-symptom",
              "display" : "Muu haigus, seisund, sümptom"
            }
          ],
          "text" : "Muu haigus, seisund, sümptom",
          "type" : "group",
          "enableWhen" : [
            {
              "question" : "blood-problems.no-complaints",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "blood-problems.other-disease-condition-symptom.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification-when-what",
                  "display" : "Palun täpsusta, millised ja millal"
                }
              ],
              "text" : "Palun täpsusta, millised ja millal",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "blood-problems.other-disease-condition-symptom",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        }
      ]
    },
    {
      "linkId" : "medical-devices",
      "code" : [
        {
          "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
          "code" : "medical-devices",
          "display" : "Kasutan järgmisi meditsiiniseadmeid/abivahendeid"
        }
      ],
      "prefix" : "21",
      "text" : "Kasutan järgmisi meditsiiniseadmeid/abivahendeid",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "medical-devices.no-devices",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "no-devices",
              "display" : "Ei kasuta"
            }
          ],
          "text" : "Ei kasuta",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "medical-devices.glasses",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "glasses",
              "display" : "Prillid"
            }
          ],
          "text" : "Prillid",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "medical-devices.no-devices",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "medical-devices.glasses.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "medical-devices.glasses",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "medical-devices.contact-lenses",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "contact-lenses",
              "display" : "Kontaktläätsed"
            }
          ],
          "text" : "Kontaktläätsed",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "medical-devices.no-devices",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "medical-devices.contact-lenses.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "medical-devices.contact-lenses",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "medical-devices.hearing-aid",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "hearing-aid",
              "display" : "Kuuldeaparaat/kohleaarimplantaat"
            }
          ],
          "text" : "Kuuldeaparaat/kohleaarimplantaat",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "medical-devices.no-devices",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "medical-devices.hearing-aid.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "medical-devices.hearing-aid",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "medical-devices.arm-prosthesis",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "arm-prosthesis",
              "display" : "Käeprotees"
            }
          ],
          "text" : "Käeprotees",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "medical-devices.no-devices",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "medical-devices.arm-prosthesis.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "medical-devices.arm-prosthesis",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "medical-devices.leg-prosthesis",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "leg-prosthesis",
              "display" : "Jalaprotees"
            }
          ],
          "text" : "Jalaprotees",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "medical-devices.no-devices",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "medical-devices.leg-prosthesis.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "medical-devices.leg-prosthesis",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "medical-devices.mobility-device",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "mobility-device",
              "display" : "Liikumise abivahend"
            }
          ],
          "text" : "Liikumise abivahend",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "medical-devices.no-devices",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "medical-devices.mobility-device.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "medical-devices.mobility-device",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "medical-devices.cpap",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "cpap",
              "display" : "Positiivrõhuaparaat (CPAP) või mitteinvasiivse ventilatsiooni seade"
            }
          ],
          "text" : "Positiivrõhuaparaat (CPAP) või mitteinvasiivse ventilatsiooni seade",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "medical-devices.no-devices",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true
        },
        {
          "linkId" : "medical-devices.mandibular-splint",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "mandibular-splint",
              "display" : "Intraoraalne uneapnoe seade"
            }
          ],
          "text" : "Intraoraalne uneapnoe seade",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "medical-devices.no-devices",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true
        },
        {
          "linkId" : "medical-devices.other-device",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "other-device",
              "display" : "Muu abivahend"
            }
          ],
          "text" : "Muu abivahend",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "medical-devices.no-devices",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : true,
          "item" : [
            {
              "linkId" : "medical-devices.other-device.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "medical-devices.other-device",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        }
      ]
    },
    {
      "linkId" : "sleep",
      "code" : [
        {
          "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
          "code" : "sleep",
          "display" : "Uni"
        }
      ],
      "prefix" : "22",
      "text" : "Uni",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "sleep.previous-diagnosis",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "previous-diagnosis"
            }
          ],
          "text" : "Varasem diagnoos",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "sleep.previous-diagnosis.diagnosis",
              "text" : "Diagnoos",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-uni"
            },
            {
              "linkId" : "sleep.previous-diagnosis.written-diagnosis",
              "text" : "Sõnaline diagnoos",
              "type" : "string",
              "required" : false,
              "readOnly" : true
            },
            {
              "linkId" : "sleep.previous-diagnosis.source-reference",
              "text" : "Allika viide",
              "type" : "reference",
              "required" : true,
              "readOnly" : true
            }
          ]
        },
        {
          "linkId" : "sleep.loud-snoring",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "loud-snoring",
              "display" : "Kas Te norskate valjult (valjemini kui tavaline kõne, või Teie norskamist on kosta kõrvalruumi ka siis, kui magamistoa uks on suletud)?"
            }
          ],
          "text" : "Kas Te norskate valjult (valjemini kui tavaline kõne, või Teie norskamist on kosta kõrvalruumi ka siis, kui magamistoa uks on suletud)?",
          "type" : "boolean",
          "required" : true,
          "item" : [
            {
              "linkId" : "sleep.loud-snoring.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "sleep.loud-snoring",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "sleep.fatigue",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "fatigue",
              "display" : "Kas Te tunnete end sageli mitteväljapuhanuna, väsinuna või unisena päevasel ajal?"
            }
          ],
          "text" : "Kas Te tunnete end sageli mitteväljapuhanuna, väsinuna või unisena päevasel ajal?",
          "type" : "boolean",
          "required" : true,
          "item" : [
            {
              "linkId" : "sleep.fatigue.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "sleep.fatigue",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "sleep.breath-stop-sleep",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "breath-stop-sleep",
              "display" : "Kas Teil on täheldatud uneaegseid hingamisseisakuid?"
            }
          ],
          "text" : "Kas Teil on täheldatud uneaegseid hingamisseisakuid?",
          "type" : "boolean",
          "required" : true,
          "item" : [
            {
              "linkId" : "sleep.breath-stop-sleep.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "sleep.breath-stop-sleep",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        }
      ]
    },
    {
      "linkId" : "health-assessment",
      "code" : [
        {
          "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
          "code" : "health-assessment",
          "display" : "Hinnang enda terviseseisundile"
        }
      ],
      "prefix" : "23",
      "text" : "Hinnang enda terviseseisundile",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "health-assessment.illness-past-year",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "illness-past-year",
              "display" : "Kas olete viimase aasta jooksul olnud haige?"
            }
          ],
          "text" : "Kas olete viimase aasta jooksul olnud haige?",
          "type" : "boolean",
          "required" : true,
          "item" : [
            {
              "linkId" : "health-assessment.illness-past-year.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "health-assessment.illness-past-year",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "health-assessment.complaints",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "complaints",
              "display" : "Kas Teil on enda tervise osas kaebusi?"
            }
          ],
          "text" : "Kas Teil on enda tervise osas kaebusi?",
          "type" : "boolean",
          "required" : true,
          "item" : [
            {
              "linkId" : "health-assessment.complaints.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "health-assessment.complaints",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            }
          ]
        },
        {
          "linkId" : "health-assessment.sick-leave-certs",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "sick-leave-certs",
              "display" : "Haiguslehed"
            }
          ],
          "text" : "Haiguslehed",
          "type" : "group",
          "required" : true,
          "item" : [
            {
              "linkId" : "health-assessment.sick-leave-certs.foreign-sick-leave-cert-length",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "foreign-sick-leave-cert-length",
                  "display" : "Viimase 5 aasta jooksul välisriigis väljastatud haiguslehtede alguse kuupäev ja kestvus päevades"
                }
              ],
              "text" : "Viimase 5 aasta jooksul välisriigis väljastatud haiguslehtede alguse kuupäev ja kestvus päevades",
              "type" : "text",
              "required" : false
            },
            {
              "linkId" : "health-assessment.sick-leave-certs.sick-leave-cert",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "sick-leave",
                  "display" : "Haigusleht"
                }
              ],
              "text" : "Haigusleht",
              "type" : "group",
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "health-assessment.sick-leave-certs.sick-leave-cert.from",
                  "text" : "Alates",
                  "type" : "date",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "health-assessment.sick-leave-certs.sick-leave-cert.duration",
                  "text" : "Kestus päevades",
                  "type" : "integer",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "health-assessment.sick-leave-certs.sick-leave-cert.diagnosis",
                  "text" : "Diagnoos",
                  "type" : "coding",
                  "required" : true,
                  "readOnly" : true
                }
              ]
            }
          ]
        },
        {
          "linkId" : "health-assessment.partial-work-capacity-loss",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "partial-work-capacity-loss",
              "display" : "Osaline töövõime"
            }
          ],
          "text" : "Osaline töövõime",
          "type" : "group",
          "required" : true,
          "item" : [
            {
              "linkId" : "health-assessment.partial-work-capacity-loss.partial-work-capacity-loss-abroad",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "partial-work-capacity-loss-abroad",
                  "display" : "Kas Teile on välisriigis määratud töövõime osaline kaotus?"
                }
              ],
              "text" : "Kas Teile on välisriigis määratud töövõime osaline kaotus?",
              "type" : "boolean",
              "required" : true,
              "item" : [
                {
                  "linkId" : "health-assessment.partial-work-capacity-loss.partial-work-capacity-loss-abroad.specification",
                  "code" : [
                    {
                      "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                      "code" : "specification",
                      "display" : "Täpsusta"
                    }
                  ],
                  "text" : "Täpsusta",
                  "type" : "text",
                  "enableWhen" : [
                    {
                      "question" : "health-assessment.partial-work-capacity-loss.partial-work-capacity-loss-abroad",
                      "operator" : "=",
                      "answerBoolean" : true
                    }
                  ],
                  "required" : true
                }
              ]
            },
            {
              "linkId" : "health-assessment.partial-work-capacity-loss.partial-work-disability",
              "text" : "Osaline töövõimetus (andmed Sotsiaalkindlustusametist)",
              "type" : "group",
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "health-assessment.partial-work-capacity-loss.partial-work-disability.from",
                  "text" : "Alates",
                  "type" : "date",
                  "required" : false,
                  "readOnly" : true
                },
                {
                  "linkId" : "health-assessment.partial-work-capacity-loss.partial-work-disability.to",
                  "text" : "kuni",
                  "type" : "date",
                  "required" : false,
                  "readOnly" : true
                },
                {
                  "linkId" : "health-assessment.partial-work-capacity-loss.partial-work-disability.work-capacity-type",
                  "code" : [
                    {
                      "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                      "code" : "work-capacity-type",
                      "display" : "Töövõimeliik"
                    }
                  ],
                  "text" : "Töövõimeliik",
                  "type" : "coding",
                  "required" : true,
                  "readOnly" : true,
                  "answerValueSet" : "https://fhir.ee/ValueSet/toovoime-liik"
                }
              ]
            }
          ]
        },
        {
          "linkId" : "health-assessment.disability",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "disability",
              "display" : "Puue"
            }
          ],
          "text" : "Puue",
          "type" : "group",
          "required" : true,
          "item" : [
            {
              "linkId" : "health-assessment.disability.disability-abroad",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "disability-abroad",
                  "display" : "Kas Teil on välisriigis tuvastatud puue?"
                }
              ],
              "text" : "Kas Teil on välisriigis tuvastatud puue?",
              "type" : "boolean",
              "required" : true,
              "item" : [
                {
                  "linkId" : "health-assessment.disability.disability-abroad.disability-severity",
                  "code" : [
                    {
                      "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                      "code" : "disability-severity",
                      "display" : "Puude raskusaste"
                    }
                  ],
                  "text" : "Puude raskusaste",
                  "type" : "string",
                  "enableWhen" : [
                    {
                      "question" : "health-assessment.disability.disability-abroad",
                      "operator" : "=",
                      "answerBoolean" : true
                    }
                  ],
                  "required" : true
                }
              ]
            },
            {
              "linkId" : "health-assessment.disability.disability-data",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "disability-data",
                  "display" : "Puue (andmed Sotsiaalkindlustusametist)"
                }
              ],
              "text" : "Puue (andmed Sotsiaalkindlustusametist)",
              "type" : "group",
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "health-assessment.disability.disability-data.from",
                  "text" : "Alates",
                  "type" : "date",
                  "required" : false,
                  "readOnly" : true
                },
                {
                  "linkId" : "health-assessment.disability.disability-data.to",
                  "text" : "kuni",
                  "type" : "date",
                  "required" : false,
                  "readOnly" : true
                },
                {
                  "linkId" : "health-assessment.disability.disability-data.disability-severity",
                  "text" : "Puude raskusaste",
                  "type" : "coding",
                  "required" : true,
                  "readOnly" : true,
                  "answerValueSet" : "https://fhir.ee/ValueSet/puude-raskusaste"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "linkId" : "immunization",
      "code" : [
        {
          "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
          "code" : "immunization",
          "display" : "Immuniseerimine"
        }
      ],
      "prefix" : "24",
      "text" : "Immuniseerimine",
      "type" : "group",
      "enableWhen" : [
        {
          "question" : "category",
          "operator" : "=",
          "answerCoding" : {
            "system" : "https://fhir.ee/CodeSystem/tervisekontrolli-kasutusala",
            "code" : "occupational"
          }
        }
      ],
      "required" : true,
      "item" : [
        {
          "linkId" : "immunization.b-hepatitis",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/vaktsiinvalditavad-haigused",
              "code" : "101"
            }
          ],
          "text" : "B-viirushepatiit",
          "type" : "group",
          "required" : true,
          "item" : [
            {
              "linkId" : "immunization.b-hepatitis.vac-done",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "hepatitis-B-vac",
                  "display" : "Kas Teile on tehtud B-viirushepatiidi vaktsiin?"
                }
              ],
              "text" : "Kas Teile on tehtud B-viirushepatiidi vaktsiin?",
              "type" : "boolean",
              "required" : true
            },
            {
              "linkId" : "immunization.b-hepatitis.immunization-his-data",
              "text" : "Immuniseerimine",
              "type" : "group",
              "enableWhen" : [
                {
                  "question" : "immunization.b-hepatitis.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "immunization.b-hepatitis.immunization-his-data.date",
                  "text" : "Kuupäev",
                  "type" : "date",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "immunization.b-hepatitis.immunization-his-data.source-reference",
                  "text" : "Allika viide",
                  "type" : "reference",
                  "required" : true,
                  "readOnly" : true
                }
              ]
            },
            {
              "linkId" : "immunization.b-hepatitis.date",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "date",
                  "display" : "Kuupäev"
                }
              ],
              "text" : "Kuupäev",
              "type" : "date",
              "enableWhen" : [
                {
                  "question" : "immunization.b-hepatitis.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true
            }
          ]
        },
        {
          "linkId" : "immunization.tuberculosis",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/vaktsiinvalditavad-haigused",
              "code" : "110"
            }
          ],
          "text" : "Tuberkuloos",
          "type" : "group",
          "required" : true,
          "item" : [
            {
              "linkId" : "immunization.tuberculosis.vac-done",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "tuberculosis-vac",
                  "display" : "Kas Teile on tehtud tuberkuloosi vaktsiin?"
                }
              ],
              "text" : "Kas Teile on tehtud tuberkuloosi vaktsiin?",
              "type" : "boolean",
              "required" : true
            },
            {
              "linkId" : "immunization.tuberculosis.immunization-his-data",
              "text" : "Immuniseerimine",
              "type" : "group",
              "enableWhen" : [
                {
                  "question" : "immunization.tuberculosis.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "immunization.tuberculosis.immunization-his-data.date",
                  "text" : "Kuupäev",
                  "type" : "date",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "immunization.tuberculosis.immunization-his-data.source-reference",
                  "text" : "Allika viide",
                  "type" : "reference",
                  "required" : true,
                  "readOnly" : true
                }
              ]
            },
            {
              "linkId" : "immunization.tuberculosis.date",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "date",
                  "display" : "Kuupäev"
                }
              ],
              "text" : "Kuupäev",
              "type" : "date",
              "enableWhen" : [
                {
                  "question" : "immunization.tuberculosis.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true
            }
          ]
        },
        {
          "linkId" : "immunization.rotavirus",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/vaktsiinvalditavad-haigused",
              "code" : "111"
            }
          ],
          "text" : "Rotaviirus",
          "type" : "group",
          "required" : true,
          "item" : [
            {
              "linkId" : "immunization.rotavirus.vac-done",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "rotavirus-vac",
                  "display" : "Kas Teile on tehtud rotaviirusnakkuse vaktsiin?"
                }
              ],
              "text" : "Kas Teile on tehtud rotaviirusnakkuse vaktsiin?",
              "type" : "boolean",
              "required" : true
            },
            {
              "linkId" : "immunization.rotavirus.immunization-his-data",
              "text" : "Immuniseerimine",
              "type" : "group",
              "enableWhen" : [
                {
                  "question" : "immunization.rotavirus.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "immunization.rotavirus.immunization-his-data.date",
                  "text" : "Kuupäev",
                  "type" : "date",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "immunization.rotavirus.immunization-his-data.source-reference",
                  "text" : "Allika viide",
                  "type" : "reference",
                  "required" : true,
                  "readOnly" : true
                }
              ]
            },
            {
              "linkId" : "immunization.rotavirus.date",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "date",
                  "display" : "Kuupäev"
                }
              ],
              "text" : "Kuupäev",
              "type" : "date",
              "enableWhen" : [
                {
                  "question" : "immunization.rotavirus.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true
            }
          ]
        },
        {
          "linkId" : "immunization.diphteria",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/vaktsiinvalditavad-haigused",
              "code" : "102"
            }
          ],
          "text" : "Difteeria",
          "type" : "group",
          "required" : true,
          "item" : [
            {
              "linkId" : "immunization.diphteria.vac-done",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "diphtheria-vac",
                  "display" : "Kas Teile on tehtud difteeria vaktsiin?"
                }
              ],
              "text" : "Kas Teile on tehtud difteeria vaktsiin?",
              "type" : "boolean",
              "required" : true
            },
            {
              "linkId" : "immunization.diphteria.immunization-his-data",
              "text" : "Immuniseerimine",
              "type" : "group",
              "enableWhen" : [
                {
                  "question" : "immunization.diphteria.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "immunization.diphteria.immunization-his-data.date",
                  "text" : "Kuupäev",
                  "type" : "date",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "immunization.diphteria.immunization-his-data.source-reference",
                  "text" : "Allika viide",
                  "type" : "reference",
                  "required" : true,
                  "readOnly" : true
                }
              ]
            },
            {
              "linkId" : "immunization.diphteria.date",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "date",
                  "display" : "Kuupäev"
                }
              ],
              "text" : "Kuupäev",
              "type" : "date",
              "enableWhen" : [
                {
                  "question" : "immunization.diphteria.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true
            }
          ]
        },
        {
          "linkId" : "immunization.tetanus",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/vaktsiinvalditavad-haigused",
              "code" : "109"
            }
          ],
          "text" : "Teetanus",
          "type" : "group",
          "required" : true,
          "item" : [
            {
              "linkId" : "immunization.tetanus.vac-done",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "tetanus-vac",
                  "display" : "Kas Teile on tehtud teetanuse vaktsiin?"
                }
              ],
              "text" : "Kas Teile on tehtud teetanuse vaktsiin?",
              "type" : "boolean",
              "required" : true
            },
            {
              "linkId" : "immunization.tetanus.immunization-his-data",
              "text" : "Immuniseerimine",
              "type" : "group",
              "enableWhen" : [
                {
                  "question" : "immunization.tetanus.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "immunization.tetanus.immunization-his-data.date",
                  "text" : "Kuupäev",
                  "type" : "date",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "immunization.tetanus.immunization-his-data.source-reference",
                  "text" : "Allika viide",
                  "type" : "reference",
                  "required" : true,
                  "readOnly" : true
                }
              ]
            },
            {
              "linkId" : "immunization.tetanus.date",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "date",
                  "display" : "Kuupäev"
                }
              ],
              "text" : "Kuupäev",
              "type" : "date",
              "enableWhen" : [
                {
                  "question" : "immunization.tetanus.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true
            }
          ]
        },
        {
          "linkId" : "immunization.pertussis",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/vaktsiinvalditavad-haigused",
              "code" : "105"
            }
          ],
          "text" : "Läkaköha",
          "type" : "group",
          "required" : true,
          "item" : [
            {
              "linkId" : "immunization.pertussis.vac-done",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "pertussis-vac",
                  "display" : "Kas Teile on tehtud atsellulaarse läkaköha vaktsiin?"
                }
              ],
              "text" : "Kas Teile on tehtud atsellulaarse läkaköha vaktsiin?",
              "type" : "boolean",
              "required" : true
            },
            {
              "linkId" : "immunization.pertussis.immunization-his-data",
              "text" : "Immuniseerimine",
              "type" : "group",
              "enableWhen" : [
                {
                  "question" : "immunization.pertussis.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "immunization.pertussis.immunization-his-data.date",
                  "text" : "Kuupäev",
                  "type" : "date",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "immunization.pertussis.immunization-his-data.source-reference",
                  "text" : "Allika viide",
                  "type" : "reference",
                  "required" : true,
                  "readOnly" : true
                }
              ]
            },
            {
              "linkId" : "immunization.pertussis.date",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "date",
                  "display" : "Kuupäev"
                }
              ],
              "text" : "Kuupäev",
              "type" : "date",
              "enableWhen" : [
                {
                  "question" : "immunization.pertussis.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true
            }
          ]
        },
        {
          "linkId" : "immunization.polio",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/vaktsiinvalditavad-haigused",
              "code" : "107"
            }
          ],
          "text" : "Poliomüeliit",
          "type" : "group",
          "required" : true,
          "item" : [
            {
              "linkId" : "immunization.polio.vac-done",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "poliovirus-vac",
                  "display" : "Kas Teile on tehtud inaktiveeritud poliomüeliidi vaktsiin?"
                }
              ],
              "text" : "Kas Teile on tehtud inaktiveeritud poliomüeliidi vaktsiin?",
              "type" : "boolean",
              "required" : true
            },
            {
              "linkId" : "immunization.polio.immunization-his-data",
              "text" : "Immuniseerimine",
              "type" : "group",
              "enableWhen" : [
                {
                  "question" : "immunization.polio.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "immunization.polio.immunization-his-data.date",
                  "text" : "Kuupäev",
                  "type" : "date",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "immunization.polio.immunization-his-data.source-reference",
                  "text" : "Allika viide",
                  "type" : "reference",
                  "required" : true,
                  "readOnly" : true
                }
              ]
            },
            {
              "linkId" : "immunization.polio.date",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "date",
                  "display" : "Kuupäev"
                }
              ],
              "text" : "Kuupäev",
              "type" : "date",
              "enableWhen" : [
                {
                  "question" : "immunization.polio.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true
            }
          ]
        },
        {
          "linkId" : "immunization.hemo-influenza",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/vaktsiinvalditavad-haigused",
              "code" : "103"
            }
          ],
          "text" : "Influensa",
          "type" : "group",
          "required" : true,
          "item" : [
            {
              "linkId" : "immunization.hemo-influenza.vac-done",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "haemophilus-influenzae-vac",
                  "display" : "Kas Teile on tehtud Haemophilus influenzae tüüp b nakkuse vaktsiin?"
                }
              ],
              "text" : "Kas Teile on tehtud Haemophilus influenzae tüüp b nakkuse vaktsiin?",
              "type" : "boolean",
              "required" : true
            },
            {
              "linkId" : "immunization.hemo-influenza.immunization-his-data",
              "text" : "Immuniseerimine",
              "type" : "group",
              "enableWhen" : [
                {
                  "question" : "immunization.hemo-influenza.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "immunization.hemo-influenza.immunization-his-data.date",
                  "text" : "Kuupäev",
                  "type" : "date",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "immunization.hemo-influenza.immunization-his-data.source-reference",
                  "text" : "Allika viide",
                  "type" : "reference",
                  "required" : true,
                  "readOnly" : true
                }
              ]
            },
            {
              "linkId" : "immunization.hemo-influenza.date",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "date",
                  "display" : "Kuupäev"
                }
              ],
              "text" : "Kuupäev",
              "type" : "date",
              "enableWhen" : [
                {
                  "question" : "immunization.hemo-influenza.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true
            }
          ]
        },
        {
          "linkId" : "immunization.measles",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/vaktsiinvalditavad-haigused",
              "code" : "104"
            }
          ],
          "text" : "Leetrid",
          "type" : "group",
          "required" : true,
          "item" : [
            {
              "linkId" : "immunization.measles.vac-done",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "measles-vac",
                  "display" : "Kas Teile on tehtud leetrite vaktsiin?"
                }
              ],
              "text" : "Kas Teile on tehtud leetrite vaktsiin?",
              "type" : "boolean",
              "required" : true
            },
            {
              "linkId" : "immunization.measles.immunization-his-data",
              "text" : "Immuniseerimine",
              "type" : "group",
              "enableWhen" : [
                {
                  "question" : "immunization.measles.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "immunization.measles.immunization-his-data.date",
                  "text" : "Kuupäev",
                  "type" : "date",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "immunization.measles.immunization-his-data.source-reference",
                  "text" : "Allika viide",
                  "type" : "reference",
                  "required" : true,
                  "readOnly" : true
                }
              ]
            },
            {
              "linkId" : "immunization.measles.date",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "date",
                  "display" : "Kuupäev"
                }
              ],
              "text" : "Kuupäev",
              "type" : "date",
              "enableWhen" : [
                {
                  "question" : "immunization.measles.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true
            }
          ]
        },
        {
          "linkId" : "immunization.mumps",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/vaktsiinvalditavad-haigused",
              "code" : "106"
            }
          ],
          "text" : "Mumps",
          "type" : "group",
          "required" : true,
          "item" : [
            {
              "linkId" : "immunization.mumps.vac-done",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "mumps-vac",
                  "display" : "Kas Teile on tehtud mumpsi vaktsiin?"
                }
              ],
              "text" : "Kas Teile on tehtud mumpsi vaktsiin?",
              "type" : "boolean",
              "required" : true
            },
            {
              "linkId" : "immunization.mumps.immunization-his-data",
              "text" : "Immuniseerimine",
              "type" : "group",
              "enableWhen" : [
                {
                  "question" : "immunization.mumps.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "immunization.mumps.immunization-his-data.date",
                  "text" : "Kuupäev",
                  "type" : "date",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "immunization.mumps.immunization-his-data.source-reference",
                  "text" : "Allika viide",
                  "type" : "reference",
                  "required" : true,
                  "readOnly" : true
                }
              ]
            },
            {
              "linkId" : "immunization.mumps.date",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "date",
                  "display" : "Kuupäev"
                }
              ],
              "text" : "Kuupäev",
              "type" : "date",
              "enableWhen" : [
                {
                  "question" : "immunization.mumps.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true
            }
          ]
        },
        {
          "linkId" : "immunization.rubella",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/vaktsiinvalditavad-haigused",
              "code" : "108"
            }
          ],
          "text" : "Punetised",
          "type" : "group",
          "required" : true,
          "item" : [
            {
              "linkId" : "immunization.rubella.vac-done",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "rubella-vac",
                  "display" : "Kas Teile on tehtud punetiste vaktsiin?"
                }
              ],
              "text" : "Kas Teile on tehtud punetiste vaktsiin?",
              "type" : "boolean",
              "required" : true
            },
            {
              "linkId" : "immunization.rubella.immunization-his-data",
              "text" : "Immuniseerimine",
              "type" : "group",
              "enableWhen" : [
                {
                  "question" : "immunization.rubella.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "immunization.rubella.immunization-his-data.date",
                  "text" : "Kuupäev",
                  "type" : "date",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "immunization.rubella.immunization-his-data.source-reference",
                  "text" : "Allika viide",
                  "type" : "reference",
                  "required" : true,
                  "readOnly" : true
                }
              ]
            },
            {
              "linkId" : "immunization.rubella.date",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "date",
                  "display" : "Kuupäev"
                }
              ],
              "text" : "Kuupäev",
              "type" : "date",
              "enableWhen" : [
                {
                  "question" : "immunization.rubella.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true
            }
          ]
        },
        {
          "linkId" : "immunization.hpv",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/vaktsiinvalditavad-haigused",
              "code" : "203"
            }
          ],
          "text" : "HPV",
          "type" : "group",
          "required" : true,
          "item" : [
            {
              "linkId" : "immunization.hpv.vac-done",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "hpv-vac",
                  "display" : "Kas Teile on tehtud papilloomiviirusnakkuse vaktsiin?"
                }
              ],
              "text" : "Kas Teile on tehtud papilloomiviirusnakkuse vaktsiin?",
              "type" : "boolean",
              "required" : true
            },
            {
              "linkId" : "immunization.hpv.immunization-his-data",
              "text" : "Immuniseerimine",
              "type" : "group",
              "enableWhen" : [
                {
                  "question" : "immunization.hpv.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "immunization.hpv.immunization-his-data.date",
                  "text" : "Kuupäev",
                  "type" : "date",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "immunization.hpv.immunization-his-data.source-reference",
                  "text" : "Allika viide",
                  "type" : "reference",
                  "required" : true,
                  "readOnly" : true
                }
              ]
            },
            {
              "linkId" : "immunization.hpv.date",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "date",
                  "display" : "Kuupäev"
                }
              ],
              "text" : "Kuupäev",
              "type" : "date",
              "enableWhen" : [
                {
                  "question" : "immunization.hpv.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true
            }
          ]
        },
        {
          "linkId" : "immunization.covid",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/vaktsiinvalditavad-haigused",
              "code" : "219"
            }
          ],
          "text" : "COVID",
          "type" : "group",
          "required" : true,
          "item" : [
            {
              "linkId" : "immunization.covid.vac-done",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "covid-vac",
                  "display" : "Kas Teile on tehtud COVID vaktsiin?"
                }
              ],
              "text" : "Kas Teile on tehtud COVID vaktsiin?",
              "type" : "boolean",
              "required" : true
            },
            {
              "linkId" : "immunization.covid.immunization-his-data",
              "text" : "Immuniseerimine",
              "type" : "group",
              "enableWhen" : [
                {
                  "question" : "immunization.covid.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "immunization.covid.immunization-his-data.date",
                  "text" : "Kuupäev",
                  "type" : "date",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "immunization.covid.immunization-his-data.source-reference",
                  "text" : "Allika viide",
                  "type" : "reference",
                  "required" : true,
                  "readOnly" : true
                }
              ]
            },
            {
              "linkId" : "immunization.covid.date",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "date",
                  "display" : "Kuupäev"
                }
              ],
              "text" : "Kuupäev",
              "type" : "date",
              "enableWhen" : [
                {
                  "question" : "immunization.covid.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true
            }
          ]
        },
        {
          "linkId" : "immunization.flu",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/vaktsiinvalditavad-haigused",
              "code" : "202"
            }
          ],
          "text" : "Gripiviirus",
          "type" : "group",
          "required" : true,
          "item" : [
            {
              "linkId" : "immunization.flu.vac-done",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "influenza-vac",
                  "display" : "Kas Teile on tehtud gripivaktsiin?"
                }
              ],
              "text" : "Kas Teile on tehtud gripivaktsiin?",
              "type" : "boolean",
              "required" : true
            },
            {
              "linkId" : "immunization.flu.immunization-his-data",
              "text" : "Immuniseerimine",
              "type" : "group",
              "enableWhen" : [
                {
                  "question" : "immunization.flu.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "immunization.flu.immunization-his-data.date",
                  "text" : "Kuupäev",
                  "type" : "date",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "immunization.flu.immunization-his-data.source-reference",
                  "text" : "Allika viide",
                  "type" : "reference",
                  "required" : true,
                  "readOnly" : true
                }
              ]
            },
            {
              "linkId" : "immunization.flu.date",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "date",
                  "display" : "Kuupäev"
                }
              ],
              "text" : "Kuupäev",
              "type" : "date",
              "enableWhen" : [
                {
                  "question" : "immunization.flu.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true
            }
          ]
        },
        {
          "linkId" : "immunization.pneumococcus",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/vaktsiinvalditavad-haigused",
              "code" : "210"
            }
          ],
          "text" : "Pneumokokk",
          "type" : "group",
          "required" : true,
          "item" : [
            {
              "linkId" : "immunization.pneumococcus.vac-done",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "pneumococcus-vac",
                  "display" : "Kas Teile on tehtud pneumokoki vaktsiin?"
                }
              ],
              "text" : "Kas Teile on tehtud pneumokoki vaktsiin?",
              "type" : "boolean",
              "required" : true
            },
            {
              "linkId" : "immunization.pneumococcus.immunization-his-data",
              "text" : "Immuniseerimine",
              "type" : "group",
              "enableWhen" : [
                {
                  "question" : "immunization.pneumococcus.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "immunization.pneumococcus.immunization-his-data.date",
                  "text" : "Kuupäev",
                  "type" : "date",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "immunization.pneumococcus.immunization-his-data.source-reference",
                  "text" : "Allika viide",
                  "type" : "reference",
                  "required" : true,
                  "readOnly" : true
                }
              ]
            },
            {
              "linkId" : "immunization.pneumococcus.date",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "date",
                  "display" : "Kuupäev"
                }
              ],
              "text" : "Kuupäev",
              "type" : "date",
              "enableWhen" : [
                {
                  "question" : "immunization.pneumococcus.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true
            }
          ]
        },
        {
          "linkId" : "immunization.a-hepatitis",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/vaktsiinvalditavad-haigused",
              "code" : "201"
            }
          ],
          "text" : "A-hepatiit",
          "type" : "group",
          "required" : true,
          "item" : [
            {
              "linkId" : "immunization.a-hepatitis.vac-done",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "hepatitis-A-vac",
                  "display" : "Kas Teile on tehtud A-hepatiidi vaktsiin?"
                }
              ],
              "text" : "Kas Teile on tehtud A-hepatiidi vaktsiin?",
              "type" : "boolean",
              "required" : true
            },
            {
              "linkId" : "immunization.a-hepatitis.immunization-his-data",
              "text" : "Immuniseerimine",
              "type" : "group",
              "enableWhen" : [
                {
                  "question" : "immunization.a-hepatitis.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "immunization.a-hepatitis.immunization-his-data.date",
                  "text" : "Kuupäev",
                  "type" : "date",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "immunization.a-hepatitis.immunization-his-data.source-reference",
                  "text" : "Allika viide",
                  "type" : "reference",
                  "required" : true,
                  "readOnly" : true
                }
              ]
            },
            {
              "linkId" : "immunization.a-hepatitis.date",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "date",
                  "display" : "Kuupäev"
                }
              ],
              "text" : "Kuupäev",
              "type" : "date",
              "enableWhen" : [
                {
                  "question" : "immunization.a-hepatitis.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true
            }
          ]
        },
        {
          "linkId" : "immunization.varicella",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/vaktsiinvalditavad-haigused",
              "code" : "213"
            }
          ],
          "text" : "Tuulerõuged",
          "type" : "group",
          "required" : true,
          "item" : [
            {
              "linkId" : "immunization.varicella.vac-done",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "varicella-vac",
                  "display" : "Kas Teile on tehtud tuulerõugete vaktsiin?"
                }
              ],
              "text" : "Kas Teile on tehtud tuulerõugete vaktsiin?",
              "type" : "boolean",
              "required" : true
            },
            {
              "linkId" : "immunization.varicella.immunization-his-data",
              "text" : "Immuniseerimine",
              "type" : "group",
              "enableWhen" : [
                {
                  "question" : "immunization.varicella.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "immunization.varicella.immunization-his-data.date",
                  "text" : "Kuupäev",
                  "type" : "date",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "immunization.varicella.immunization-his-data.source-reference",
                  "text" : "Allika viide",
                  "type" : "reference",
                  "required" : true,
                  "readOnly" : true
                }
              ]
            },
            {
              "linkId" : "immunization.varicella.date",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "date",
                  "display" : "Kuupäev"
                }
              ],
              "text" : "Kuupäev",
              "type" : "date",
              "enableWhen" : [
                {
                  "question" : "immunization.varicella.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true
            }
          ]
        },
        {
          "linkId" : "immunization.shingles",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/vaktsiinvalditavad-haigused",
              "code" : "216"
            }
          ],
          "text" : "Vöötohatis",
          "type" : "group",
          "required" : true,
          "item" : [
            {
              "linkId" : "immunization.shingles.vac-done",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "herpes-zoster-vac",
                  "display" : "Kas Teile on tehtud vöötohatise vaktsiin?"
                }
              ],
              "text" : "Kas Teile on tehtud vöötohatise vaktsiin?",
              "type" : "boolean",
              "required" : true
            },
            {
              "linkId" : "immunization.shingles.immunization-his-data",
              "text" : "Immuniseerimine",
              "type" : "group",
              "enableWhen" : [
                {
                  "question" : "immunization.shingles.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "immunization.shingles.immunization-his-data.date",
                  "text" : "Kuupäev",
                  "type" : "date",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "immunization.shingles.immunization-his-data.source-reference",
                  "text" : "Allika viide",
                  "type" : "reference",
                  "required" : true,
                  "readOnly" : true
                }
              ]
            },
            {
              "linkId" : "immunization.shingles.date",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "date",
                  "display" : "Kuupäev"
                }
              ],
              "text" : "Kuupäev",
              "type" : "date",
              "enableWhen" : [
                {
                  "question" : "immunization.shingles.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true
            }
          ]
        },
        {
          "linkId" : "immunization.meningococcus",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/vaktsiinvalditavad-haigused",
              "code" : "209"
            }
          ],
          "text" : "Meningokokk",
          "type" : "group",
          "required" : true,
          "item" : [
            {
              "linkId" : "immunization.meningococcus.vac-done",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "meningococcus-vac",
                  "display" : "Kas Teile on tehtud meningokokk-nakkuse vaktsiin?"
                }
              ],
              "text" : "Kas Teile on tehtud meningokokk-nakkuse vaktsiin?",
              "type" : "boolean",
              "required" : true
            },
            {
              "linkId" : "immunization.meningococcus.immunization-his-data",
              "text" : "Immuniseerimine",
              "type" : "group",
              "enableWhen" : [
                {
                  "question" : "immunization.meningococcus.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "immunization.meningococcus.immunization-his-data.date",
                  "text" : "Kuupäev",
                  "type" : "date",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "immunization.meningococcus.immunization-his-data.source-reference",
                  "text" : "Allika viide",
                  "type" : "reference",
                  "required" : true,
                  "readOnly" : true
                }
              ]
            },
            {
              "linkId" : "immunization.meningococcus.date",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "date",
                  "display" : "Kuupäev"
                }
              ],
              "text" : "Kuupäev",
              "type" : "date",
              "enableWhen" : [
                {
                  "question" : "immunization.meningococcus.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true
            }
          ]
        },
        {
          "linkId" : "immunization.yellow-fever",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/vaktsiinvalditavad-haigused",
              "code" : "205"
            }
          ],
          "text" : "Kollapalavik",
          "type" : "group",
          "required" : true,
          "item" : [
            {
              "linkId" : "immunization.yellow-fever.vac-done",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "yellow-fever-vac",
                  "display" : "Kas Teile on tehtud kollapalaviku vaktsiin?"
                }
              ],
              "text" : "Kas Teile on tehtud kollapalaviku vaktsiin?",
              "type" : "boolean",
              "required" : true
            },
            {
              "linkId" : "immunization.yellow-fever.immunization-his-data",
              "text" : "Immuniseerimine",
              "type" : "group",
              "enableWhen" : [
                {
                  "question" : "immunization.yellow-fever.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "immunization.yellow-fever.immunization-his-data.date",
                  "text" : "Kuupäev",
                  "type" : "date",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "immunization.yellow-fever.immunization-his-data.source-reference",
                  "text" : "Allika viide",
                  "type" : "reference",
                  "required" : true,
                  "readOnly" : true
                }
              ]
            },
            {
              "linkId" : "immunization.yellow-fever.date",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "date",
                  "display" : "Kuupäev"
                }
              ],
              "text" : "Kuupäev",
              "type" : "date",
              "enableWhen" : [
                {
                  "question" : "immunization.yellow-fever.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true
            }
          ]
        },
        {
          "linkId" : "immunization.typhoid-fever",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/vaktsiinvalditavad-haigused",
              "code" : "207"
            }
          ],
          "text" : "Kõhutüüfus",
          "type" : "group",
          "required" : true,
          "item" : [
            {
              "linkId" : "immunization.typhoid-fever.vac-done",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "typhoid-vac",
                  "display" : "Kas Teile on tehtud kõhutüüfuse vaktsiin?"
                }
              ],
              "text" : "Kas Teile on tehtud kõhutüüfuse vaktsiin?",
              "type" : "boolean",
              "required" : true
            },
            {
              "linkId" : "immunization.typhoid-fever.immunization-his-data",
              "text" : "Immuniseerimine",
              "type" : "group",
              "enableWhen" : [
                {
                  "question" : "immunization.typhoid-fever.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "immunization.typhoid-fever.immunization-his-data.date",
                  "text" : "Kuupäev",
                  "type" : "date",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "immunization.typhoid-fever.immunization-his-data.source-reference",
                  "text" : "Allika viide",
                  "type" : "reference",
                  "required" : true,
                  "readOnly" : true
                }
              ]
            },
            {
              "linkId" : "immunization.typhoid-fever.date",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "date",
                  "display" : "Kuupäev"
                }
              ],
              "text" : "Kuupäev",
              "type" : "date",
              "enableWhen" : [
                {
                  "question" : "immunization.typhoid-fever.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true
            }
          ]
        },
        {
          "linkId" : "immunization.tick-encephalitis",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/vaktsiinvalditavad-haigused",
              "code" : "211"
            }
          ],
          "text" : "Puukentsefaliit",
          "type" : "group",
          "required" : true,
          "item" : [
            {
              "linkId" : "immunization.tick-encephalitis.vac-done",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "tick-borne-encephalitis-vac",
                  "display" : "Kas Teile on tehtud puukentsefaliidi vaktsiin?"
                }
              ],
              "text" : "Kas Teile on tehtud puukentsefaliidi vaktsiin?",
              "type" : "boolean",
              "required" : true
            },
            {
              "linkId" : "immunization.tick-encephalitis.immunization-his-data",
              "text" : "Immuniseerimine",
              "type" : "group",
              "enableWhen" : [
                {
                  "question" : "immunization.tick-encephalitis.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "immunization.tick-encephalitis.immunization-his-data.date",
                  "text" : "Kuupäev",
                  "type" : "date",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "immunization.tick-encephalitis.immunization-his-data.source-reference",
                  "text" : "Allika viide",
                  "type" : "reference",
                  "required" : true,
                  "readOnly" : true
                }
              ]
            },
            {
              "linkId" : "immunization.tick-encephalitis.date",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "date",
                  "display" : "Kuupäev"
                }
              ],
              "text" : "Kuupäev",
              "type" : "date",
              "enableWhen" : [
                {
                  "question" : "immunization.tick-encephalitis.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true
            }
          ]
        },
        {
          "linkId" : "immunization.other-vac",
          "text" : "Muud vaktsiinid",
          "type" : "group",
          "required" : true,
          "item" : [
            {
              "linkId" : "immunization.other-vac.vac-done",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "other-vac",
                  "display" : "Kas Teile on tehtud muid vaktsiine?"
                }
              ],
              "text" : "Kas Teile on tehtud muid vaktsiine?",
              "type" : "boolean",
              "required" : true,
              "item" : [
                {
                  "linkId" : "immunization.other-vac.vac-done.specification",
                  "code" : [
                    {
                      "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                      "code" : "specification",
                      "display" : "Palun täpsusta"
                    }
                  ],
                  "text" : "Palun täpsusta",
                  "type" : "text",
                  "enableWhen" : [
                    {
                      "question" : "immunization.other-vac.vac-done",
                      "operator" : "=",
                      "answerBoolean" : true
                    }
                  ],
                  "required" : false
                }
              ]
            },
            {
              "linkId" : "immunization.other-vac.immunization-his-data",
              "text" : "Immuniseerimine",
              "type" : "group",
              "enableWhen" : [
                {
                  "question" : "immunization.other-vac.vac-done",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "immunization.other-vac.immunization-his-data.preventable-disease",
                  "text" : "vaktsiinvälditav haigus või haigustekitaja",
                  "type" : "coding",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "immunization.other-vac.immunization-his-data.date",
                  "text" : "Kuupäev",
                  "type" : "date",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "immunization.other-vac.immunization-his-data.source-reference",
                  "text" : "Allika viide",
                  "type" : "reference",
                  "required" : true,
                  "readOnly" : true
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "linkId" : "work-risk-factors",
      "code" : [
        {
          "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
          "code" : "work-risk-factors",
          "display" : "Töökohal esinevad ohutegurid"
        }
      ],
      "prefix" : "25",
      "text" : "Töökohal esinevad ohutegurid",
      "type" : "group",
      "enableWhen" : [
        {
          "question" : "category",
          "operator" : "=",
          "answerCoding" : {
            "system" : "https://fhir.ee/CodeSystem/tervisekontrolli-kasutusala",
            "code" : "occupational"
          }
        }
      ],
      "required" : true,
      "item" : [
        {
          "linkId" : "work-risk-factors.risk-factor",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "risk-factor",
              "display" : "Ohutegur"
            }
          ],
          "text" : "Ohutegur",
          "type" : "coding",
          "required" : false,
          "repeats" : true,
          "answerValueSet" : "https://fhir.ee/CodeSystem/toolaadi-ja-tookeskkonnaga-seotud-ohutegurid",
          "item" : [
            {
              "linkId" : "work-risk-factors.risk-factor.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification",
                  "display" : "Palun täpsusta"
                }
              ],
              "text" : "Palun täpsusta",
              "type" : "text",
              "required" : false
            }
          ]
        }
      ]
    }
  ]
}

```
