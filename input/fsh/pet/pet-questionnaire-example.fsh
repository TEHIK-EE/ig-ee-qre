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

* item[0].type = #coding
* item[=].linkId = "pet-indication"
* item[=].text = "Soovin, et minu tahteavaldus rakenduks järgmiselt:"
* item[=].required = true
* item[=].repeats = false
* item[=].readOnly = false
    // * item[=].answerConstraint = "optionsOnly"
* item[=].answerOption[0].valueCoding.display = "Elu säilitamisest keeldumine, kui selle tulemus on sulle vastuvõetamatu"
* item[=].answerOption[+].valueCoding.display = "Elu säilitamisest keeldumine sõltumata ravitulemustest"
* item[=].answerOption[+].valueCoding.display = "Kõigist ravisekkumistest keeldumine"

* item[=].item[0].type = #coding
* item[=].item[=].linkId = "pet-indication.first-choice"
* item[=].item[=].text = "Kui mulle vastuvõetava seisundi saavutamine minu elu säilitamisega ei ole võimalik, siis"
* item[=].item[=].enableWhen.question = "pet-indication"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Elu säilitamisest keeldumine, kui selle tulemus on sulle vastuvõetamatu"
* item[=].item[=].enableBehavior = #any
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
    // * item[=].item[=].answerConstraint = "optionsOnly"
* item[=].item[=].answerOption[0].valueCoding.display = "ei soovi ma ühtegi elu säilitavat sekkumist"
* item[=].item[=].answerOption[+].valueCoding.display = "ei soovi ma järgmisi elu säilitavaid sekkumisi"
// * item[=].item[=].disabledDisplay = "hidden"

* item[=].item[=].item[0].type = #coding
* item[=].item[=].item[=].linkId = "pet-indication.first-choice.unacceptable-condition"
* item[=].item[=].item[=].text = "Minu jaoks on elukvaliteet vastuvõetamatu, kui:"
* item[=].item[=].item[=].enableWhen.question = "pet-indication.first-choice"
* item[=].item[=].item[=].enableWhen.operator = #exists
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = false
// * item[=].item[=].item[=].answerConstraint = "optionsOnly"
* item[=].item[=].item[=].answerOption[0].valueCoding.display = "Ma jään püsivalt teadvusetusse seisundisse ehk koomasse "
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Minu vaimne võimekus halveneb pöördumatult, nii et ma ei ole suuteline oma seisundist aru saama, otsuseid tegema ega inimestega suhtlema"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Ma sõltun igapäevatoimingutes (nt söömine, joomine, enesehooldus, riietumine jm) täielikult teistest inimestest"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Muu…[vaba tekst]"
    // * item[=].item[=].item[=].disabledDisplay = "hidden"

* item[=].item[=].item[=].item[0].type = #text
* item[=].item[=].item[=].item[=].linkId = "pet-indication.first-choice.unacceptable-condition.other"
* item[=].item[=].item[=].item[=].text = "Muu"
* item[=].item[=].item[=].item[=].enableWhen.question = "pet-indication.first-choice.unacceptable-condition"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerCoding.display = "Muu…[vaba tekst]"
* item[=].item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].repeats = false 
* item[=].item[=].item[=].item[=].readOnly = false
// * item[=].item[=].item[=].item[=].disabledDisplay = "hidden"

* item[=].item[=].item[+].type = #coding
* item[=].item[=].item[=].linkId = "pet-indication.first-choice.unacceptable-treatments"
* item[=].item[=].item[=].text = "Ma keeldun järgmistest meditsiinilistest sekkumistest:"
* item[=].item[=].item[=].enableWhen.question = "pet-indication.first-choice"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.display = "ei soovi ma järgmisi elu säilitavaid sekkumisi"
* item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = false
// * item[=].item[=].item[=].answerConstraint = "optionsOnly"
* item[=].item[=].item[=].answerOption[0].valueCoding.display = "elustamine kliinilisest surmast"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "hingamisaparaadi kasutamine"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "neeruasendusravi ehk dialüüs"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "kunstlik toitmine ja kunstlik vedeliku manustamine"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "intensiivraviosakonda paigutamine"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "ravimite manustamine"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "vere või verekomponentide manustamine"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "kirurgiline ravi"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "uuringud ja analüüsid"
    // * item[=].item[=].item[=].disabledDisplay = "hidden"


* item[=].item[+].type = #coding
* item[=].item[=].linkId = "pet-indication.second-choice"
* item[=].item[=].text = "Kui minu terviseseisund halveneb nii, et ellu jäämine ilma elu säilitava ravita ei ole võimalik, siis (vali üks)"
* item[=].item[=].enableWhen.question = "pet-indication"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "elu säilitamisest keeldumine sõltumata ravitulemustest"
* item[=].item[=].enableBehavior = #any
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
    // * item[=].item[=].answerConstraint = "optionsOnly"
* item[=].item[=].answerOption[0].valueCoding.display = "ei soovi ma ühtegi elu säilitavat sekkumist"
* item[=].item[=].answerOption[+].valueCoding.display = "ei soovi ma järgmisi elu säilitavaid sekkumisi"
    // * item[=].item[=].disabledDisplay = "hidden"

* item[=].item[=].item[0].type = #coding
* item[=].item[=].item[=].linkId = "pet-indication.second-choice.unacceptable-treatments"
* item[=].item[=].item[=].text = "Ma keeldun järgmistest meditsiinilistest sekkumistest:"
* item[=].item[=].item[=].enableWhen.question = "pet-indication.second-choice"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.display = "ei soovi ma järgmisi elu säilitavaid sekkumisi"
* item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = false
    // * item[=].item[=].item[=].answerConstraint = "optionsOnly"
* item[=].item[=].item[=].answerOption[0].valueCoding.display = "elustamine kliinilisest surmast"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "hingamisaparaadi kasutamine"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "neeruasendusravi ehk dialüüs"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "kunstlik toitmine ja kunstlik vedeliku manustamine"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "intensiivraviosakonda paigutamine"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "ravimite manustamine"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "vere või verekomponentide manustamine"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "kirurgiline ravi"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "uuringud ja analüüsid"
    // * item[=].item[=].item[=].disabledDisplay = "hidden"


* item[=].item[+].type = #coding
* item[=].item[=].linkId = "pet-indication.third-choice"
* item[=].item[=].text = "Kui ma olen haigestunud, siis (vali üks)"
* item[=].item[=].enableWhen.question = "pet-indication"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "kõigist ravisekkumistest keeldumine"
* item[=].item[=].enableBehavior = #any
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
    // * item[=].item[=].answerConstraint = "optionsOnly"
* item[=].item[=].answerOption[0].valueCoding.display = "ei soovi ma mitte ühtegi haigusest paranemisele suunatud meditsiinilist sekkumist ega elu säilitavat sekkumist"
* item[=].item[=].answerOption[+].valueCoding.display = "ei soovi ma mitte ühtegi haigusest paranemisele suunatud meditsiinilist sekkumist ega elu säilitavat sekkumist, välja arvatud palliatiivravi sekkumised"
// * item[=].item[=].disabledDisplay = "hidden"

* item[=].item[+].type = #text
* item[=].item[=].linkId = "pet-indication.third-choice.other-wishes"
* item[=].item[=].text = "Soovin veel lisada"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
// * item[=].item[=].item[=].disabledDisplay = "hidden"


* item[+].type = #coding
* item[=].linkId = "palliative-treatment"
* item[=].text = "Soovin palliatiivravi (vali üks)"
* item[=].required = true
* item[=].repeats = false
* item[=].readOnly = false
    // * item[=].answerConstraint = "optionsOnly"
* item[=].answerOption[0].valueCoding.display = "täies mahus"
* item[=].answerOption[+].valueCoding.display = "ei soovi selliseid sekkumisi [kirjelda ise]"

* item[=].item[0].type = #text
* item[=].item[=].linkId = "palliative-treatment.treatments"
* item[=].item[=].text = "Soovin vältida"
* item[=].item[=].enableWhen.question = "palliative-treatment"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "ei soovi selliseid sekkumisi [kirjelda ise]"
* item[=].item[=].enableBehavior = #any
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
    // * item[=].item[=].disabledDisplay = "hidden"

* item[+].type = #coding
* item[=].linkId = "preferred-death-location"
* item[=].text = "Ma eelistan surra"
* item[=].required = false
* item[=].repeats = false
* item[=].readOnly = false
    // * item[=].answerConstraint = "optionsOnly"
* item[=].answerOption[0].valueCoding.display = "Haiglas"
* item[=].answerOption[+].valueCoding.display = "Kodus"
* item[=].answerOption[+].valueCoding.display = "Mujal"

* item[=].item[0].type = #text
* item[=].item[=].linkId = "preferred-death-location.other"
* item[=].item[=].text = "Täpsutus"
* item[=].item[=].enableWhen.question = "preferred-death-location"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Mujal"
* item[=].item[=].enableBehavior = #any
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
    // * item[=].item[=].disabledDisplay = "hidden"


* item[+].linkId = "People-by-side-death"
* item[=].type = #text
* item[=].text = "Ma soovin, et minu suremise juures viibivad järgmised inimesed"
* item[=].required = false
* item[=].repeats = false
* item[=].readOnly = false

* item[+].type = #text
* item[=].linkId = "religious-preferences"
* item[=].text = "Minu religioossed või muud spirituaalsed eelistused "
* item[=].required = false
* item[=].repeats = false
* item[=].readOnly = false

* item[+].type = #coding
* item[=].linkId = "actions-after-death"
* item[=].text = "Minu matmisviisi eelistus"
* item[=].required = false
* item[=].readOnly = false
* item[=].answerOption[0].valueCoding.display = "kirstuga matmine"
* item[=].answerOption[+].valueCoding.display = "tuhastamine ja urnimatus"
* item[=].answerOption[+].valueCoding.display = "mul ei ole eelistust"
* item[=].answerOption[+].valueCoding.display = "muu: [vaba tekst]"

* item[=].item[+].type = #text
* item[=].item[=].linkId = "actions-after-death.other"
* item[=].item[=].text = "Täpsusta"
* item[=].item[=].enableWhen.question = "actions-after-death"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "muu: [vaba tekst]"
* item[=].item[=].required = false
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false

* item[+].type = #text
* item[=].linkId = "other-wishes"
* item[=].text = "Minu jaoks olulised soovid"
* item[=].required = false
* item[=].readOnly = false












