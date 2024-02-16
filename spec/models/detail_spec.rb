require 'rails_helper'

RSpec.describe Detail, type: :model do
  it 'is valid with an email and associated person' do
    person = Person.create!(name: 'John Doe')
    detail = Detail.new(email: 'john.doe@example.com', person: person)
    expect(detail).to be_valid
  end

  it 'is invalid without an email' do
    person = Person.create!(name: 'John Doe')
    detail = Detail.new(email: nil, person: person)
    expect(detail).not_to be_valid
  end

  it 'is invalid without a person' do
    detail = Detail.new(email: 'john.doe@example.com')
    expect(detail).not_to be_valid
  end
end
