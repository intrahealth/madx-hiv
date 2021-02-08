# mADX-HIV (madx-hiv)

> This repository captures FHIR Measure resources and CQL for a set of HIV indicators. This repo is temporary and may only exist for the life of the project or when the mADX for HIV IG is completed.

## Tests

The DBCB team's server can be used at: https://cqm-sandbox.alphora.com/cqf-ruler-r4/fhir

## CQL hints

* Double quotes are for identifiers and single quotes represent string literals, for example, "female" should be 'female'.
* Check for odd copy/paste errors in quotes.
* Required libraries: `include FHIRHelpers version '4.0.1'` Use of FHIRHelpers is implicit in the translator, based on the modelinfo file with FHIR.
* The CQL/ELM processing code does not update the Library resource. If a Library has CQL content it is converted to ELM "on-the-fly" as it is used. This means the CQL must be included as Base64-encoded.

## Running HAPI with CQL processing

See: [CQL Development and Unit Testing with hapi-fhir and hapi-fhir-jpaserver-starter](https://docs.google.com/document/d/1nMChThWev-FRsjvsqDPEdS-0qrjqONoMj4livjD2dqQ)
