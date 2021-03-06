# Simple HIV Synthea module

This is a simple and experimental module for generating persons with HIV for the [synthea](https://github.com/synthetichealth/synthea) fake data generator. It is very naive and is not ready for merging into Synthea.

## How to use - Docker

> The docker images use a multipart build process so the final compressed images are under 20MB.

There is a build var `POP` as population created at buildtime not runtime; and a runtime var `FHIR` for which FHIR server.

Run the hosted build. On run it loads patients into the `host.docker.internal:8080/fhir` endpoint. This can be changed using an environment variable, `FHIR`.
```bash
docker run intrahealth/synthea-hiv:latest
# same as intrahealth/synthea-hiv:pop100
```

There is also an image with 1000 patients, use:
```
docker run intrahealth/synthea-hiv:pop1000
```

Or, build with the number of patients preferred and use your own tag. 100 is the default.
```bash
docker build -t stuff --build-arg POP=200 .
docker run stuff
```

## Sanity checks on FHIR Resources

> Install the awesome [jq](https://stedolan.github.io/jq/download/) for fast and more intuitive parsing.

Summary stats:

```bash
curl -s http://localhost:8080/fhir/Patient?_summary=count | jq '{Patient: .total}'
curl -s http://localhost:8080/fhir/Condition?_summary=count | jq '{Condition: .total}'
curl -s http://localhost:8080/fhir/Encounter?_summary=count | jq '{Encounter: .total}'
curl -s http://localhost:8080/fhir/DiagnosticReport?_summary=count | jq '{DiagnosticReport: .total}'
curl -s http://localhost:8080/fhir/Observation?_summary=count | jq '{Observation: .total}'
```

Patient
```bash
# Key info from Patient
# curl -s http://localhost:8080/fhir/Patient | jq '.entry[].resource.id, .entry[].resource | {gender: .gender, birthDate: .birthDate, deceasedDateTime: .deceasedDateTime}'
curl -s http://localhost:8080/fhir/Patient?_count=10000 | jq '.entry[] | {id: .resource.id, gender: .resource.gender, birthDate: .resource.birthDate, deceasedDateTime: .resource.deceasedDateTime}'
```

Condition with HIV
```bash
# curl http://localhost:8080/fhir/Condition?_count=10000&_content=HIV
# see all conditions
curl -s http://localhost:8080/fhir/Condition?_count=10000 | jq '.entry[] | .resource.code[], .resource.subject.reference, .resource.encounter.reference'
```

DiagnosticReport for HIV tests and death certs
```bash
curl -s http://localhost:8080/fhir/DiagnosticReport?_count=10000 | jq '.entry[] | .resource.code, .resource.subject.reference, .resource.encounter.reference, .resource.result[]'
```

Observation
```bash
curl -s http://localhost:8080/fhir/Observation?_count=10000&_content=HIV | jq '.entry[] | .resource.code.coding[], .resource.subject.reference, .resource.encounter.reference, .resource.valueCodeableConcept[]'
```

## Create patients directly from JAR for supporting IG test cases

* Clone this repo
* Change into this directory
* Download the latest release of Synthea, which at this moment is:
```
wget https://github.com/synthetichealth/synthea/releases/download/v2.7.0/synthea-with-dependencies.jar
```

Generate patients in the current directory.
* `--exporter.use_uuid_filenames true` uses only the UUID as filenames.
* `--exporter.years_of_history 0` generates all patient history.
* `-d modules/` adds the local module path `modules`.
* `-m hiv*` says to only create patients in `hiv*` module.
* `-s 123` uses a seed to create the same dataset every time.
```bash
java -jar synthea-with-dependencies.jar -p 100 -d modules/ -m hiv* -s 123 --exporter.years_of_history 0 --exporter.years_of_history 0 --exporter.use_uuid_filenames true
```
The patient records in FHIR are in `output/fhir`
```
cd output/fhir
```

Now a one-liner to put bundles into HAPI:
```bash
for FILE in *; do curl -X POST -H "Content-Type: application/fhir+json;charset=utf-8" -d @$FILE http://localhost:8080/fhir ; done
```
Or... to rename the files for use in testing IGs, each patient bundle must have its own folder.
```bash
for x in ./*.json; do mkdir "${x%.*}" && mv "$x" "${x%.*}" && mv ; done
```
Then remove for now the practitioner and hospital bundles as they can't be processed in IG publisher
```
rm -r output/fhir/hospital*
rm -r output/fhir/practitioner*
```

Now you are ready to copy the folders into the IG for testing.

