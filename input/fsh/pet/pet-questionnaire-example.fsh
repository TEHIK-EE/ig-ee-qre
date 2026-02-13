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
// * item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
// * item[=].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].linkId = "pet-indication"
* item[=].text = "Soovin, et minu tahteavaldus rakenduks järgmiselt:"
* item[=].required = true
* item[=].repeats = false
* item[=].readOnly = false
    // * item[=].answerConstraint = "optionsOnly"
* item[=].answerOption[0].valueCoding.display = "Kui mu terviseseisund on selline, et mulle vastuvõetava elukvaliteedi saavutamine minu elu säilitamisega ei ole võimalik"
* item[=].answerOption[+].valueCoding.display = "Kui minu terviseseisund halveneb nii, et ellu jäämine ilma elu säilitava ravita ei ole võimalik"
* item[=].answerOption[+].valueCoding.display = "Kui ma olen haigestunud"
* item[=].answerOption[+].valueCoding.display = "Muu"

* item[=].item[0].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "pet-indication.first-choice"
* item[=].item[=].text = "Kui mu terviseseisund on selline, et mulle vastuvõetava elukvaliteedi saavutamine minu elu säilitamisega ei ole võimalik, siis"
* item[=].item[=].enableWhen.question = "pet-indication"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Kui mu terviseseisund on selline, et mulle vastuvõetava elukvaliteedi saavutamine minu elu säilitamisega ei ole võimalik"
* item[=].item[=].enableBehavior = #any
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
    // * item[=].item[=].answerConstraint = "optionsOnly"
* item[=].item[=].answerOption[0].valueCoding.display = "ei soovi ma ühtegi elu säilitav sekkumist"
* item[=].item[=].answerOption[+].valueCoding.display = "ei soovi ma neid elu säilitavaid sekkumisi, mille olen ära märkinud"
// * item[=].item[=].disabledDisplay = "hidden"

* item[=].item[=].item[0].type = #coding
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].item[=].linkId = "pet-indication.first-choice.unacceptable-condition"
* item[=].item[=].item[=].text = "Minu jaoks on elukvaliteet vastuvõetamatu, kui:"
* item[=].item[=].item[=].enableWhen.question = "pet-indication.first-choice"
* item[=].item[=].item[=].enableWhen.operator = #exists
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
// * item[=].item[=].item[=].answerConstraint = "optionsOnly"
* item[=].item[=].item[=].answerOption[0].valueCoding.display = "Olen püsivalt teadvusetus seisundis."
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Minu vaimne võimekus on pöördumatult halvenenud nii, et ma ei ole suuteline aru saama, otsuseid tegema ega inimestega suhtlema. "
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Olen igapäevastes toimingutes (nt söömine, joomine, hügieenitoimingud, riietumine jne) täielikult teistest sõltuv."
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
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].item[=].linkId = "pet-indication.first-choice.unacceptable-treatments"
* item[=].item[=].item[=].text = "Ma keeldun järgmistest meditsiinilistest sekkumistest:"
* item[=].item[=].item[=].enableWhen.question = "pet-indication.first-choice"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.display = "ei soovi ma neid elu säilitavaid sekkumisi, mille olen ära märkinud"
* item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = false
// * item[=].item[=].item[=].answerConstraint = "optionsOnly"
* item[=].item[=].item[=].answerOption[0].valueCoding.display = "Elustamine kliinilisest surmast "
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Hingamisaparaadi kasutamine "
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Neeruasendusravi ehk dialüüs "
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Kunstlik vedeliku manustamine ja toitmine"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Intensiivraviosakonda paigutamine elu pikendava ravi eesmärgil"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Ravimite manustamine, millel on muu kui vaevusi leevendav eesmärk "
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Vere või verekomponentide manustamine"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Kirurgiline ravi, millel on muu kui vaevusi leevendav eesmärk"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Analüüsid ja uuringud, millel on muu eesmärk kui vaevusi leevendava ravi parandamine "
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Muu: …[vaba tekst]"
    // * item[=].item[=].item[=].disabledDisplay = "hidden"

* item[=].item[=].item[=].item[0].type = #text
* item[=].item[=].item[=].item[=].linkId = "pet-indication.first-choice.unacceptable-treatments.other"
* item[=].item[=].item[=].item[=].text = "Muu"
* item[=].item[=].item[=].item[=].enableWhen.question = "pet-indication.first-choice.unacceptable-treatments"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerCoding.display = "Muu: …[vaba tekst]"
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].readOnly = false

* item[=].item[+].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "pet-indication.second-choice"
* item[=].item[=].text = "Kui minu terviseseisund halveneb nii, et ellu jäämine ilma elu säilitava ravita ei ole võimalik, siis: (vali üks)"
* item[=].item[=].enableWhen.question = "pet-indication"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Kui minu terviseseisund halveneb nii, et ellu jäämine ilma elu säilitava ravita ei ole võimalik"
* item[=].item[=].enableBehavior = #any
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
    // * item[=].item[=].answerConstraint = "optionsOnly"
* item[=].item[=].answerOption[0].valueCoding.display = "ei soovi ma ühtegi elu säilitavat sekkumist"
* item[=].item[=].answerOption[+].valueCoding.display = "ei soovi ma neid elu säilitavaid sekkumisi, mille olen ära märkinud (siin peaks avanema med.sekkumiste loetelu (vt edasi))."
    // * item[=].item[=].disabledDisplay = "hidden"

* item[=].item[=].item[0].type = #coding
* item[=].item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].item[=].linkId = "pet-indication.second-choice.unacceptable-treatments"
* item[=].item[=].item[=].text = "Ma keeldun järgmistest meditsiinilistest sekkumistest:"
* item[=].item[=].item[=].enableWhen.question = "pet-indication.second-choice"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.display = "ei soovi ma neid elu säilitavaid sekkumisi, mille olen ära märkinud (siin peaks avanema med.sekkumiste loetelu (vt edasi))."
* item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].readOnly = false
    // * item[=].item[=].item[=].answerConstraint = "optionsOnly"
* item[=].item[=].item[=].answerOption[0].valueCoding.display = "Elustamine kliinilisest surmast "
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Hingamisaparaadi kasutamine "
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Neeruasendusravi ehk dialüüs "
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Kunstlik vedeliku manustamine ja toitmine"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Intensiivraviosakonda paigutamine elu pikendava ravi eesmärgil"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Ravimite manustamine, millel on muu kui vaevusi leevendav eesmärk "
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Vere või verekomponentide manustamine"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Kirurgiline ravi, millel on muu kui vaevusi leevendav eesmärk"
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Analüüsid ja uuringud, millel on muu eesmärk kui vaevusi leevendava ravi parandamine "
* item[=].item[=].item[=].answerOption[+].valueCoding.display = "Muu"
    // * item[=].item[=].item[=].disabledDisplay = "hidden"

* item[=].item[=].item[=].item[0].type = #text
* item[=].item[=].item[=].item[=].linkId = "pet-indication.second-choice.unacceptable-treatments.other"
* item[=].item[=].item[=].item[=].text = "Muu"
* item[=].item[=].item[=].item[=].enableWhen.question = "pet-indication.second-choice.unacceptable-treatments"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerCoding.display = "Muu"
* item[=].item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].readOnly = false
    // * item[=].item[=].item[=].item[=].disabledDisplay = "hidden"

* item[=].item[+].type = #coding
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].linkId = "pet-indication.third-choice"
* item[=].item[=].text = "Kui ma olen haigestunud, siis: (vali üks)"
* item[=].item[=].enableWhen.question = "pet-indication"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Kui ma olen haigestunud"
* item[=].item[=].enableBehavior = #any
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
    // * item[=].item[=].answerConstraint = "optionsOnly"
* item[=].item[=].answerOption[0].valueCoding.display = "ei soovi ma mitte ühtegi paranemisele suunatud meditsiinilist sekkumist"
* item[=].item[=].answerOption[+].valueCoding.display = "ei soovi ma järgmisi meditsiinilisi sekkumisi…[vaba tekst]"
// * item[=].item[=].disabledDisplay = "hidden"

* item[=].item[=].item[0].type = #text
* item[=].item[=].item[=].linkId = "pet-indication.third-choice.unacceptable-treatment"
* item[=].item[=].item[=].text = "Sekkumised, millest keeldun"
* item[=].item[=].item[=].enableWhen.question = "pet-indication.third-choice"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.display = "ei soovi ma järgmisi meditsiinilisi sekkumisi…[vaba tekst]"
* item[=].item[=].item[=].enableBehavior = #any
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].readOnly = false
// * item[=].item[=].item[=].disabledDisplay = "hidden"

* item[=].item[+].type = #text
* item[=].item[=].linkId = "pet-indication.fourth-choice"
* item[=].item[=].text = "Muu"
* item[=].item[=].enableWhen.question = "pet-indication"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Muu"
* item[=].item[=].enableBehavior = #any
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
    // * item[=].item[=].disabledDisplay = "hidden"


* item[+].type = #coding
    // * item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
    // * item[=].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].linkId = "palliative-treatment"
* item[=].text = "Olenemata minu valikutest tahteavalduse eelmises osas, soovin ma, et mulle pakutaks vaevusi leevendavat ravi ja hooldust ehk palliatiivravi: (vali üks)"
* item[=].required = true
* item[=].repeats = false
* item[=].readOnly = false
    // * item[=].answerConstraint = "optionsOnly"
* item[=].answerOption[0].valueCoding.display = "Soovin täies mahus palliatiivset ravi, et minu vaevused oleksid igal juhul leevendatud"
* item[=].answerOption[+].valueCoding.display = "Soovin palliatiivse ravi puhul vältida:....[vaba tekst]"

* item[=].item[0].type = #text
* item[=].item[=].linkId = "palliative-treatment.treatments"
* item[=].item[=].text = "Soovin vältida"
* item[=].item[=].enableWhen.question = "palliative-treatment"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.display = "Soovin palliatiivse ravi puhul vältida:....[vaba tekst]"
* item[=].item[=].enableBehavior = #any
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[=].readOnly = false
    // * item[=].item[=].disabledDisplay = "hidden"

* item[+].type = #coding
    // * item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
    // * item[=].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
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

* item[+].type = #text
* item[=].linkId = "people-by-side-death"
* item[=].text = "Ma soovin, et minu suremise juures viibivad järgmised isikud:"
* item[=].required = false
* item[=].readOnly = false

* item[=].item[0].linkId = "246658268145_helpText"
* item[=].item[=].type = #display
* item[=].item[=].text = "Nimi, seos minuga ja kontaktandmed"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item[=].extension.valueCodeableConcept.text = "Help-Button"

* item[+].type = #text
* item[=].linkId = "religious-preferences"
* item[=].text = "Minu religioossed või muud spirituaalsed eelistused "
* item[=].required = false
* item[=].repeats = false
* item[=].readOnly = false

* item[=].item[0].linkId = "593162052362_helpText"
* item[=].item[=].type = #display
* item[=].item[=].text = "Lisa siia oma religioossed, spirituaalsed või maailmavaatelised soovid, mis on sinu jaoks elu lõpu ajal olulised. Need aitavad sinu lähedastel ja usaldusisikul paremini mõista, millist tuge või rituaale sa sooviksid (nt vaimuliku kohalolek, palve, vaikus, muusika või muu sümboolne tegevus)."
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item[=].extension.valueCodeableConcept.text = "Help-Button"

* item[+].type = #text
* item[=].linkId = "other-wishes"
* item[=].text = "Minu jaoks olulised soovid"
* item[=].required = false
* item[=].readOnly = false

* item[=].item[0].linkId = "637523866624_helpText"
* item[=].item[=].type = #display
* item[=].item[=].text = "Siia saad kirja panna muud isiklikud soovid, mis on sinu jaoks elu lõpu ajal tähtsad ja mis aitavad lähedastel sind toetada ning sinuga rahulikult hüvasti jätta. Rahaga või pärandiga seotud küsimused ei kuulu sellesse ossa."
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item[=].extension.valueCodeableConcept.text = "Help-Button"

//JÄRJEHOIDJA-------------------------------------------------------------------------------------------











