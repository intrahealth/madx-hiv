# mADX-HIV (madx-hiv)

> This repository captures FHIR Measure resources and CQL for a set of HIV indicators. This repo is temporary and may only exist for the life of the project or when the mADX for HIV IG is completed.

## Running HAPI with CQL processing

See: [CQL Development and Unit Testing with hapi-fhir and hapi-fhir-jpaserver-starter](https://docs.google.com/document/d/1nMChThWev-FRsjvsqDPEdS-0qrjqONoMj4livjD2dqQ)

## Synthea

The /synthea folder has a simple and experimental module for generating persons with HIV for the [synthea](https://github.com/synthetichealth/synthea) fake data generator. It is very naive and is not ready for merging into Synthea.

The following is the status of what codesystems/valuesets are generated:

### Added

HIV Test Results (from mADX and other sources)
* code "HIV Negative": code '165815009' from "SNOMED-CT"
* code "HIV Positive": code '165816005' from "SNOMED-CT"
* code "HIV 1 and 2 tests - Meaningful Use set": '75622-1' from "LOINC"

ConditionOnset: HIV infection (may be useful)
* SNOMED-CT 86406008

History of ART Therapy (Needs valueset and distribution of adherence)
* code "History of antiretroviral therapy (situation)": '432101000124108' from "SNOMED-CT"
(http://purl.bioontology.org/ontology/SNOMEDCT/432101000124108)

Viral load
* LOINC codes of 25836-8 (copies/mL)
* Suppressed viral load (<1000 copies/mL)
* Used range of 200 (very low) -> 1000000 (very high)


### Not added

Pregnancy, breastfeeding
* The pregnancy module could be adopted but named valuesets are apparently out of use:
https://phinvads.cdc.gov/vads/ViewCodeSystemConcept.action?oid=2.16.840.1.113883.6.96&code=146789000
* Apparently out of use:
    code "Pregnant": '146789000' from "SNOMED-CT"
    code "Breastfeeding": '169750002' from "SNOMED-CT"


## Tests

The DBCB team's server can be used at: https://cqm-sandbox.alphora.com/cqf-ruler-r4/fhir

## CQL hints

* Double quotes are for identifiers and single quotes represent string literals, for example, "female" should be 'female'.
* Check for odd copy/paste errors in quotes.
* Required libraries: `include FHIRHelpers version '4.0.1'` Use of FHIRHelpers is implicit in the translator, based on the modelinfo file with FHIR.
* The CQL/ELM processing code does not update the Library resource. If a Library has CQL content it is converted to ELM "on-the-fly" as it is used. This means the CQL must be included as Base64-encoded.

