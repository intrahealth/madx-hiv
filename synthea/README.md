# Simple HIV Synthea Module

This is a simple and experimental module for generating persons with HIV for the [synthea](https://github.com/synthetichealth/synthea) fake data generator. It is very naive and is not ready for merging into Synthea.

## How to use - Docker

> The docker images use a multipart build process so the final compressed images are under 20MB.

There is a build var `POP` as population created at buildtime not runtime; and a runtime var `FHIR` for which FHIR server.

Run the hosted build. On run it loads patients into the `host.docker.internal:8080/fhir` endpoint. This can be changed using an environment variable, `FHIR`.
```bash
docker run intrahealth/synthea-hiv:latest
# same as intrahealth/synthea-hiv:100
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

## How to Use - Developers

* Download the raw JSON file of the module or clone the repo and git pull for future updates.

* Clone synthea and change to the directory
```bash
git clone https://github.com/synthetichealth/synthea.git
cd synthea
./gradlew build check test
```

Copy the module `hiv_simple.json` from this repo to synthea's `src/main/resources/modules` e.g.
```
cp /Users/richard/downloads/hiv_simple.json src/main/resources/modules/
```

Generate patients:
```bash
./run_synthea -p 100 -m hiv_simple*
```

The patient records in FHIR are in `output/fhir`

One-liner to put bundles into HAPI:
```bash
for FILE in *; do curl -X POST -H "Content-Type: application/fhir+json;charset=utf-8" -d @$FILE http://localhost:8080/fhir ; done
```


## Narrative

HIV infection: SNOMEDCT/86406008
