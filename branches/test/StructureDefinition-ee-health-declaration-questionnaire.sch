<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Questionnaire
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Questionnaire</sch:title>
    <sch:rule context="f:Questionnaire">
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 0">identifier: maximum cardinality of 'identifier' is 0</sch:assert>
      <sch:assert test="count(f:versionAlgorithm[x]) &lt;= 0">versionAlgorithm[x]: maximum cardinality of 'versionAlgorithm[x]' is 0</sch:assert>
      <sch:assert test="count(f:derivedFrom) &lt;= 0">derivedFrom: maximum cardinality of 'derivedFrom' is 0</sch:assert>
      <sch:assert test="count(f:experimental) &lt;= 0">experimental: maximum cardinality of 'experimental' is 0</sch:assert>
      <sch:assert test="count(f:useContext) &lt;= 0">useContext: maximum cardinality of 'useContext' is 0</sch:assert>
      <sch:assert test="count(f:purpose) &lt;= 0">purpose: maximum cardinality of 'purpose' is 0</sch:assert>
      <sch:assert test="count(f:copyright) &lt;= 0">copyright: maximum cardinality of 'copyright' is 0</sch:assert>
      <sch:assert test="count(f:copyrightLabel) &lt;= 0">copyrightLabel: maximum cardinality of 'copyrightLabel' is 0</sch:assert>
      <sch:assert test="count(f:approvalDate) &gt;= 1">approvalDate: minimum cardinality of 'approvalDate' is 1</sch:assert>
      <sch:assert test="count(f:lastReviewDate) &lt;= 0">lastReviewDate: maximum cardinality of 'lastReviewDate' is 0</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:item) &gt;= 1">item: minimum cardinality of 'item' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Questionnaire/f:item</sch:title>
    <sch:rule context="f:Questionnaire/f:item">
      <sch:assert test="count(f:definition) &lt;= 0">definition: maximum cardinality of 'definition' is 0</sch:assert>
      <sch:assert test="count(f:required) &gt;= 1">required: minimum cardinality of 'required' is 1</sch:assert>
      <sch:assert test="count(f:initial) &lt;= 0">initial: maximum cardinality of 'initial' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
