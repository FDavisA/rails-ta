require 'rails_helper'

RSpec.describe "Details", type: :request do
  describe "GET /people/:person_id/detail" do
    let!(:person) { Person.create(name: "John Doe") }
    let!(:detail) { person.create_detail(email: "john@example.com", title: "Mr.", age: 30, phone: "123456789") }

    it "returns the detail of the person" do
      get person_detail_path(person_id: person.id)
      expect(response).to have_http_status(200)
      json_response = JSON.parse(response.body)
      expect(json_response["email"]).to eq("john@example.com")
    end
  end
end
