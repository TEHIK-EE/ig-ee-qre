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
      "system" : "http://fhir.ee/CodeSystem/dokumendi-tyyp",
      "code" : "18",
      "display" : "Tahteavaldused"
    }
  ],
  "item" : [
    {
      "linkId" : "pet-indication",
      "text" : "Soovin, et minu tahteavaldus rakenduks järgmiselt:",
      "type" : "coding",
      "required" : true,
      "repeats" : false,
      "readOnly" : false,
      "answerOption" : [
        {
          "valueCoding" : {
            "display" : "Kui mu terviseseisund on selline, et mulle vastuvõetava elukvaliteedi saavutamine minu elu säilitamisega ei ole võimalik"
          }
        },
        {
          "valueCoding" : {
            "display" : "Kui minu terviseseisund halveneb nii, et ellu jäämine ilma elu säilitava ravita ei ole võimalik"
          }
        },
        {
          "valueCoding" : {
            "display" : "Kui ma olen haigestunud"
          }
        },
        {
          "valueCoding" : {
            "display" : "Muu"
          }
        }
      ],
      "item" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "http://hl7.org/fhir/questionnaire-item-control",
                    "code" : "radio-button",
                    "display" : "Radio Button"
                  }
                ]
              }
            }
          ],
          "linkId" : "pet-indication.first-choice",
          "text" : "Kui mu terviseseisund on selline, et mulle vastuvõetava elukvaliteedi saavutamine minu elu säilitamisega ei ole võimalik, siis",
          "type" : "coding",
          "enableWhen" : [
            {
              "question" : "pet-indication",
              "operator" : "=",
              "answerCoding" : {
                "display" : "Kui mu terviseseisund on selline, et mulle vastuvõetava elukvaliteedi saavutamine minu elu säilitamisega ei ole võimalik"
              }
            }
          ],
          "enableBehavior" : "any",
          "required" : true,
          "repeats" : false,
          "readOnly" : false,
          "answerOption" : [
            {
              "valueCoding" : {
                "display" : "ei soovi ma ühtegi elu säilitav sekkumist"
              }
            },
            {
              "valueCoding" : {
                "display" : "ei soovi ma neid elu säilitavaid sekkumisi, mille olen ära märkinud"
              }
            }
          ],
          "item" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
                  "valueCodeableConcept" : {
                    "coding" : [
                      {
                        "system" : "http://hl7.org/fhir/questionnaire-item-control",
                        "code" : "radio-button",
                        "display" : "Radio Button"
                      }
                    ]
                  }
                }
              ],
              "linkId" : "pet-indication.first-choice.unacceptable-condition",
              "text" : "Minu jaoks on elukvaliteet vastuvõetamatu, kui:",
              "type" : "coding",
              "enableWhen" : [
                {
                  "question" : "pet-indication.first-choice",
                  "operator" : "exists",
                  "answerBoolean" : true
                }
              ],
              "enableBehavior" : "any",
              "required" : true,
              "repeats" : false,
              "readOnly" : false,
              "answerOption" : [
                {
                  "valueCoding" : {
                    "display" : "Olen püsivalt teadvusetus seisundis."
                  }
                },
                {
                  "valueCoding" : {
                    "display" : "Minu vaimne võimekus on pöördumatult halvenenud nii, et ma ei ole suuteline aru saama, otsuseid tegema ega inimestega suhtlema. "
                  }
                },
                {
                  "valueCoding" : {
                    "display" : "Olen igapäevastes toimingutes (nt söömine, joomine, hügieenitoimingud, riietumine jne) täielikult teistest sõltuv."
                  }
                },
                {
                  "valueCoding" : {
                    "display" : "Muu…[vaba tekst]"
                  }
                }
              ],
              "item" : [
                {
                  "linkId" : "pet-indication.first-choice.unacceptable-condition.other",
                  "text" : "Muu",
                  "type" : "text",
                  "enableWhen" : [
                    {
                      "question" : "pet-indication.first-choice.unacceptable-condition",
                      "operator" : "=",
                      "answerCoding" : {
                        "display" : "Muu…[vaba tekst]"
                      }
                    }
                  ],
                  "enableBehavior" : "any",
                  "required" : true,
                  "repeats" : false,
                  "readOnly" : false
                }
              ]
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
                  "valueCodeableConcept" : {
                    "coding" : [
                      {
                        "system" : "http://hl7.org/fhir/questionnaire-item-control",
                        "code" : "drop-down",
                        "display" : "Drop down"
                      }
                    ]
                  }
                }
              ],
              "linkId" : "pet-indication.first-choice.unacceptable-treatments",
              "text" : "Ma keeldun järgmistest meditsiinilistest sekkumistest:",
              "type" : "coding",
              "enableWhen" : [
                {
                  "question" : "pet-indication.first-choice",
                  "operator" : "=",
                  "answerCoding" : {
                    "display" : "ei soovi ma neid elu säilitavaid sekkumisi, mille olen ära märkinud"
                  }
                }
              ],
              "enableBehavior" : "any",
              "required" : true,
              "repeats" : true,
              "readOnly" : false,
              "answerOption" : [
                {
                  "valueCoding" : {
                    "display" : "Elustamine kliinilisest surmast "
                  }
                },
                {
                  "valueCoding" : {
                    "display" : "Hingamisaparaadi kasutamine "
                  }
                },
                {
                  "valueCoding" : {
                    "display" : "Neeruasendusravi ehk dialüüs "
                  }
                },
                {
                  "valueCoding" : {
                    "display" : "Kunstlik vedeliku manustamine ja toitmine"
                  }
                },
                {
                  "valueCoding" : {
                    "display" : "Intensiivraviosakonda paigutamine elu pikendava ravi eesmärgil"
                  }
                },
                {
                  "valueCoding" : {
                    "display" : "Ravimite manustamine, millel on muu kui vaevusi leevendav eesmärk "
                  }
                },
                {
                  "valueCoding" : {
                    "display" : "Vere või verekomponentide manustamine"
                  }
                },
                {
                  "valueCoding" : {
                    "display" : "Kirurgiline ravi, millel on muu kui vaevusi leevendav eesmärk"
                  }
                },
                {
                  "valueCoding" : {
                    "display" : "Analüüsid ja uuringud, millel on muu eesmärk kui vaevusi leevendava ravi parandamine "
                  }
                },
                {
                  "valueCoding" : {
                    "display" : "Muu: …[vaba tekst]"
                  }
                }
              ],
              "item" : [
                {
                  "linkId" : "pet-indication.first-choice.unacceptable-treatments.other",
                  "text" : "Muu",
                  "type" : "text",
                  "enableWhen" : [
                    {
                      "question" : "pet-indication.first-choice.unacceptable-treatments",
                      "operator" : "=",
                      "answerCoding" : {
                        "display" : "Muu: …[vaba tekst]"
                      }
                    }
                  ],
                  "required" : true,
                  "repeats" : false,
                  "readOnly" : false
                }
              ]
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "http://hl7.org/fhir/questionnaire-item-control",
                    "code" : "radio-button",
                    "display" : "Radio Button"
                  }
                ]
              }
            }
          ],
          "linkId" : "pet-indication.second-choice",
          "text" : "Kui minu terviseseisund halveneb nii, et ellu jäämine ilma elu säilitava ravita ei ole võimalik, siis: (vali üks)",
          "type" : "coding",
          "enableWhen" : [
            {
              "question" : "pet-indication",
              "operator" : "=",
              "answerCoding" : {
                "display" : "Kui minu terviseseisund halveneb nii, et ellu jäämine ilma elu säilitava ravita ei ole võimalik"
              }
            }
          ],
          "enableBehavior" : "any",
          "required" : true,
          "repeats" : false,
          "readOnly" : false,
          "answerOption" : [
            {
              "valueCoding" : {
                "display" : "ei soovi ma ühtegi elu säilitavat sekkumist"
              }
            },
            {
              "valueCoding" : {
                "display" : "ei soovi ma neid elu säilitavaid sekkumisi, mille olen ära märkinud (siin peaks avanema med.sekkumiste loetelu (vt edasi))."
              }
            }
          ],
          "item" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
                  "valueCodeableConcept" : {
                    "coding" : [
                      {
                        "system" : "http://hl7.org/fhir/questionnaire-item-control",
                        "code" : "drop-down",
                        "display" : "Drop down"
                      }
                    ]
                  }
                }
              ],
              "linkId" : "pet-indication.second-choice.unacceptable-treatments",
              "text" : "Ma keeldun järgmistest meditsiinilistest sekkumistest:",
              "type" : "coding",
              "enableWhen" : [
                {
                  "question" : "pet-indication.second-choice",
                  "operator" : "=",
                  "answerCoding" : {
                    "display" : "ei soovi ma neid elu säilitavaid sekkumisi, mille olen ära märkinud (siin peaks avanema med.sekkumiste loetelu (vt edasi))."
                  }
                }
              ],
              "enableBehavior" : "any",
              "required" : true,
              "repeats" : true,
              "readOnly" : false,
              "answerOption" : [
                {
                  "valueCoding" : {
                    "display" : "Elustamine kliinilisest surmast "
                  }
                },
                {
                  "valueCoding" : {
                    "display" : "Hingamisaparaadi kasutamine "
                  }
                },
                {
                  "valueCoding" : {
                    "display" : "Neeruasendusravi ehk dialüüs "
                  }
                },
                {
                  "valueCoding" : {
                    "display" : "Kunstlik vedeliku manustamine ja toitmine"
                  }
                },
                {
                  "valueCoding" : {
                    "display" : "Intensiivraviosakonda paigutamine elu pikendava ravi eesmärgil"
                  }
                },
                {
                  "valueCoding" : {
                    "display" : "Ravimite manustamine, millel on muu kui vaevusi leevendav eesmärk "
                  }
                },
                {
                  "valueCoding" : {
                    "display" : "Vere või verekomponentide manustamine"
                  }
                },
                {
                  "valueCoding" : {
                    "display" : "Kirurgiline ravi, millel on muu kui vaevusi leevendav eesmärk"
                  }
                },
                {
                  "valueCoding" : {
                    "display" : "Analüüsid ja uuringud, millel on muu eesmärk kui vaevusi leevendava ravi parandamine "
                  }
                },
                {
                  "valueCoding" : {
                    "display" : "Muu"
                  }
                }
              ],
              "item" : [
                {
                  "linkId" : "pet-indication.second-choice.unacceptable-treatments.other",
                  "text" : "Muu",
                  "type" : "text",
                  "enableWhen" : [
                    {
                      "question" : "pet-indication.second-choice.unacceptable-treatments",
                      "operator" : "=",
                      "answerCoding" : {
                        "display" : "Muu"
                      }
                    }
                  ],
                  "enableBehavior" : "any",
                  "required" : true,
                  "repeats" : false,
                  "readOnly" : false
                }
              ]
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "http://hl7.org/fhir/questionnaire-item-control",
                    "code" : "radio-button",
                    "display" : "Radio Button"
                  }
                ]
              }
            }
          ],
          "linkId" : "pet-indication.third-choice",
          "text" : "Kui ma olen haigestunud, siis: (vali üks)",
          "type" : "coding",
          "enableWhen" : [
            {
              "question" : "pet-indication",
              "operator" : "=",
              "answerCoding" : {
                "display" : "Kui ma olen haigestunud"
              }
            }
          ],
          "enableBehavior" : "any",
          "required" : true,
          "repeats" : false,
          "readOnly" : false,
          "answerOption" : [
            {
              "valueCoding" : {
                "display" : "ei soovi ma mitte ühtegi paranemisele suunatud meditsiinilist sekkumist"
              }
            },
            {
              "valueCoding" : {
                "display" : "ei soovi ma järgmisi meditsiinilisi sekkumisi…[vaba tekst]"
              }
            }
          ],
          "item" : [
            {
              "linkId" : "pet-indication.third-choice.unacceptable-treatment",
              "text" : "Sekkumised, millest keeldun",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "pet-indication.third-choice",
                  "operator" : "=",
                  "answerCoding" : {
                    "display" : "ei soovi ma järgmisi meditsiinilisi sekkumisi…[vaba tekst]"
                  }
                }
              ],
              "enableBehavior" : "any",
              "required" : true,
              "repeats" : false,
              "readOnly" : false
            }
          ]
        },
        {
          "linkId" : "pet-indication.fourth-choice",
          "text" : "Muu",
          "type" : "text",
          "enableWhen" : [
            {
              "question" : "pet-indication",
              "operator" : "=",
              "answerCoding" : {
                "display" : "Muu"
              }
            }
          ],
          "enableBehavior" : "any",
          "required" : true,
          "repeats" : false,
          "readOnly" : false
        }
      ]
    },
    {
      "linkId" : "palliative-treatment",
      "text" : "Olenemata minu valikutest tahteavalduse eelmises osas, soovin ma, et mulle pakutaks vaevusi leevendavat ravi ja hooldust ehk palliatiivravi: (vali üks)",
      "type" : "coding",
      "required" : true,
      "repeats" : false,
      "readOnly" : false,
      "answerOption" : [
        {
          "valueCoding" : {
            "display" : "Soovin täies mahus palliatiivset ravi, et minu vaevused oleksid igal juhul leevendatud"
          }
        },
        {
          "valueCoding" : {
            "display" : "Soovin palliatiivse ravi puhul vältida:....[vaba tekst]"
          }
        }
      ],
      "item" : [
        {
          "linkId" : "palliative-treatment.treatments",
          "text" : "Soovin vältida",
          "type" : "text",
          "enableWhen" : [
            {
              "question" : "palliative-treatment",
              "operator" : "=",
              "answerCoding" : {
                "display" : "Soovin palliatiivse ravi puhul vältida:....[vaba tekst]"
              }
            }
          ],
          "enableBehavior" : "any",
          "required" : true,
          "repeats" : false,
          "readOnly" : false
        }
      ]
    },
    {
      "linkId" : "preferred-death-location",
      "text" : "Ma eelistan surra",
      "type" : "coding",
      "required" : false,
      "repeats" : false,
      "readOnly" : false,
      "answerOption" : [
        {
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
        }
      ],
      "item" : [
        {
          "linkId" : "preferred-death-location.other",
          "text" : "Täpsutus",
          "type" : "text",
          "enableWhen" : [
            {
              "question" : "preferred-death-location",
              "operator" : "=",
              "answerCoding" : {
                "display" : "Mujal"
              }
            }
          ],
          "enableBehavior" : "any",
          "required" : true,
          "repeats" : false,
          "readOnly" : false
        }
      ]
    },
    {
      "linkId" : "people-by-side-death",
      "text" : "Ma soovin, et minu suremise juures viibivad järgmised isikud:",
      "type" : "text",
      "required" : false,
      "readOnly" : false,
      "item" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "http://hl7.org/fhir/questionnaire-item-control",
                    "code" : "help",
                    "display" : "Help-Button"
                  }
                ],
                "text" : "Help-Button"
              }
            }
          ],
          "linkId" : "246658268145_helpText",
          "text" : "Nimi, seos minuga ja kontaktandmed",
          "type" : "display"
        }
      ]
    },
    {
      "linkId" : "religious-preferences",
      "text" : "Minu religioossed või muud spirituaalsed eelistused ",
      "type" : "text",
      "required" : false,
      "repeats" : false,
      "readOnly" : false,
      "item" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "http://hl7.org/fhir/questionnaire-item-control",
                    "code" : "help",
                    "display" : "Help-Button"
                  }
                ],
                "text" : "Help-Button"
              }
            }
          ],
          "linkId" : "593162052362_helpText",
          "text" : "Lisa siia oma religioossed, spirituaalsed või maailmavaatelised soovid, mis on sinu jaoks elu lõpu ajal olulised. Need aitavad sinu lähedastel ja usaldusisikul paremini mõista, millist tuge või rituaale sa sooviksid (nt vaimuliku kohalolek, palve, vaikus, muusika või muu sümboolne tegevus).",
          "type" : "display"
        }
      ]
    },
    {
      "linkId" : "other-wishes",
      "text" : "Minu jaoks olulised soovid",
      "type" : "text",
      "required" : false,
      "readOnly" : false,
      "item" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "http://hl7.org/fhir/questionnaire-item-control",
                    "code" : "help",
                    "display" : "Help-Button"
                  }
                ],
                "text" : "Help-Button"
              }
            }
          ],
          "linkId" : "637523866624_helpText",
          "text" : "Siia saad kirja panna muud isiklikud soovid, mis on sinu jaoks elu lõpu ajal tähtsad ja mis aitavad lähedastel sind toetada ning sinuga rahulikult hüvasti jätta. Rahaga või pärandiga seotud küsimused ei kuulu sellesse ossa.",
          "type" : "display"
        }
      ]
    }
  ]
}

```
