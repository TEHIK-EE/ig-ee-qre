Profile: EEHealthDeclarationQuestionnaire
Parent: Questionnaire
Id: EEHealthDeclarationQuestionnaire
Description: "Tervisedeklaratsiooni küsimustiku profiil"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2024-01-01"
* url 1..1
* versionAlgorithm[x] 0..0
* identifier 0..0
* derivedFrom 0..0
* experimental 0..0
* subjectType = #Patient
* useContext 0..0
* purpose 0..0
// causes errors in qa
//* text 0..0
//* contact 0..0
//* jurisdiction 0..0
//* publisher 0..0
* copyright 0..0
* copyrightLabel 0..0
* approvalDate 1..1
* lastReviewDate 0..0
* effectivePeriod 0..1
* name = "HDECL"
* title = "Tervisedeklaratsiooni küsimustik"
* description = "Tervisedeklaratsiooni küsimustik"
* code 1..1
* item 1..*
  * linkId 1..1
  * definition 0..0
  * code 0..*
  * prefix 0..1
  * text 0..1
  * initial 0..0
  * type 1..1
  * required 1..1
