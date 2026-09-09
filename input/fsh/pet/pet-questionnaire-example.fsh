Instance: Questionnaire-PET
InstanceOf: PETQuestionnaire
Description: "Näidis patsiendi elulõpu tahteavaldusest"
Usage: #example
// * meta.versionId = "2.0.0"
* name = "PET"
* title = "Patsiendi elulõpu tahteavaldus"
* version = "1.0.0"
* subjectType = #Patient
* id = "Questionnaire-PET"
* url = "https://fhir.ee/qre/Questionnaire-AHD"
* status = #active
* date = "2023-12-12"
* approvalDate = "2024-01-01"
* effectivePeriod.start = "2024-03-16"
* language = #et

// Võib-olla vajab eraldi dokumenditüüpi PETi jaoks ("Elulõpu tahteavaldus" vm)
* code.system = "https://fhir.ee/CodeSystem/dokumendi-tyyp"
* code.code = #18
* code.display = "tahteavaldused"

// PET rakendumine

* item[0].type = #coding
* item[=].linkId = "pet-indication"
* item[=].text = "Soovin, et minu tahteavaldus rakenduks ühe järgmise valikuga"
* item[=].code.system = $PETQ
* item[=].code.display = "Soovin, et minu tahteavaldus rakenduks ühe järgmise valikuga"
* item[=].code.code = #pet-indication
* item[=].required = true
* item[=].repeats = false
* item[=].readOnly = false
* item[=].answerValueSet = Canonical(PETIndicationVS)
// * item[=].answerOption[0].valueCoding.code = #pet-indication-first-choice
// * item[=].answerOption[=].valueCoding.display = "Elu säilitavast ravist keeldumine, kui selle tulemus on mulle vastuvõetamatu"
// * item[=].answerOption[+].valueCoding.code = #pet-indication-second-choice
// * item[=].answerOption[=].valueCoding.display = "Elu säilitavast ravist keeldumine sõltumata ravitulemusest"
// * item[=].answerOption[+].valueCoding.code = #pet-indication-third-choice
// * item[=].answerOption[=].valueCoding.display = "Kõigist ravisekkumistest keeldumine"

//  Esimene valik

* item[+].type = #group
* item[=].linkId = "pet-indication-first"
* item[=].text = "Elu säilitavast ravist keeldumine, kui selle tulemus on mulle vastuvõetamatu"
* item[=].code.system = $PETQ
* item[=].code.display = "Elu säilitavast ravist keeldumine, kui selle tulemus on mulle vastuvõetamatu"
* item[=].code.code = #pet-indication-first-choice
* item[=].repeats = false
* item[=].required = false
* item[=].enableWhen.question = "pet-indication"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = $PETQ#pet-indication-first-choice


* item[=].item[0].type = #coding
* item[=].item[=].linkId = "pet-indication-first.unacceptable-treatment"
* item[=].item[=].text = "Kui mulle vastuvõetava seisundi saavutamine minu elu säilitamisega ei ole võimalik, siis"
* item[=].item[=].code.system = $PETQ
* item[=].item[=].code.display = "Kui mulle vastuvõetava seisundi saavutamine minu elu säilitamisega ei ole võimalik, siis"
* item[=].item[=].code.code = #pet-indication-first-choice-condition
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(PETLifeSustainingRefusalVS  )
// * item[=].item[=].answerOption[0].valueCoding.code = #no-life-sustaining-treatments
// * item[=].item[=].answerOption[=].valueCoding.display = "Ei soovi ma ühtegi elu säilitavat sekkumist"
// * item[=].item[=].answerOption[+].valueCoding.code = #these-life-sustaining-treatments
// * item[=].item[=].answerOption[=].valueCoding.display = "Ei soovi ma järgmisi elu säilitavaid sekkumisi"

* item[=].item[=].item[0].type = #coding
* item[=].item[=].item[=].linkId = "pet-indication-first.unacceptable-treatment.list"
* item[=].item[=].item[=].text = "Ei soovi ma järgmisi elu säilitavaid sekkumisi"
* item[=].item[=].item[=].code.system = $PETQ
* item[=].item[=].item[=].code.display = "Ei soovi ma järgmisi elu säilitavaid sekkumisi"
* item[=].item[=].item[=].code.code = #these-life-sustaining-treatments
* item[=].item[=].item[=].enableWhen.question = "pet-indication-first.unacceptable-treatment"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding = $PETQ#these-life-sustaining-treatments
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = $UT

* item[=].item[+].type = #coding
* item[=].item[=].linkId = "pet-indication-first.unacceptable-condition"
* item[=].item[=].text = "Minu seisund muutub mulle vastuvõetamatuks, kui"
* item[=].item[=].code.system = $PETQ
* item[=].item[=].code.display = "Minu seisund muutub mulle vastuvõetamatuks, kui"
* item[=].item[=].code.code = #life-quality-is-unacceptable
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = $UC

* item[=].item[+].type = #text
* item[=].item[=].linkId = "pet-indication-first.unacceptable-condition.other"
* item[=].item[=].text = "Muu"
* item[=].item[=].code.system = $PETQ
* item[=].item[=].code.display = "Muu"
* item[=].item[=].code.code = #other
* item[=].item[=].enableWhen.question = "pet-indication-first.unacceptable-condition"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.code = #34
* item[=].item[=].enableWhen.answerCoding.system = "https://fhir.ee/CodeSystem/vastuvoetamatud-seisundid"
* item[=].item[=].required = true
* item[=].item[=].repeats = false 
* item[=].item[=].readOnly = false
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minLength"
* item[=].item[=].extension[=].valueInteger = 4

* item[=].item[+].type = #text
* item[=].item[=].linkId = "pet-indication-first.other"
* item[=].item[=].text = "Soovin veel lisada"
* item[=].item[=].code.system = $PETQ
* item[=].item[=].code.display = "Soovin veel lisada"
* item[=].item[=].code.code = #wish-to-add
* item[=].item[=].required = false
* item[=].item[=].repeats = false 
* item[=].item[=].readOnly = false



//teine valik

* item[+].type = #group
* item[=].linkId = "pet-indication-second"
* item[=].text = "Elu säilitavast ravist keeldumine sõltumata ravitulemusest"
* item[=].code.system = $PETQ
* item[=].code.display = "Elu säilitavast ravist keeldumine sõltumata ravitulemusest"
* item[=].code.code = #pet-indication-second-choice
* item[=].repeats = false
* item[=].required = false
* item[=].enableWhen.question = "pet-indication"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = $PETQ#pet-indication-second-choice

* item[=].item[0].type = #coding
* item[=].item[=].linkId = "pet-indication-second.unacceptable-treatment"
* item[=].item[=].text = "Kui minu terviseseisund halveneb nii, et ellu jäämine ilma elu säilitava ravita ei ole võimalik, siis"
* item[=].item[=].code.system = $PETQ
* item[=].item[=].code.display = "Kui minu terviseseisund halveneb nii, et ellu jäämine ilma elu säilitava ravita ei ole võimalik, siis"
* item[=].item[=].code.code = #pet-indication-second-choice-condition
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(PETLifeSustainingRefusalVS)
// * item[=].item[=].answerOption[0].valueCoding.code = #no-life-sustaining-treatments
// * item[=].item[=].answerOption[=].valueCoding.display = "Ei soovi ma ühtegi elu säilitavat sekkumist"
// * item[=].item[=].answerOption[+].valueCoding.code = #these-life-sustaining-treatments
// * item[=].item[=].answerOption[=].valueCoding.display = "Ei soovi ma järgmisi elu säilitavaid sekkumisi"

* item[=].item[=].item[0].type = #coding
* item[=].item[=].item[=].linkId = "pet-indication-second.unacceptable-treatment.list"
* item[=].item[=].item[=].text = "Ei soovi ma järgmisi elu säilitavaid sekkumisi"
* item[=].item[=].item[=].code.system = $PETQ
* item[=].item[=].item[=].code.display = "Ei soovi ma järgmisi elu säilitavaid sekkumisi"
* item[=].item[=].item[=].code.code = #these-life-sustaining-treatments
* item[=].item[=].item[=].enableWhen.question = "pet-indication-second.unacceptable-treatment"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding = $PETQ#these-life-sustaining-treatments
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = $UT

* item[=].item[+].type = #text
* item[=].item[=].linkId = "pet-indication-second.other"
* item[=].item[=].text = "Soovin veel lisada"
* item[=].item[=].code.system = $PETQ
* item[=].item[=].code.display = "Soovin veel lisada"
* item[=].item[=].code.code = #wish-to-add
* item[=].item[=].required = false
* item[=].item[=].repeats = false 
* item[=].item[=].readOnly = false

// Kolmas valik

* item[+].type = #group
* item[=].linkId = "pet-indication-third"
* item[=].text = "Kõigist ravisekkumistest keeldumine"
* item[=].code.system = $PETQ
* item[=].code.display = "Kõigist ravisekkumistest keeldumine"
* item[=].code.code = #pet-indication-third-choice
* item[=].repeats = false
* item[=].required = false
* item[=].enableWhen.question = "pet-indication"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerCoding = $PETQ#pet-indication-third-choice

* item[=].item[0].type = #coding
* item[=].item[=].linkId = "pet-indication-third.unacceptable-treatment"
* item[=].item[=].text = "Kui ma olen haigestunud, siis"
* item[=].item[=].code.system = $PETQ
* item[=].item[=].code.display = "Kui ma olen haigestunud, siis"
* item[=].item[=].code.code = #pet-indication-third-choice-condition
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = Canonical(PETAllInterventionRefusalVS)
// * item[=].item[=].answerOption[0].valueCoding.code = #no-life-sustaining-or-health-improving-treatments
// * item[=].item[=].answerOption[=].valueCoding.display = "Ei soovi ma mitte ühtegi haigusest paranemisele suunatud meditsiinilist sekkumist ega elu säilitavat sekkumist"
// * item[=].item[=].answerOption[+].valueCoding.code = #no-life-sustaining-or-health-improving-treatments-despite-palliative
// * item[=].item[=].answerOption[=].valueCoding.display = "Ei soovi ma mitte ühtegi haigusest paranemisele suunatud meditsiinilist sekkumistega elu säilitavat sekkumist, välja arvatud palliatiivravi sekkumised"

* item[=].item[+].type = #text
* item[=].item[=].linkId = "pet-indication-third.other"
* item[=].item[=].text = "Soovin veel lisada"
* item[=].item[=].code.system = $PETQ
* item[=].item[=].code.display = "Soovin veel lisada"
* item[=].item[=].code.code = #wish-to-add
* item[=].item[=].required = false
* item[=].item[=].repeats = false 
* item[=].item[=].readOnly = false


// Palliatiivravi

* item[+].type = #coding
* item[=].linkId = "palliative-treatment"
* item[=].text = "Soovin palliatiivravi"
* item[=].code.system = $PETQ
* item[=].code.display = "Soovin palliatiivravi"
* item[=].code.code = #accept-palliative-care
* item[=].required = true
* item[=].repeats = false
* item[=].readOnly = false
* item[=].answerValueSet = Canonical(PETPalliativeCareWishVS)
// * item[=].answerOption[0].valueCoding.code = #palliative-fully
// * item[=].answerOption[=].valueCoding.display = "Täies mahus"
// * item[=].answerOption[+].valueCoding.code = #refuse-specified-treatments
// * item[=].answerOption[=].valueCoding.display = "Ei soovi selliseid sekkumisi"

* item[=].item[0].type = #text
* item[=].item[=].linkId = "palliative-treatment.treatments"
* item[=].item[=].text = "Ei soovi selliseid sekkumisi"
* item[=].item[=].code.system = $PETQ
* item[=].item[=].code.display = "Ei soovi selliseid sekkumisi"
* item[=].item[=].code.code = #refuse-specified-treatments
* item[=].item[=].enableWhen.question = "palliative-treatment"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = $PETQ#refuse-specified-treatments
* item[=].item[=].enableBehavior = #any
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minLength"
* item[=].item[=].extension[=].valueInteger = 4

// Muud soovid

* item[+].type = #coding
* item[=].linkId = "preferred-death-location"
* item[=].text = "Minu eelistatud suremispaik on"
* item[=].code.system = $PETQ
* item[=].code.display = "Minu eelistatud suremispaik on"
* item[=].code.code = #death-location-wish
* item[=].required = false
* item[=].repeats = false
* item[=].readOnly = false
* item[=].answerValueSet = $PDL

* item[=].item[0].type = #text
* item[=].item[=].linkId = "preferred-death-location.other"
* item[=].item[=].text = "Täpsustus"
* item[=].item[=].code.system = $PETQ
* item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].code.code = #specify
* item[=].item[=].enableWhen.question = "preferred-death-location"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.code = #99
* item[=].item[=].enableWhen.answerCoding.system = "https://fhir.ee/CodeSystem/suremispaik"
* item[=].item[=].enableBehavior = #any
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minLength"
* item[=].item[=].extension[=].valueInteger = 4


* item[+].linkId = "people-by-side-death"
* item[=].type = #text
* item[=].text = "Ma soovin, et minu suremise juures viibivad järgmised inimesed"
* item[=].code.system = $PETQ
* item[=].code.display = "Ma soovin, et minu suremise juures viibivad järgmised inimesed"
* item[=].code.code = #people-beside-death-bed
* item[=].required = false
* item[=].repeats = false
* item[=].readOnly = false

* item[+].type = #text
* item[=].linkId = "religious-preferences"
* item[=].text = "Minu religioossed või muud spirituaalsed eelistused"
* item[=].code.system = $PETQ
* item[=].code.display = "Minu religioossed või muud spirituaalsed eelistused"
* item[=].code.code = #religious-preferences
* item[=].required = false
* item[=].repeats = false
* item[=].readOnly = false

* item[+].type = #coding
* item[=].linkId = "actions-after-death"
* item[=].text = "Minu matmisviisi eelistus on"
* item[=].code.system = $PETQ
* item[=].code.display = "Minu matmisviisi eelistus on"
* item[=].code.code = #burial-wish
* item[=].required = false
* item[=].readOnly = false
* item[=].answerValueSet = $BM


* item[=].item[+].type = #text
* item[=].item[=].linkId = "actions-after-death.other"
* item[=].item[=].text = "Täpsustus"
* item[=].item[=].code.system = $PETQ
* item[=].item[=].code.display = "Täpsustus"
* item[=].item[=].code.code = #specify
* item[=].item[=].enableWhen.question = "actions-after-death"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.code = #33
* item[=].item[=].enableWhen.answerCoding.system = "https://fhir.ee/CodeSystem/eelistatud-matmisviis"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minLength"
* item[=].item[=].extension[=].valueInteger = 4

* item[+].type = #text
* item[=].linkId = "other-wishes"
* item[=].text = "Muud olulised soovid"
* item[=].code.system = $PETQ
* item[=].code.display = "Muud olulised soovid"
* item[=].code.code = #other-wishes
* item[=].required = false
* item[=].readOnly = false













