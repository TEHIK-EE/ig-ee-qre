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

//  Esimene valik

* item[0].type = #group
* item[=].linkId = "pet-indication-first"
* item[=].text = "Elu säilitamisest keeldumine, kui selle tulemus on sulle vastuvõetamatu"
* item[=].code.system = $PETQ
* item[=].code.display = "Elu säilitamisest keeldumine, kui selle tulemus on sulle vastuvõetamatu"
* item[=].code.code = #pet-indication-first-choice
* item[=].repeats = false
* item[=].readOnly = true
* item[=].required = false

* item[=].item[0].type = #coding
* item[=].item[=].linkId = "pet-indication-first.unacceptable-treatment"
* item[=].item[=].text = "Kui mulle vastuvõetava seisundi saavutamine minu elu säilitamisega ei ole võimalik, siis"
* item[=].item[=].code.system = $PETQ
* item[=].item[=].code.display = "Kui mulle vastuvõetava seisundi saavutamine minu elu säilitamisega ei ole võimalik, siis"
* item[=].item[=].code.code = #pet-indication-first-choice-condition
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerOption[0].valueCoding.display = "ei soovi ma ühtegi elu säilitavat sekkumist"
* item[=].item[=].answerOption[+].valueCoding.display = "ei soovi ma järgmisi elu säilitavaid sekkumisi"

* item[=].item[=].item[0].type = #coding
* item[=].item[=].item[=].linkId = "pet-indication-first.unacceptable-treatment.list"
* item[=].item[=].item[=].text = "ei soovi ma järgmisi elu säilitavaid sekkumisi"
* item[=].item[=].item[=].code.system = $PETQ
* item[=].item[=].item[=].code.display = "ei soovi ma järgmisi elu säilitavaid sekkumisi"
* item[=].item[=].item[=].code.code = #these-life-sustaining-treatments
* item[=].item[=].item[=].enableWhen.question = "pet-indication-first.unacceptable-treatment"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.display = "ei soovi ma järgmisi elu säilitavaid sekkumisi"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = false
* item[=].item[=].item[=].answerValueSet = $UT

* item[=].item[+].type = #coding
* item[=].item[=].linkId = "pet-indication-first.unacceptable-condition"
* item[=].item[=].text = "Minu seisund muutub mulle vastuvõetamatuks, kui (vali üks või mitu):"
* item[=].item[=].code.system = $PETQ
* item[=].item[=].code.display = "Minu seisund muutub mulle vastuvõetamatuks, kui (vali üks või mitu):"
* item[=].item[=].code.code = #life-quality-is-unacceptable
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].readOnly = false
* item[=].item[=].answerValueSet = $UC

* item[=].item[=].item[0].type = #text
* item[=].item[=].item[=].linkId = "pet-indication-first.unacceptable-condition.other"
* item[=].item[=].item[=].text = "Muu"
* item[=].item[=].item[=].code.system = $PETQ
* item[=].item[=].item[=].code.display = "Muu"
* item[=].item[=].item[=].code.code = #other
* item[=].item[=].item[=].enableWhen.question = "pet-indication.first-choice.unacceptable-condition"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.display = "muu"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false 
* item[=].item[=].item[=].readOnly = false

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
* item[=].text = "Elu säilitamisest keeldumine sõltumata ravitulemustest"
* item[=].code.system = $PETQ
* item[=].code.display = "Elu säilitamisest keeldumine sõltumata ravitulemustest"
* item[=].code.code = #pet-indication-second-choice
* item[=].repeats = false
* item[=].readOnly = true
* item[=].required = false

* item[=].item[0].type = #coding
* item[=].item[=].linkId = "pet-indication-second.unacceptable-treatment"
* item[=].item[=].text = "Kui minu terviseseisund halveneb nii, et ellu jäämine ilma elu säilitava ravita ei ole võimalik, siis (vali üks)"
* item[=].item[=].code.system = $PETQ
* item[=].item[=].code.display = "Kui minu terviseseisund halveneb nii, et ellu jäämine ilma elu säilitava ravita ei ole võimalik, siis (vali üks)"
* item[=].item[=].code.code = #pet-indication-second-choice-condition
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerOption[0].valueCoding.display = "ei soovi ma ühtegi elu säilitavat sekkumist"
* item[=].item[=].answerOption[+].valueCoding.display = "ei soovi ma järgmisi elu säilitavaid sekkumisi"

* item[=].item[=].item[0].type = #coding
* item[=].item[=].item[=].linkId = "pet-indication-second.unacceptable-treatment.list"
* item[=].item[=].item[=].text = "ei soovi ma järgmisi elu säilitavaid sekkumisi"
* item[=].item[=].item[=].code.system = $PETQ
* item[=].item[=].item[=].code.display = "ei soovi ma järgmisi elu säilitavaid sekkumisi"
* item[=].item[=].item[=].code.code = #these-life-sustaining-treatments
* item[=].item[=].item[=].enableWhen.question = "pet-indication-second.unacceptable-treatment"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.display = "ei soovi ma järgmisi elu säilitavaid sekkumisi"
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
* item[=].text = "kõigist ravisekkumistest keeldumine"
* item[=].code.system = $PETQ
* item[=].code.display = "kõigist ravisekkumistest keeldumine"
* item[=].code.code = #pet-indication-third-choice
* item[=].repeats = false
* item[=].readOnly = true
* item[=].required = false

* item[=].item[0].type = #coding
* item[=].item[=].linkId = "pet-indication-third.unacceptable-treatment"
* item[=].item[=].text = "Kui ma olen haigestunud, siis (vali üks)"
* item[=].item[=].code.system = $PETQ
* item[=].item[=].code.display = "Kui ma olen haigestunud, siis (vali üks)"
* item[=].item[=].code.code = #pet-indication-third-choice-condition
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
* item[=].item[=].answerOption[0].valueCoding.display = "ei soovi ma mitte ühtegi haigusest paranemisele suunatud meditsiinilist sekkumistega elu säilitavat sekkumist"
* item[=].item[=].answerOption[+].valueCoding.display = "ei soovi ma mitte ühtegi haigusest paranemisele suunatud meditsiinilist sekkumistega elu säilitavat sekkumist, välja arvatud palliatiivravi sekkumised"

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
* item[=].text = "Soovin palliatiivravi (vali üks)"
* item[=].code.system = $PETQ
* item[=].code.display = "Soovin palliatiivravi (vali üks)"
* item[=].code.code = #accept-palliative-care
* item[=].required = true
* item[=].repeats = false
* item[=].readOnly = false
* item[=].answerOption[0].valueCoding.display = "täies mahus"
* item[=].answerOption[+].valueCoding.display = "ei soovi selliseid sekkumisi [kirjelda ise]"

* item[=].item[0].type = #text
* item[=].item[=].linkId = "palliative-treatment.treatments"
* item[=].item[=].text = "ei soovi selliseid sekkumisi [kirjelda ise]"
* item[=].item[=].code.system = $PETQ
* item[=].item[=].code.display = "ei soovi selliseid sekkumisi [kirjelda ise]"
* item[=].item[=].code.code = #refuse-specified-treatments
* item[=].item[=].enableWhen.question = "palliative-treatment"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "ei soovi selliseid sekkumisi [kirjelda ise]"
* item[=].item[=].enableBehavior = #any
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false

// Muud soovid

* item[+].type = #coding
* item[=].linkId = "preferred-death-location"
* item[=].text = "Ma eelistan surra"
* item[=].code.system = $PETQ
* item[=].code.display = "Ma eelistan surra"
* item[=].code.code = #death-location-wish
* item[=].required = false
* item[=].repeats = false
* item[=].readOnly = false
* item[=].answerValueSet = $PDL

* item[=].item[0].type = #text
* item[=].item[=].linkId = "preferred-death-location.other"
* item[=].item[=].text = "Täpsutus"
* item[=].item[=].code.system = $PETQ
* item[=].item[=].code.display = "Täpsutus"
* item[=].item[=].code.code = #specify
* item[=].item[=].enableWhen.question = "preferred-death-location"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "muu"
* item[=].item[=].enableBehavior = #any
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false


* item[+].linkId = "People-by-side-death"
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
* item[=].text = "Minu matmisviisi eelistus"
* item[=].code.system = $PETQ
* item[=].code.display = "Minu matmisviisi eelistus on"
* item[=].code.code = #burial-wish
* item[=].required = false
* item[=].readOnly = false
* item[=].answerValueSet = $BM


* item[=].item[+].type = #text
* item[=].item[=].linkId = "actions-after-death.other"
* item[=].item[=].text = "Täpsutus"
* item[=].item[=].code.system = $PETQ
* item[=].item[=].code.display = "Täpsutus"
* item[=].item[=].code.code = #specify
* item[=].item[=].enableWhen.question = "actions-after-death"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "muu"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false

* item[+].type = #text
* item[=].linkId = "other-wishes"
* item[=].text = "Muud olulised soovid"
* item[=].code.system = $PETQ
* item[=].code.display = "Muud olulised soovid"
* item[=].code.code = #other-wishes
* item[=].required = false
* item[=].readOnly = false












