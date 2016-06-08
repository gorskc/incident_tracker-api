Incident.destroy_all
INCIDENT_TYPE = ['Injury', 'Near miss', 'Property damage']
DEPARTMENTS = ["American Ethnic Studies", "American Indian Studies", "Anthropology", "Applied Mathematics",
    "Art, Art History & Design", "Asian Languages & Literature", "Astronomy", "Biology", "Chemistry", "Classics",
    "Communication", "Comparative History of Ideas", "Comparative Literature, Cinema & Media", "Dance", "Drama",
    "DXARTS", "Economics", "English", "French & Italian Studies", "Gender, Women & Sexuality Studies", "Geography",
    "Germanics", "History", "Jackson School of International Studies", "Law, Societies & Justice", "Linguistics",
    "Mathematics", "Music", "Near Eastern Languages & Civilization", "Philosophy", "Physics", "Political Science",
    "Psychology", "Scandinavian Studies", "Slavic Languages & Literatures", "Sociology", "Spanish & Portuguese Studies",
    "Speech & Hearing Sciences", "Statistics"]

random_property_damage = [true, false]
10.times do
    Incident.create(
        description: Faker::Lorem.sentence,
        date_of_incident: Faker::Date.between('2016-01-01',Date.today),
        date_reported: Faker::Date.between('2016-01-01',Date.today),
        location_of_incident: Faker::Address.building_number,
        type_of_incident: INCIDENT_TYPE.sample,
        property_damage: random_property_damage.sample,
        description_of_damage: Faker::Lorem.sentence,
        suggested_corrective_action: Faker::Lorem.sentence
        )
end

Injury.destroy_all
INJURY_TYPE = ['Abrasions', 'Lacerations', 'Foreign body in eye', 'Contusions',
    'Burns', 'Fractures', 'Amputation', 'Metal fume fever', 'Hearing loss', 'Sprain',
    'Strain', 'Heat stress or heat related illness', 'Frostbite or cold related injury',
    'Electric shock, electrocution', 'Exposure to biological hazards',
    'Allergy, sensitivity reaction']
BODY_PART = ["Toe(s)", "Ankle", "Foot", "Leg", "Hip", "Abdomen", "Chest", "Back", "Neck",
            "Face", "Eye", "Ear", "Mouth", "Nose", "Shoulder", "Arm", "Wrist", "Hand", "Finger"]

10.times do
    Injury.create(
        incident_id: incident.injury.ids,
        affected_body_part: BODY_PART.sample,
        type_of_injury: INJURY_TYPE.sample,
        treatment: Faker::Lorem.words
        )
end

Employee.destroy_all
10.times do
    Employee.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        department: DEPARTMENTS.sample,
        job_title: Faker::Name.title,
        date_of_hire: Faker::Date.backward(522),
        supervisor_last_name: Faker::Name.last_name,
        supervisor_first_name: Faker::Name.first_name
        )
end
