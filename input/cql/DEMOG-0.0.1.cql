library DEMOG version '0.0.1'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

context Patient

define "Initial Population":
    Patient.gender = 'female'

define "Denominator":
	'Initial Population'
