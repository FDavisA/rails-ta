require 'json'

# Parse the JSON data
file = File.read(Rails.root.join('db', 'data.json'))
data_hash = JSON.parse(file)

data_hash.each do |person_data|
  # Create a new Person
  person = Person.create!(name: person_data['name'])

  # Create a Detail associated with the Person
  detail_data = person_data['info']
  person.details.create!(
    title: detail_data['title'],
    age: detail_data['age'],
    phone: detail_data['phone'],
    email: detail_data['email']
  )
end
