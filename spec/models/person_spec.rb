require 'rails_helper'

RSpec.describe Person, type: :model do
  it 'is valid with a name' do
    person = Person.new(name: 'John Doe')
    expect(person).to be_valid
  end

  it 'is invalid without a name' do
    person = Person.new(name: nil)
    expect(person).not_to be_valid
  end
end
