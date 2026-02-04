CodeSystem: Sagedus_CS
Id: sagedus-ajas
Title: "Sagedus ajas"
Description: "No actual CS in terminology server. Sageduse mõõtühikud UCUM notatsioonis"

* ^url = $Sagedus
* ^status = #draft
* ^content = #fragment
* ^experimental = false

* #/wk "nädalas"
  * ^designation[+].language = #en
  * ^designation[=].value = "per week"
  * ^designation[+].language = #ru
  * ^designation[=].value = ""

* #/d "päevas"
  * ^designation[+].language = #en
  * ^designation[=].value = "per day"
  * ^designation[+].language = #ru
  * ^designation[=].value = ""

* #/mo "kuus"
  * ^designation[+].language = #en
  * ^designation[=].value = "per month"
  * ^designation[+].language = #ru
  * ^designation[=].value = ""


ValueSet: Sagedus_VS
Id: sagedus-ajas
Title: "Sagedus ajas loend"
Description: "No actual VS in terminology server. Sageduse mõõtühikud UCUM notatsioonis"

* ^url = $Sagedus-VS
* ^experimental = false
* include codes from system $Sagedus