# Tervisedeklaratsioon CDA-st - Küsimustike teenus v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tervisedeklaratsioon CDA-st**

## Questionnaire: Tervisedeklaratsioon CDA-st 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.ee/qre/Questionnaire-health-declaration-cda | *Version*:1.0.0 |
| Active as of 2023-12-12 | *Computable Name*:HDECL |



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "Questionnaire-health-declaration-cda",
  "meta" : {
    "versionId" : "1.0.0",
    "profile" : [
      "https://fhir.ee/qre/StructureDefinition/ee-health-declaration-questionnaire"
    ]
  },
  "url" : "https://fhir.ee/qre/Questionnaire-health-declaration-cda",
  "version" : "1.0.0",
  "name" : "HDECL",
  "title" : "Tervisedeklaratsioon CDA-st",
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
      "type" : "coding",
      "required" : true,
      "repeats" : true,
      "readOnly" : true,
      "answerOption" : [
        {
          "valueCoding" : {
            "system" : "https://fhir.ee/CodeSystem/labivaatuse-tyyp",
            "code" : "driver-group-I"
          }
        },
        {
          "valueCoding" : {
            "system" : "https://fhir.ee/CodeSystem/labivaatuse-tyyp",
            "code" : "driver-group-II"
          }
        },
        {
          "valueCoding" : {
            "system" : "https://fhir.ee/CodeSystem/labivaatuse-tyyp",
            "code" : "military-service"
          }
        }
      ]
    },
    {
      "linkId" : "lifestyle",
      "code" : [
        {
          "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
          "code" : "lifestyle"
        }
      ],
      "prefix" : "1",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "lifestyle.alcohol",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "alcohol"
            }
          ],
          "type" : "boolean",
          "required" : true,
          "item" : [
            {
              "linkId" : "lifestyle.alcohol.alcohol-units",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "alcohol-units"
                }
              ],
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
          "linkId" : "lifestyle.smoking",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "smoking"
            }
          ],
          "type" : "boolean",
          "required" : true,
          "item" : [
            {
              "linkId" : "lifestyle.smoking.smoking-amount",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "smoking-amount"
                }
              ],
              "type" : "integer",
              "enableWhen" : [
                {
                  "question" : "lifestyle.smoking",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            },
            {
              "linkId" : "lifestyle.smoking.smoking-period",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "smoking-period"
                }
              ],
              "type" : "decimal",
              "enableWhen" : [
                {
                  "question" : "lifestyle.smoking",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : true
            },
            {
              "linkId" : "lifestyle.smoking.smoking-quit",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "smoking-quit"
                }
              ],
              "type" : "date",
              "enableWhen" : [
                {
                  "question" : "lifestyle.smoking",
                  "operator" : "=",
                  "answerBoolean" : false
                }
              ],
              "required" : false
            }
          ]
        },
        {
          "linkId" : "lifestyle.narcotics",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "narcotics"
            }
          ],
          "type" : "boolean",
          "required" : true,
          "item" : [
            {
              "linkId" : "lifestyle.narcotics.narcotics-frequency",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "narcotics-frequency"
                }
              ],
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
              "code" : "medication-influence"
            }
          ],
          "type" : "boolean",
          "required" : true,
          "item" : [
            {
              "linkId" : "lifestyle.medication.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification"
                }
              ],
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
        },
        {
          "linkId" : "lifestyle.sleep",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "sleep-mode"
            }
          ],
          "type" : "text",
          "required" : false
        }
      ]
    },
    {
      "linkId" : "work-environment",
      "code" : [
        {
          "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
          "code" : "work-environment"
        }
      ],
      "prefix" : "2",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "work-environment.work-restrictions",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "work-restrictions"
            }
          ],
          "type" : "boolean",
          "required" : true,
          "item" : [
            {
              "linkId" : "work-environment.work-restrictions.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification-why"
                }
              ],
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
              "code" : "work-health-problems"
            }
          ],
          "type" : "boolean",
          "required" : true,
          "item" : [
            {
              "linkId" : "work-environment.work-health-problems.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification"
                }
              ],
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
        }
      ]
    },
    {
      "linkId" : "allergies",
      "code" : [
        {
          "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
          "code" : "allergies"
        }
      ],
      "prefix" : "3",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "allergies.previous-diagnosis",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "allergies.previous-diagnosis.diagnosis",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-allergiad"
            },
            {
              "linkId" : "allergies.previous-diagnosis.written-diagnosis",
              "type" : "string",
              "required" : false,
              "readOnly" : true
            },
            {
              "linkId" : "allergies.previous-diagnosis.source-reference",
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
              "code" : "none"
            }
          ],
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "allergies.medication-allergy",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "medication-allergy"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "food-allergy"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "pollen-allergy"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "pets-allergy"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "other-allergies"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
          "code" : "mental-health"
        }
      ],
      "prefix" : "4",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "mental-health.previous-diagnosis",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "mental-health.previous-diagnosis.diagnosis",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-psyyhika"
            },
            {
              "linkId" : "mental-health.previous-diagnosis.written-diagnosis",
              "type" : "string",
              "required" : false,
              "readOnly" : true
            },
            {
              "linkId" : "mental-health.previous-diagnosis.source-reference",
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
              "code" : "no-complaints"
            }
          ],
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "mental-health.depression",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "depression"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "schizophrenia"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "fear-working-alone"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "fear-closed-spaces"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "fear-heights"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
          "linkId" : "mental-health.other-disease-condition-symptom",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "other-disease-condition-symptom"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
          "code" : "nervous-system"
        }
      ],
      "prefix" : "5",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "nervous-system.previous-diagnosis",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "nervous-system.previous-diagnosis.diagnosis",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-narvisysteem"
            },
            {
              "linkId" : "nervous-system.previous-diagnosis.written-diagnosis",
              "type" : "string",
              "required" : false,
              "readOnly" : true
            },
            {
              "linkId" : "nervous-system.previous-diagnosis.source-reference",
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
              "code" : "no-complaints"
            }
          ],
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "nervous-system.syncope",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "syncope"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "seizures"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "balance-disorder"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "stroke"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "seasickness"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
          "linkId" : "nervous-system.other-disease-condition-symptom",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "other-disease-condition-symptom"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
          "code" : "eyes-vision"
        }
      ],
      "prefix" : "6",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "eyes-vision.previous-diagnosis",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "eyes-vision.previous-diagnosis.diagnosis",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-silmad-ja-nagemine"
            },
            {
              "linkId" : "eyes-vision.previous-diagnosis.written-diagnosis",
              "type" : "string",
              "required" : false,
              "readOnly" : true
            },
            {
              "linkId" : "eyes-vision.previous-diagnosis.source-reference",
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
              "code" : "no-complaints"
            }
          ],
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "eyes-vision.myopia",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "myopia"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
          "linkId" : "eyes-vision.limited-view",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "limited-view"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "double-vision"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "colour-vision-disorder"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "other-disease-condition-symptom"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
          "code" : "ear-nose-throat"
        }
      ],
      "prefix" : "7",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "ear-nose-throat.previous-diagnosis",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "ear-nose-throat.previous-diagnosis.diagnosis",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-korv-nina-neel"
            },
            {
              "linkId" : "ear-nose-throat.previous-diagnosis.written-diagnosis",
              "type" : "string",
              "required" : false,
              "readOnly" : true
            },
            {
              "linkId" : "ear-nose-throat.previous-diagnosis.source-reference",
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
              "code" : "no-complaints"
            }
          ],
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "ear-nose-throat.hearing-loss",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "hearing-loss"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "allergic-rhinitis"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "chronic-sinusitis"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "nasal-obstruction"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "frequent-throat-infection"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "other-disease-condition-symptom"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
          "code" : "respiratory-system"
        }
      ],
      "prefix" : "8",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "respiratory-system.previous-diagnosis",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "respiratory-system.previous-diagnosis.diagnosis",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-hingamissysteem"
            },
            {
              "linkId" : "respiratory-system.previous-diagnosis.written-diagnosis",
              "type" : "string",
              "required" : false,
              "readOnly" : true
            },
            {
              "linkId" : "respiratory-system.previous-diagnosis.source-reference",
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
              "code" : "no-complaints"
            }
          ],
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "respiratory-system.asthma",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "asthma"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "copd"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "sleep-apnoea"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "other-disease-condition-symptom"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
          "code" : "metabolic-disorder"
        }
      ],
      "prefix" : "9",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "metabolic-disorder.previous-diagnosis",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "metabolic-disorder.previous-diagnosis.diagnosis",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-ainevahetuse-haired"
            },
            {
              "linkId" : "metabolic-disorder.previous-diagnosis.written-diagnosis",
              "type" : "string",
              "required" : false,
              "readOnly" : true
            },
            {
              "linkId" : "metabolic-disorder.previous-diagnosis.source-reference",
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
              "code" : "no-complaints"
            }
          ],
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "metabolic-disorder.diabetes",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "diabetes"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "other-disease-condition-symptom"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
          "code" : "cardiovascular-system"
        }
      ],
      "prefix" : "10",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "cardiovascular-system.previous-diagnosis",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "cardiovascular-system.previous-diagnosis.diagnosis",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-syda-ja-veresoonkond"
            },
            {
              "linkId" : "cardiovascular-system.previous-diagnosis.written-diagnosis",
              "type" : "string",
              "required" : false,
              "readOnly" : true
            },
            {
              "linkId" : "cardiovascular-system.previous-diagnosis.source-reference",
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
              "code" : "no-complaints"
            }
          ],
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "cardiovascular-system.chest-pain-activity",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "chest-pain-activity"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "high-blood-pressure"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "heart-attack"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "arrhythmia"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "angioplasty"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "pacer"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "heart-operation"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "other-disease-condition-symptom"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
          "code" : "bones-joints-muscles"
        }
      ],
      "prefix" : "11",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "bones-joints-muscles.previous-diagnosis",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "bones-joints-muscles.previous-diagnosis.diagnosis",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-luud-liigesed-ja-lihased"
            },
            {
              "linkId" : "bones-joints-muscles.previous-diagnosis.written-diagnosis",
              "type" : "string",
              "required" : false,
              "readOnly" : true
            },
            {
              "linkId" : "bones-joints-muscles.previous-diagnosis.source-reference",
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
              "code" : "no-complaints"
            }
          ],
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "bones-joints-muscles.joint-stiffness",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "joint-stiffness"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "limb-paralysis"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "missing-limb"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "tremor"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "joint-pain"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "neck-pain"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "shoulder-pain"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "lower-back-pain"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "other-disease-condition-symptom"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
          "code" : "infections"
        }
      ],
      "prefix" : "12",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "infections.previous-diagnosis",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "infections.previous-diagnosis.diagnosis",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-nakkushaigused"
            },
            {
              "linkId" : "infections.previous-diagnosis.written-diagnosis",
              "type" : "string",
              "required" : false,
              "readOnly" : true
            },
            {
              "linkId" : "infections.previous-diagnosis.source-reference",
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
              "code" : "no-known-illness"
            }
          ],
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "infections.tuberculosis",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "tuberculosis"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "hepatitis"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "hiv"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "aids"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
          "linkId" : "infections.other-disease",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "other-disease"
            }
          ],
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
                  "code" : "specification-when-what"
                }
              ],
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
          "code" : "other-chronic-disorders"
        }
      ],
      "prefix" : "13",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "other-chronic-disorders.none",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "none"
            }
          ],
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "other-chronic-disorders.disease-condition-symptom",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "disease-condition-symptom"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
          "code" : "previous-treatment"
        }
      ],
      "prefix" : "14",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "previous-treatment.treatment-abroad",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "treatment-abroad"
            }
          ],
          "type" : "boolean",
          "required" : true,
          "item" : [
            {
              "linkId" : "previous-treatment.treatment-abroad.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification-why-where"
                }
              ],
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
          "type" : "group",
          "required" : true,
          "item" : [
            {
              "linkId" : "previous-treatment.regular-medication.regular-medication-women",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "regular-medication-women"
                }
              ],
              "type" : "boolean",
              "required" : false,
              "item" : [
                {
                  "linkId" : "previous-treatment.regular-medication.regular-medication-women.specification",
                  "code" : [
                    {
                      "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                      "code" : "specification-what"
                    }
                  ],
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
                  "code" : "regular-medication-men"
                }
              ],
              "type" : "boolean",
              "required" : false,
              "item" : [
                {
                  "linkId" : "previous-treatment.regular-medication.regular-medication-men.specification",
                  "code" : [
                    {
                      "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                      "code" : "specification-what"
                    }
                  ],
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
                  "code" : "current-prescription"
                }
              ],
              "type" : "group",
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "previous-treatment.regular-medication.current-prescription.date",
                  "type" : "date",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "previous-treatment.regular-medication.current-prescription.atc",
                  "type" : "coding",
                  "required" : false,
                  "readOnly" : true
                },
                {
                  "linkId" : "previous-treatment.regular-medication.current-prescription.package",
                  "type" : "coding",
                  "required" : false,
                  "readOnly" : true
                },
                {
                  "linkId" : "previous-treatment.regular-medication.current-prescription.source-reference",
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
              "code" : "hospitalization"
            }
          ],
          "type" : "boolean",
          "required" : true,
          "item" : [
            {
              "linkId" : "previous-treatment.hospitalization.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification"
                }
              ],
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
              "type" : "group",
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "previous-treatment.hospitalization.inpatient-case.from",
                  "type" : "date",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "previous-treatment.hospitalization.inpatient-case.to",
                  "type" : "date",
                  "required" : false,
                  "readOnly" : true
                },
                {
                  "linkId" : "previous-treatment.hospitalization.inpatient-case.provider",
                  "type" : "string",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "previous-treatment.hospitalization.inpatient-case.source-reference",
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
              "code" : "operations"
            }
          ],
          "type" : "boolean",
          "required" : true,
          "item" : [
            {
              "linkId" : "previous-treatment.surgeries.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification-why-when"
                }
              ],
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
              "type" : "group",
              "required" : false,
              "repeats" : true,
              "readOnly" : true,
              "item" : [
                {
                  "linkId" : "previous-treatment.surgeries.surgery.surgery-date",
                  "type" : "date",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "previous-treatment.surgeries.surgery.code",
                  "type" : "coding",
                  "required" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "previous-treatment.surgeries.surgery.surgery-add-code",
                  "type" : "coding",
                  "required" : false,
                  "repeats" : true,
                  "readOnly" : true
                },
                {
                  "linkId" : "previous-treatment.surgeries.surgery.source-reference",
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
          "code" : "traumas"
        }
      ],
      "prefix" : "15",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "traumas.previous-diagnosis",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "traumas.previous-diagnosis.diagnosis",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-traumad"
            },
            {
              "linkId" : "traumas.previous-diagnosis.written-diagnosis",
              "type" : "string",
              "required" : false,
              "readOnly" : true
            },
            {
              "linkId" : "traumas.previous-diagnosis.source-reference",
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
              "code" : "none"
            }
          ],
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "traumas.fractures",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "fractures"
            }
          ],
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
                  "code" : "specification-when-what"
                }
              ],
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
          "linkId" : "traumas.other-injuries",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "other-injuries"
            }
          ],
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
                  "code" : "specification-when-what"
                }
              ],
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
          "code" : "pregnancy"
        }
      ],
      "prefix" : "16",
      "type" : "boolean",
      "required" : false
    },
    {
      "linkId" : "skin-disorders",
      "code" : [
        {
          "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
          "code" : "skin-disorders-five-years"
        }
      ],
      "prefix" : "17",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "skin-disorders.previous-diagnosis",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "skin-disorders.previous-diagnosis.diagnosis",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-nahahaigused"
            },
            {
              "linkId" : "skin-disorders.previous-diagnosis.written-diagnosis",
              "type" : "string",
              "required" : false,
              "readOnly" : true
            },
            {
              "linkId" : "skin-disorders.previous-diagnosis.source-reference",
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
              "code" : "skin-disorders"
            }
          ],
          "type" : "boolean",
          "required" : true,
          "item" : [
            {
              "linkId" : "skin-disorders.skin-conditions.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification"
                }
              ],
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
          "code" : "digestive-organs"
        }
      ],
      "prefix" : "18",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "digestive-organs.previous-diagnosis",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "digestive-organs.previous-diagnosis.diagnosis",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-seedeelundid"
            },
            {
              "linkId" : "digestive-organs.previous-diagnosis.written-diagnosis",
              "type" : "string",
              "required" : true,
              "readOnly" : true
            },
            {
              "linkId" : "digestive-organs.previous-diagnosis.source-reference",
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
              "code" : "no-complaints"
            }
          ],
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "digestive-organs.liver-disease",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "liver-disease"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "gallstones"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "gastric-duodenal-ulcers"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "colitis-crohns-disease"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "other-disease-condition-symptom"
            }
          ],
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
                  "code" : "specification-when-what"
                }
              ],
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
          "code" : "urogenital-system"
        }
      ],
      "prefix" : "19",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "urogenital-system.previous-diagnosis",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "urogenital-system.previous-diagnosis.diagnosis",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-kuse-ja-suguelundid"
            },
            {
              "linkId" : "urogenital-system.previous-diagnosis.written-diagnosis",
              "type" : "string",
              "required" : false,
              "readOnly" : true
            },
            {
              "linkId" : "urogenital-system.previous-diagnosis.source-reference",
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
              "code" : "no-complaints"
            }
          ],
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "urogenital-system.kidney-diseases",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "kidney-diseases"
            }
          ],
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
                  "code" : "kidney-stones"
                }
              ],
              "type" : "boolean",
              "required" : true,
              "item" : [
                {
                  "linkId" : "urogenital-system.kidney-diseases.kidney-stones.specification",
                  "code" : [
                    {
                      "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                      "code" : "specification"
                    }
                  ],
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
                  "code" : "renal-insufficiency"
                }
              ],
              "type" : "boolean",
              "required" : true,
              "item" : [
                {
                  "linkId" : "urogenital-system.kidney-diseases.renal-insufficiency.specification",
                  "code" : [
                    {
                      "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                      "code" : "specification"
                    }
                  ],
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
              "code" : "other-disease-condition-symptom"
            }
          ],
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
                  "code" : "specification-when-what"
                }
              ],
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
          "code" : "blood-problems"
        }
      ],
      "prefix" : "20",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "blood-problems.previous-diagnosis",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "blood-problems.previous-diagnosis.diagnosis",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-verehaigused"
            },
            {
              "linkId" : "blood-problems.previous-diagnosis.written-diagnosis",
              "type" : "string",
              "required" : false,
              "readOnly" : true
            },
            {
              "linkId" : "blood-problems.previous-diagnosis.source-reference",
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
              "code" : "no-complaints"
            }
          ],
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "blood-problems.blood-disease",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "blood-disease"
            }
          ],
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
                  "code" : "anemia"
                }
              ],
              "type" : "boolean",
              "required" : true,
              "item" : [
                {
                  "linkId" : "blood-problems.blood-disease.anemia.specification",
                  "code" : [
                    {
                      "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                      "code" : "specification"
                    }
                  ],
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
              "code" : "other-disease-condition-symptom"
            }
          ],
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
                  "code" : "specification-when-what"
                }
              ],
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
          "code" : "medical-devices"
        }
      ],
      "prefix" : "21",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "medical-devices.no-devices",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "no-devices"
            }
          ],
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "medical-devices.glasses",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "glasses"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "contact-lenses"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "hearing-aid"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "arm-prosthesis"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "leg-prosthesis"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "mobility-device"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
              "code" : "cpap"
            }
          ],
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "medical-devices.no-devices",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : false
        },
        {
          "linkId" : "medical-devices.mandibular-splint",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "mandibular-splint"
            }
          ],
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "medical-devices.no-devices",
              "operator" : "=",
              "answerBoolean" : false
            }
          ],
          "required" : false
        },
        {
          "linkId" : "medical-devices.other-device",
          "code" : [
            {
              "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
              "code" : "other-device"
            }
          ],
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
                  "code" : "specification"
                }
              ],
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
          "code" : "sleep"
        }
      ],
      "prefix" : "22",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "sleep.previous-diagnosis",
          "type" : "group",
          "required" : false,
          "repeats" : true,
          "readOnly" : true,
          "item" : [
            {
              "linkId" : "sleep.previous-diagnosis.diagnosis",
              "type" : "coding",
              "required" : true,
              "readOnly" : true,
              "answerValueSet" : "https://fhir.ee/ValueSet/td-uni"
            },
            {
              "linkId" : "sleep.previous-diagnosis.written-diagnosis",
              "type" : "string",
              "required" : false,
              "readOnly" : true
            },
            {
              "linkId" : "sleep.previous-diagnosis.source-reference",
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
              "code" : "loud-snoring"
            }
          ],
          "type" : "boolean",
          "required" : true,
          "item" : [
            {
              "linkId" : "sleep.loud-snoring.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification"
                }
              ],
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
              "code" : "fatigue"
            }
          ],
          "type" : "boolean",
          "required" : true,
          "item" : [
            {
              "linkId" : "sleep.fatigue.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification"
                }
              ],
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
              "code" : "breath-stop-sleep"
            }
          ],
          "type" : "boolean",
          "required" : true,
          "item" : [
            {
              "linkId" : "sleep.breath-stop-sleep.specification",
              "code" : [
                {
                  "system" : "https://fhir.ee/CodeSystem/tervisedeklaratsiooni-kysimustik",
                  "code" : "specification"
                }
              ],
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
    }
  ]
}

```
