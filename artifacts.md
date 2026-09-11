# Artifacts Summary - Küsimustike teenus v1.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Questionnaires 

These define forms used by systems conforming to this implementation guide to capture or expose data to end users.

| | |
| :--- | :--- |
| [Tervisedeklaratsioon](Questionnaire-Questionnaire-health-declaration.md) | Näidis töötervishoiu tervisedeklaratsiooni küsimustikust |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [EEHealthDeclarationQuestionnaire](StructureDefinition-ee-health-declaration-questionnaire.md) | Tervisedeklaratsiooni küsimustiku profiil |
| [PETQuestionnaire](StructureDefinition-pet-questionnaire.md) | Patsiendi elulõpu tahteavaldus |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Elu säilitavast sekkumisest keeldumise ulatus](ValueSet-pet-all-or-some-refusal-of-treatment-vs.md) | Alamhulk mõisteid PET küsimustiku koodisüsteemist, mille järgi on võimalik valida elusäilitava ravi ulatus (kas inimene soovib loobuda igasugusest elusäilitavast ravist või täpsustada konkreetseid sekkumisi). |
| [Kõigist ravisekkumistest keeldumise ulatus](ValueSet-pet-all-intervention-refusal-vs.md) | Alamhulk mõisteid PET küsimustiku koodisüsteemist, millega inimenekinnitab kolmanda valiku (patsient soovib loobuda kõikidest ravisekkumistest). |
| [PET tahteavalduse rakendumise valikud](ValueSet-pet-indication-vs.md) | Alamhulk mõisteid PET küsimustiku koodisüsteemist, mille järgi on võimalik valida tahteavalduse rakendumine. |
| [Palliatiivravi ulatus](ValueSet-pet-palliative-care-fully-or-not-vs.md) | Alamhulk mõisteid PET küsimustiku koodisüsteemist, mille järgi on võimalik valida palliatiivravi ulatus (kas soovida täiel määral palliatiivravi või loobuda defineeritud sekkumistest). |
| [Sagedus ajas loend](ValueSet-sagedus-ajas.md) | No actual VS in terminology server. Sageduse mõõtühikud UCUM notatsioonis |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Sagedus ajas](CodeSystem-sagedus-ajas.md) | No actual CS in terminology server. Sageduse mõõtühikud UCUM notatsioonis |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Patsiendi elulõpu tahteavaldus](Questionnaire-Questionnaire-PET.md) | Näidis patsiendi elulõpu tahteavaldusest |
| [Tervisedeklaratsioon](Questionnaire-Questionnaire-health-declaration-with-text.md) | Näidis töötervishoiu tervisedeklaratsiooni küsimustikust |
| [Tervisedeklaratsioon CDA-st](Questionnaire-Questionnaire-health-declaration-cda.md) | Näidis töötervishoiu tervisedeklaratsiooni küsimustikust CDA andmete migreerimiseks |

