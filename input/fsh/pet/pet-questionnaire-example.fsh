Instance: Questionnaire-PET
InstanceOf: PETQuestionnaire
Description: "Näidis patsiendi elulõpu tahteavaldusest"
Usage: #example
// * meta.versionId = "2.0.0"
* name = "PET"
* title = "Patsiendi elulõpu tahteavaldus"
* version = "2.0.0"
* subjectType = #Patient
* id = "Questionnaire-PET"
* url = "https://fhir.ee/qre/Questionnaire-PET"
* status = #active
* date = "2023-12-12"
* approvalDate = "2024-01-01"
* effectivePeriod.start = "2024-03-16"

// Võib-olla vajab eraldi dokumenditüüpi PETi jaoks ("Elulõpu tahteavaldus" vm)
* code.system = "http://fhir.ee/CodeSystem/dokumendi-tyyp"
* code.code = #18
* code.display = "Tahteavaldused"

* item[0].linkId = "deny-treatment-decreased-quality-of-life"
* item[=].text = "Kui mu terviseseisund on selline, et mulle vastuvõetava elukvaliteedi saavutamine minu elu säilitamisega ei ole võimalik, siis"
* item[=].type = #coding
* item[=].answerOption[0].valueCoding.system = $DT
* item[=].answerOption[0].valueCoding.code = #1
* item[=].answerOption[0].valueCoding.display = "ei soovi ma ühtegi elu pikendavat sekkumist"
* item[=].answerOption[1].valueCoding.system = $DT
* item[=].answerOption[1].valueCoding.code = #2
* item[=].answerOption[1].valueCoding.display = "ei soovi ma neid elu pikendavaid sekkumisi, mille olen ära märkinud"
* item[=].required = true
* item[=].readOnly = false
* item[=].repeats = false

* item[=].item[0].linkId = "deny-treatment-decreased-quality-of-life.unacceptable-conditions"
* item[=].item[=].text = "Minu jaoks on elukvaliteet vastuvõetamatu, kui"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[0].valueCoding.system = $UC
* item[=].item[=].answerOption[0].valueCoding.code = #1
* item[=].item[=].answerOption[0].valueCoding.display = "Olen püsivalt teadvusetus seisundis"
* item[=].item[=].answerOption[1].valueCoding.system = $UC
* item[=].item[=].answerOption[1].valueCoding.code = #2
* item[=].item[=].answerOption[1].valueCoding.display = "Minu vaimne võimekus on pöördumatult halvenenud nii, et ma ei ole suuteline aru saama, otsuseid tegema ega inimestega suhtlema."
* item[=].item[=].answerOption[2].valueCoding.system = $UC
* item[=].item[=].answerOption[2].valueCoding.code = #3
* item[=].item[=].answerOption[2].valueCoding.display = "Olen igapäevastes toimingutes (nt söömine, joomine, hügieenitoimingud, riietumine jne) täielikult teistest sõltuv."
* item[=].item[=].answerOption[3].valueCoding.system = $UC
* item[=].item[=].answerOption[3].valueCoding.code = #4
* item[=].item[=].answerOption[3].valueCoding.display = "Muu"
* item[=].item[=].required = true
* item[=].item[=].readOnly = false
* item[=].item[=].repeats = false

* item[=].item[=].item[0].linkId = "deny-treatment-decreased-quality-of-life.unacceptable-conditions.other"
* item[=].item[=].item[=].text = "Täpsustage"
* item[=].item[=].item[=].type = #text
* item[=].item[=].item[=].enableWhen.question = "deny-treatment-decreased-quality-of-life.unacceptable-condition"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.system = $UC
* item[=].item[=].item[=].enableWhen.answerCoding.code = #4
* item[=].item[=].item[=].required = true

* item[+].linkId = "deny-treatment-loss-of-life"
* item[=].text = "Kui minu terviseseisund halveneb nii, et ellu jäämine ilma elu säilitava ravita ei ole võimalik, siis"
* item[=].type = #coding
* item[=].answerOption[0].valueCoding.system = $DT
* item[=].answerOption[0].valueCoding.code = #1
* item[=].answerOption[0].valueCoding.display = "ei soovi ma ühtegi elu pikendavat sekkumist"
* item[=].answerOption[1].valueCoding.system = $DT
* item[=].answerOption[1].valueCoding.code = #2
* item[=].answerOption[1].valueCoding.display = "ei soovi ma neid elu pikendavaid sekkumisi, mille olen ära märkinud"
* item[=].required = true
* item[=].readOnly = false
* item[=].repeats = false

* item[+].linkId = "deny-treatment-become-ill"
* item[=].text = "Kui ma olen haigestunud, siis"
* item[=].type = #coding
* item[=].answerOption[0].valueCoding.system = $DT
* item[=].answerOption[0].valueCoding.code = #1
* item[=].answerOption[0].valueCoding.display = "ei soovi ma ühtegi elu pikendavat sekkumist"
* item[=].answerOption[1].valueCoding.system = $DT
* item[=].answerOption[1].valueCoding.code = #2
* item[=].answerOption[1].valueCoding.display = "ei soovi ma neid elu pikendavaid sekkumisi, mille olen ära märkinud"
* item[=].required = true
* item[=].readOnly = false
* item[=].repeats = false

* item[+].linkId = "acceptable-palliative-treatment"
* item[=].text = "Kuigi olen keeldunud elu pikendavast ravist (või haigestumise korral igasugusest paranemisele suunatud sekkumisest), soovin ma, et mulle pakutaks vaevusi leevendavat ravi ja hooldust:"
* item[=].type = #coding
* item[=].answerOption[0].valueCoding.system = $APT
* item[=].answerOption[0].valueCoding.code = #1
* item[=].answerOption[0].valueCoding.display = "Soovin täies mahus palliatiivset ravi, et minu vaevused oleksid igal juhul leevendatud"
* item[=].answerOption[1].valueCoding.system = $APT
* item[=].answerOption[1].valueCoding.code = #2
* item[=].answerOption[1].valueCoding.display = "Soovin palliatiivse ravi rakendamisel vältida:"
* item[=].required = false
* item[=].readOnly = false
* item[=].repeats = false

* item[=].item[0].linkId = "acceptable-palliative-treatment.unacceptable-treatments"
* item[=].item[=].text = "Kirjeldage:"
* item[=].item[=].type = #text
* item[=].item[=].required = true
* item[=].item[=].readOnly = false
* item[=].item[=].repeats = false
* item[=].item[=].enableWhen.question = "acceptable-palliative-treatment"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.system = $APT
* item[=].item[=].enableWhen.answerCoding.code = #2

* item[+].linkId = "unacceptable-treatments"
* item[=].text = "Meditsiinilised sekkumised, millest ma keeldun:"
* item[=].type = #coding
* item[=].answerOption[0].valueCoding.system = $SNOMED
* item[=].answerOption[0].valueCoding.code = #439569004
* item[=].answerOption[0].valueCoding.display = "Resuscitation (procedure)"
* item[=].answerOption[1].valueCoding.system = $SNOMED
* item[=].answerOption[1].valueCoding.code = #40617009 
* item[=].answerOption[1].valueCoding.display = "Artificial ventilation (regime/therapy)"
* item[=].answerOption[2].valueCoding.system = $SNOMED
* item[=].answerOption[2].valueCoding.code = #265764009
* item[=].answerOption[2].valueCoding.display = "Renal dialysis (procedure)"
* item[=].answerOption[3].valueCoding.system = $SNOMED
* item[=].answerOption[3].valueCoding.code = #397821002 
* item[=].answerOption[3].valueCoding.display = "Patient transfer to intensive care unit (procedure)"
* item[=].answerOption[4].valueCoding.system = $SNOMED
* item[=].answerOption[4].valueCoding.code = #789709006
* item[=].answerOption[4].valueCoding.display = "Administration of total parenteral nutrition (procedure)"
* item[=].answerOption[5].valueCoding.system = $SNOMED
* item[=].answerOption[5].valueCoding.code = #45236006 
* item[=].answerOption[5].valueCoding.display = "Emergency administration of medication (procedure)"
* item[=].answerOption[6].valueCoding.system = $SNOMED
* item[=].answerOption[6].valueCoding.code = #116859006
* item[=].answerOption[6].valueCoding.display = "Transfusion of blood product (procedure)"
* item[=].answerOption[7].valueCoding.system = $SNOMED
* item[=].answerOption[7].valueCoding.code = #370612006 
* item[=].answerOption[7].valueCoding.display = "Excision of neoplasm (procedure)"
* item[=].answerOption[8].valueCoding.system = $SNOMED
* item[=].answerOption[8].valueCoding.code = #73994005
* item[=].answerOption[8].valueCoding.display = "Emergency operation (procedure)"
* item[=].answerOption[9].valueCoding.system = $SNOMED
* item[=].answerOption[9].valueCoding.code = #373110003 
* item[=].answerOption[9].valueCoding.display = "Emergency procedure (procedure)"
* item[=].answerOption[10].valueCoding.system = $SNOMED
* item[=].answerOption[10].valueCoding.code = #74964007 
* item[=].answerOption[10].valueCoding.display = "Other (qualifier value)"
* item[=].enableBehavior = #any
* item[=].enableWhen[0].question = "deny-treatment-decreased-quality-of-life"
* item[=].enableWhen[0].operator = #=
* item[=].enableWhen[0].answerCoding.system = $DT
* item[=].enableWhen[0].answerCoding.code = #2
* item[=].enableWhen[1].question = "deny-treatment-loss-of-life"
* item[=].enableWhen[1].operator = #=
* item[=].enableWhen[1].answerCoding.system = $DT
* item[=].enableWhen[1].answerCoding.code = #2
* item[=].enableWhen[2].question = "deny-treatment-become-ill"
* item[=].enableWhen[2].operator = #=
* item[=].enableWhen[2].answerCoding.system = $DT
* item[=].enableWhen[2].answerCoding.code = #2
* item[=].required = true
* item[=].readOnly = false
* item[=].repeats = false

* item[=].item[0].linkId = "unacceptable-treatments.other"
* item[=].item[=].text = "Täpsustage:"
* item[=].item[=].type = #text
* item[=].item[=].required = true
* item[=].item[=].readOnly = false
* item[=].item[=].repeats = false
* item[=].item[=].enableWhen.question = "unacceptable-treatment"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.system = $SNOMED
* item[=].item[=].enableWhen.answerCoding.code = #74964007

* item[+].linkId = "death-location"
* item[=].text = "Soovin, et mu suremispaik oleks: "
* item[=].type = #coding
* item[=].answerOption[0].valueCoding.system = $SNOMED
* item[=].answerOption[0].valueCoding.code = #22232009
* item[=].answerOption[0].valueCoding.display = "Hospital (environment)"
* item[=].answerOption[1].valueCoding.system = $SNOMED
* item[=].answerOption[1].valueCoding.code = #264362003
* item[=].answerOption[1].valueCoding.display = "Home (environment)"
* item[=].answerOption[2].valueCoding.system = $SNOMED
* item[=].answerOption[2].valueCoding.code = #74964007
* item[=].answerOption[2].valueCoding.display = "Other (qualifier value)"
* item[=].required = true
* item[=].readOnly = false
* item[=].repeats = false

* item[=].item[0].linkId = "death-location.other"
* item[=].item[=].text = "Täpsustage:"
* item[=].item[=].type = #text
* item[=].item[=].required = true
* item[=].item[=].readOnly = false
* item[=].item[=].repeats = false
* item[=].item[=].enableWhen.question = "death-location"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.system = $SNOMED
* item[=].item[=].enableWhen.answerCoding.code = #74964007

* item[+].linkId = "death-support-people"
* item[=].text = "Soovin järgmiste isikute tuge:"
* item[=].type = #text
* item[=].required = false
* item[=].readOnly = false
* item[=].repeats = false

* item[+].linkId = "death-support-organization"
* item[=].text = "Soovin järgmise kiriku või maailmavaate ühenduse esindaja tuge:"
* item[=].type = #text
* item[=].required = false
* item[=].readOnly = false
* item[=].repeats = false

* item[+].linkId = "death-support-religious-traditions"
* item[=].text = "Minu religioossed või muud spirituaalsed eelistused:"
* item[=].type = #text
* item[=].required = false
* item[=].readOnly = false
* item[=].repeats = false

* item[+].linkId = "death-support-hospice"
* item[=].text = "Soovin hospiitsteenust."
* item[=].type = #boolean
* item[=].required = false
* item[=].readOnly = false
* item[=].repeats = false

* item[+].linkId = "people-beside-deathbed"
* item[=].text = "Soovin et minu elulõpu juures viibiks: "
* item[=].type = #text
* item[=].required = false
* item[=].readOnly = false
* item[=].repeats = false

* item[+].linkId = "other-wishes"
* item[=].text = "Muud soovid: "
* item[=].type = #text
* item[=].required = false
* item[=].readOnly = false
* item[=].repeats = false